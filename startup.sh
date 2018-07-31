#!/bin/bash

timestamp() {
        date +"[%Y-%m-%d %T] "
}

FOLDER="/home/pi/Google-Assistant"
# Your device ID from Google Console
DEVICE_ID="device_id_123"

# Single line command
# googlesamples-assistant-hotword --project_id device_id_123 --device_model_id device_id_123

echo `timestamp` "Running Google Home Assistant..."
sleep 2
# Play sound on Google Assistant startup!
aplay --format=S16_LE -q --rate=16k "$FOLDER/run.wav"

echo `timestamp` "Starting Google Assistant Hotword"
. $FOLDER/env/bin/activate
googlesamples-assistant-hotword --project_id $DEVICE_ID --device_model_id $DEVICE_ID
