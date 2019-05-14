# RetroArch Auto Translation

## What is Auto Translation

This feature allows users to play games written in a foreign language using OCR (optical character recognition) and machine translation.  While machine translation can not provide the same quality of translation as a human translator, it can give a good gist of what's being said, especially for some language pairs.


## How it works

When a user pauses the screen, RetroArch will grab the screen of the game being played and send it to the service listed in the configuration.  When the service returns, RetroArch will then write the translated image to the screen.  When the user unpauses, the game will continue again as normal.

One supported translation service is the vgtranslate project: ( https://gitlab.com/spherebeaker/vgtranslate ).  This project is a python server you can run locally (or on your network) and uses Google Cloud OCR and Google translate APIs with the Google Cloud keys you provide.

Other supported services are in the Alternative Services section. 


## How to set it up

Make a build of RetroArch with the `HAVE_TRANSLATE=1` build option.  For example:

```
make -j4 HAVE_TRANSLATE=1
```

Once built, modify the following retroarch config lines:

```
translation_service_enable = "true"
translation_service_url = "http://localhost:4404/"
```

Then, follow the instructions in https://gitlab.com/spherebeaker/vgtranslate/blob/master/README.md to start running a vgtranslate service on your machine.


## Supported Cores

At the moment, any core that uses the RGB565 or RGB8888 pixel formats is supported, but cores that use a hardware buffer will not work.  If you're not sure what mode your selected core is using, then running RetroArch with logging will tell you in the log what the format is when it tries to translate the screen.  For possibilities of what to do in the hardware buffer case, see Alternative Translators.


## Alternative Services

If you have issues setting up the vgtranslate service, or don't want to run a local service yourself, you can use a service someone else has set up.  One example is the ZTranslate service ( https://ztranslate.net/docs/service ).  In this case, you can put the following in your retroarch config:

```
translation_service_url = "http://ztranslate.net/service?target_lang=En&source_lang=Ja&mode=Fast&api_key=<YOUR_ZTRANSLATE_API_KEY>"
```

This requires registering an account with ztranslate.net to get an API key.  See the ztranslate docs for more information.


## Alternative Translators

There are some other options for translating game screens that don't require a special build of RetroArch and should work with hardware buffer cores.  Here are some:

### ZTranslate
ZTranslate ( https://ztranslate.net ) uses a standalone client app for Windows or Linux that grabs the screen of the window currently in focus and displays a translated version in the ZTranslate client window.  Besides automatic translation (which needs a ztranslate.net api key), it also supports package-based translations, which is like a translation patch for a rom, but for game screens instead.  For more information see https://ztranslate.net/docs   

### RetroArch-AI-with-IoTEdge
RetroArch-AI-with-IoTEdge ( https://github.com/toolboc/RetroArch-AI-with-IoTEdge ) uses IoTEdge and Azure Cognitive Services Containers (requires microsoft Azure account) to translate RetroArch screenshots and display them on a Lakka device.  For more information see https://github.com/toolboc/RetroArch-AI-with-IoTEdge/blob/master/README.md



