#!/bin/zsh
# #popclip
# name: openai TTS
# icon: symbol:message.and.waveform
# options:
# - { identifier: url, label: BASE_URL, type: string, default value: https://api.oaifree.com/v1/audio/speech, description: "openai API URL for Speech Service" }
# - { identifier: api_key, label: OpenAI API Key, type: string, description: "The API key for OpenAI" }

# Create a temporary variable for input
input_content="$POPCLIP_TEXT"

# Use curl to download and save the audio data to the temporary file
curl "${POPCLIP_OPTION_URL}" \
  -H "Authorization: Bearer ${POPCLIP_OPTION_API_KEY}" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "tts-1",
    "input": " _'"${input_content//\"/\\\"}"'",
    "voice": "shimmer"
  }' \
  --output speech.mp3

# Play the temporary audio file using afplay
afplay speech.mp3

# Clean up the temporary audio file when you're done with it
rm speech.mp3
