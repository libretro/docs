# RetroArch AI Service

## What is the AI Service

This feature allows users to play games written in a foreign language, or automated voice-overs capability.  This uses OCR (optical character recognition), machine translation, and text-to-speech.  While these technologies can't provide the same level of accuracy as curated content, it can go quite far.  Machine translation can give a good gist of what's being said, especially for some language pairs, and text-to-speech can be of great benefit for accessibility.


## How it works

When a user presses the AI Service key bind, RetroArch will grab the screen of the game being played and send it to the service endpoint listed in the configuration.  When the service returns, RetroArch will then either write the translated image to the screen or play the text-to-speech, depending on the configuration.


The main supported service is the vgtranslate project: ( https://gitlab.com/spherebeaker/vgtranslate ).  This project is a python server you can run locally (or on your network) and uses Google Cloud OCR, and Google Text-to-Speech APIs with the Google Cloud keys you provide.

Other supported services are in the Alternative Services section. 


## How to set it up

Go into your retroarch configuration and modify the following lines:
```
ai_service_enable = "true"
ai_service_mode = "0"
ai_service_url = "http://localhost:4404/?output=image&target_lang="
```

If `ai_service_mode` is `"0"`, then retroarch will pause the game while the screen grab is being processed and then unpause when it's pressed again.  This mode is recommended when you want to translate the text on the screen and write it to the screen.  If `ai_service_mode` is `"1"`, then retroarch will not pause while the screen is being processed.  This is recommended when doing text-to-speech, since the audio will not play while the game is paused.

In the url, `output` can be `image` to write to the screen `sound` to play the text, or `image,sound` to do both.  `target_lang` can be any supported language code as used by google (eg: `es`, `fr`, `de`, etc.).  The default value for the target language is english (`en`), while an empty value will not do any translation on the text.

After modifying the RetroArch configuration, go to Settings->Input->Hotkey Binds, and assign a key for the AI Service.

Finally, follow the instructions in https://gitlab.com/spherebeaker/vgtranslate/blob/master/README.md to start running a vgtranslate service on your machine.


## Supported Cores

At the moment, any core that uses the RGB565 or RGB8888 pixel formats is supported, but cores that use a hardware buffer will not work.  If you're not sure what mode your selected core is using, then running RetroArch with logging will tell you in the log what the format is when the AI Service tries to process the screen.  For possibilities of what to do in the hardware buffer case, see Alternative Translators.


## Alternative Services

If you have issues setting up the vgtranslate service, or don't want to run a local service yourself, you can use a service someone else has set up.  One example is the ZTranslate service ( https://ztranslate.net/docs/service ).  In this case, you can put the following url in your retroarch config:

```
ai_service_url = "http://ztranslate.net/service?output=image&target_lang=En&source_lang=Ja&mode=Fast&api_key=<YOUR_ZTRANSLATE_API_KEY>"
```

This requires registering an account with ztranslate.net to get an API key.  See the ztranslate docs for more information.


## Alternative Translators

There are some other options for translating game screens that don't require a special build of RetroArch and should work with hardware buffer cores.  Here are some:

### ZTranslate
ZTranslate ( https://ztranslate.net ) uses a standalone client app for Windows or Linux that grabs the screen of the window currently in focus and displays a translated version in the ZTranslate client window.  Besides automatic translation (which needs a ztranslate.net api key), it also supports package-based translations, which is like a translation patch for a rom, but for game screens instead.  For more information see https://ztranslate.net/docs   

### RetroArch-AI-with-IoTEdge
RetroArch-AI-with-IoTEdge ( https://github.com/toolboc/RetroArch-AI-with-IoTEdge ) uses IoTEdge and Azure Cognitive Services Containers (requires microsoft Azure account) to translate RetroArch screenshots and display them on a Lakka device.  For more information see https://github.com/toolboc/RetroArch-AI-with-IoTEdge/blob/master/README.md

