## What is the AI Service

This feature allows users to capture the current state of the game and feed it to a customizable endpoint for additional processing. With the help of OCR (optical character recognition) and other techniques, the AI service can provide a live translation of a game, or text-to-speech capabilities for the visually impaired among other things, either on demand or automatically.

## How it works

When a user presses the AI Service hotkey, RetroArch will grab the screen of the game being played and send it to the service endpoint listed in the configuration. When the service returns, RetroArch will display the results according to the configuration. Pressing the AI Service hotkey again will clear any content currently displayed.

## How to set it up

First, go to Settings->Input->Hotkey Binds, and assign a key for the AI Service.

Next, go to Settings->AI Service and modify the configuration options as follows.

`AI Service Enabled` should be set to `ON`.

The `AI Service URL` is the URL of the AI service that you want to use. For example, `http://localhost:4404` for a service running locally on your computer and listening on port 4404. Check the documentation of the 3rd party AI service you're using to find out what this URL should be. (see "Known Services" below for some examples).

`AI Service Output` controls how the processed content is displayed on your end. Naturally, your selection should match whatever capabilities the AI service you have configured offers. Note that `Image Mode` requires widgets to be enabled (Settings->On-Screen Display->On-Screen Notifications->Graphics Widgets).

- In `Image Mode` the AI service is expected to return an image that will be overlaid on top of the game feed. This mode can be used to draw information on the screen, like writing a translation over the original text box. 
- In `Narrator Mode` the AI service is expected to return text that will be spoken on the user's machine using native text-to-speech capabilities, like the Windows narrator.
- In `Speech Mode` the AI service is expected to return an audio file. This mode can be used as an alternative to the `Narrator Mode` if the user's machine is unable to use native text-to-speech, relying on the service to provide the actual audio.
- In `Text Mode` the AI service is expected to return a text that will be displayed on top of the screen, like subtitles.
- A combined mode like `Text + Narrator` works as you would expect, providing both the result as text on screen and text-to-speech.

`Pause During Translation` will pause the core as soon as the user presses the AI Service hotkey and display whatever content is returned from the service. Pressing the AI Service hotkey a second time will clear the display and resume the core.

`AI Service Text Position Override` can be used to control the placement of the subtitles on screen when `AI Service Output` is set to `Text Mode`. By default, services are able to control whether a specific subtitle should be displayed at the top or at the bottom of the screen depending on the situation. This setting however ignores the service hint and forces the placement to be one or the other, at the user's discretion. `AI Service Text Padding` allows a more precise control of the placement of the subtitle adding blank space at the bottom of the screen (for bottom-placed subtitles) or at the top of the screen (for top-placed subtitles).

When the service is used to provide translation or text-to-speech using OCR, and `Source Language` is set to `Don't care`, the service will attempt to auto-detect the language on screen. Setting it to a specific language will increase accuracy, and restrict translation to only text in the source language specified. If `Target Language` is set to `Don't care` then the translation will be provided in English, or in the selected language otherwise.

## Automatic mode

A special case must be made when the AI service needs to run automatically. By default, the AI service runs in a manual mode. The user presses the AI Service hotkey to process one screen immediately, receives the result, eventually presses the hotkey again to dismiss it and moves on before requesting the AI service once more. Some services however are able to run automatically. This can only be enabled by services themselves and is mostly designed for local services due to the high number of requests per second.

If your service supports automatic mode, press the AI service hotkey once to enable processing. Now, the service will be polled at regular intervals and results will be automatically displayed as you keep playing. Pressing the AI service hotkey a second time (or invoking RetroArch's menu) will turn the AI service off.

The `AI Service Auto-Polling Delay` option in the AI Service settings control how fast the automatic requests are sent to the service. If you are experiencing slowdowns during play, try increasing the delay. It will lower the reactivity of the AI service, but will lessen the load on your CPU.

## Known Services

[VGTranslate](https://gitlab.com/spherebeaker/vgtranslate) is a python server you can run locally (or on your network) and uses Google Cloud OCR, and Google Text-to-Speech APIs with the Google Cloud keys you provide.

[ZTranslate](https://ztranslate.net) uses a standalone client app for Windows or Linux that grabs the screen of the window currently in focus and displays a translated version in the ZTranslate client window. Also supports package-based translations for curated translations.

[RetroArch-AI-with-IoTEdge](https://github.com/toolboc/RetroArch-AI-with-IoTEdge) uses IoTEdge and Azure Cognitive Services Containers (requires microsoft Azure account) to translate RetroArch screenshots and display them on a Lakka device. 

## Supported Cores

Since RetroArch v1.8.0, all cores should now be supported if your build has menu widgets. If not, then only software cores will be supported.

## For developers

If you wish to implement your own AI service, here is what you need. RetroArch sends a POST request every time the user invokes the AI service, the URL params are as provided.

- `source_lang` (optional): language code of the content currently running.
- `target_lang` (optional): language of the content to return.
- `output`: comma-separated list of formats that must be provided by the service. Also lists sub-formats supported by the current RetroArchBuild.
   
The currently supported formats are:
- `sound`: raw audio to play back. (`wav`)
- `text`: text to be read through internal text-to-speech capabilities. `subs` can be specified on top of that to explain that we are looking for short text response in the manner of subtitles.
- `image`: image to display on top of the video feed. (`bmp`, `png`, `png-a`) All in 24-bits BGR formats.
         
In addition, the request contains a JSON payload, formatted as such:
- `image`: captured frame from the currently running content (in base64).
- `format`: format of the captured frame (`png`, or `bmp`).
- `coords`: array describing the coordinates of the image within the viewport space (x, y, width, height).
- `viewport`: array describing the size of the viewport (width, height).
- `label`: a text string describing the content (`<system id>__<content id>`).
- `state`: a JSON object describing the state of the frontend, containing:
    - `paused`: 1 if the content has been paused, 0 otherwise.
    - `<key>`: the name of a retropad input, valued 1 if pressed. Values can be: a, b, x, y, l, r, l2, r2, l3, r3, up, down, left, right, start, select.
            
The translation component then expects a response from the AI service in the form of a JSON payload, formatted as such:
- `image`: base64 representation of an image in a supported format.
- `sound`: base64 representation of a sound byte in a supported format.
- `text`: results from the service as a string.
- `text_position`: hint for the position of the text when the service is running in text mode (ie subtitles). Position is a number, 1 for Bottom or 2 for Top (defaults to bottom).
- `press`: a list of retropad input to forcibly press. On top of the expected keys (cf. state, above) values `pause` and `unpause` can be specified to control the flow of the content.
- `error`: any error encountered with the request.
- `auto`: either `auto` or `continue` to control automatic requests.
      
All fields are optional, but at least one of them must be present. If `error` is set, the error is shown to the user and everything else is ignored, even `auto` settings.
   
With `auto` on `auto`, RetroArch will automatically send a new request (with a minimum delay enforced by ai_service_poll_delay); with a value of `continue`, RetroArch will ignore the returned content and skip to the next automatic request. This allows the service to specify that the returned content is the same as the one previously sent, so RetroArch does not need to update its display unless necessary. With `continue` the service *must* still send the content, as we may need to display it if the user paused the AI service for instance.
