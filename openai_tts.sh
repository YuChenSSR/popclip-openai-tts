#!/bin/zsh
# #popclip
# name: openai TTS
# icon: symbol:message
# options:
# - { identifier: url, label: BASE_URL, type: string, default value: https://api.oaifree.com/v1/audio/speech, description: "OpenAI API URL for Speech Service" }
# - { identifier: api_key, label: OpenAI API Key, type: string, description: "The API key for OpenAI" }
# - { identifier: speed, label: Playback Speed, type: string, default value: "1.0", description: "The playback speed for the audio (e.g., 0.75 for 75% speed)" }
# - { identifier: voice, label: Voice, type: string, default value: "shimmer", description: "The voice for the TTS service" }

# Create a temporary variable for input
input_content="$POPCLIP_TEXT"

# Use curl to download and save the audio data to the temporary file
curl "${POPCLIP_OPTION_URL}" \
  -H "Authorization: Bearer ${POPCLIP_OPTION_API_KEY}" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "tts-1",
    "input": " _'"${input_content//\"/\\\"}"'",
    "voice": "'"${POPCLIP_OPTION_VOICE}"'"
  }' \
  --output speech.mp3

# Play the temporary audio file using afplay at the specified speed
afplay -r ${POPCLIP_OPTION_SPEED} speech.mp3

# Clean up the temporary audio file when you're done with it
rm speech.mp3
