# RetroArch AI Service

## What is the AI Service

This feature allows users to play games written in a foreign language, or add text voice-overs automatically.  This uses OCR (optical character recognition), machine translation, and text-to-speech.  While these technologies can't provide the same level of accuracy as curated content, it can go quite far.  Machine translation can give a good gist of what's being said, especially for some language pairs, and text-to-speech can be of great benefit for accessibility.


## How it works

When a user presses the AI Service hotkey, RetroArch will grab the screen of the game being played and send it to the service endpoint listed in the configuration.  When the service returns, RetroArch will then either write the translated image to the screen or say the text, depending on the configuration.


The main supported service to use is the vgtranslate project: ( https://gitlab.com/spherebeaker/vgtranslate ).  This project is a python server you can run locally (or on your network) and uses Google Cloud OCR, and Google Text-to-Speech APIs with the Google Cloud keys you provide.

Other supported services are in the Alternative Services section. 


## How to set it up

First, go to Settings->Input->Hotkey Binds, and assign a key for the AI Service.

Next, go to Settings->AI Service and modify the configuration options as follows.

If `AI Service Output` is `Image Mode`, then when you press the AI Service hotkey, RetroArch will grab the game screen and display translated textbox over the screen when it's available, and pressing the hotkey again will clear the translated textbox.  If `AI Service Pause Toggle` is `ON` then it will pause while doing so, and pressing the AI Service hotkey again will unpause the game and continue as normal.  This mode is recommended when you want the text on the screen to be translated and written back on the screen where it was found.  When `AI Service Output` is `Speech Mode`, then RetroArch speak the text on the screen instead, and will use an AI text-to-speech algorithm.  This speech however will only play while the core is unpaused (for technical reasons).  However, if in `Narrator Mode` the AI Service will use the OS's narrator, which will speak the text even while unpaused (assuming that accessibility is enabled).  However, `Narrator Mode` is only supported on Windows, Linux, and Macos.

The `AI Service URL` points to where the translation service you're using is located.  In the case of running vgtranslate yourself, this URL would be `http://localhost:4404`.  For more instructions on how to set up vgtranslate on your system, see ( https://gitlab.com/spherebeaker/vgtranslate/blob/master/README.md ).  If you have issues running vgtranslate, or don't want to run the service yourself, see the "Alternative Services" section.

`AI Service Enabled` should be set to on.

If `Source Language` is set to `Don't care`, then the service will attempt to auto-detect the language on the screen.  Setting it to a specific language will increase accuracy, and restrict translation to only text in the source language specified.

Finally, `Target Language` is the language to translate into.  If set to `Don't care` then it will translate into English.  See the vgtranslate docs for more information.


## Supported Cores

Since RetroArch v1.8.0, all cores should now be supported if your build has menu widgets.  If not, then only software cores will be supported.


## Alternative Services

If you have issues setting up the vgtranslate service, or don't want to run a local service yourself, you can use a service someone else has set up.  One example is the ZTranslate service ( https://ztranslate.net/docs/service ).  In this case, you can use the following url for `AI Service URL`:

```
http://ztranslate.net/service?api_key=<YOUR_ZTRANSLATE_API_KEY>
```

This requires registering an account with ztranslate.net to get an API key.  Due to uploading of the screen cap to the server, latency will likely be a bit higher than using a vgtranslate service running locally.  See the ztranslate docs for more information.


## Alternative Translators

There are some other options for translating game screens that don't require a special build of RetroArch and should work with hardware buffer cores.  Here are some:

### ZTranslate
ZTranslate ( https://ztranslate.net ) uses a standalone client app for Windows or Linux that grabs the screen of the window currently in focus and displays a translated version in the ZTranslate client window.  Besides automatic translation (which needs a ztranslate.net api key), it also supports package-based translations, which is like a translation patch for a rom, but for game screens instead.  For more information see https://ztranslate.net/docs   

### RetroArch-AI-with-IoTEdge
RetroArch-AI-with-IoTEdge ( https://github.com/toolboc/RetroArch-AI-with-IoTEdge ) uses IoTEdge and Azure Cognitive Services Containers (requires microsoft Azure account) to translate RetroArch screenshots and display them on a Lakka device.  For more information see https://github.com/toolboc/RetroArch-AI-with-IoTEdge/blob/master/README.md

