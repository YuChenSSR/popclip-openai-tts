# PopClip OpenAI Text To Speech
A PopClip extension to speak selected text using the OpenAI Text-to-Speech (TTS) service.

## Installation
1. Go to [openai_tts.sh](./openai_tts.sh)
2. Select all the code, if you select with <kbd>Command</kbd> + <kbd>A</kbd>, you need to use the customized keyboard shortcut you've set to call PopClip.
3. Click `Install Extension "OpenAI TTS"`
4. Input the options, then click OK.

### Fill in the options
1. To get the **OpenAI API Key**, you need to create an OpenAI account. https://www.openai.com/signup
2. After creating an account, you can find your API key in the OpenAI dashboard under the API section.
3. Use the default value for the **BASE_URL** or replace it with a different OpenAI TTS API URL if necessary.

## Features
After installing, select the text below and click the speak with wave icon.
```
The quick brown fox jumped over the lazy dog.
```

You can compare with the `say` command, by running it in Terminal.
```bash
say "The quick brown fox jumped over the lazy dog."
```

You can click the loading icon to stop while speaking.

## LICENSE
AGPL-3.0
