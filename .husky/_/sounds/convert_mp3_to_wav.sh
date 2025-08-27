#!/bin/bash

for mp3file in ./*.mp3; do
  # Skip if no mp3 files found
  [ -e "$mp3file" ] || continue
  wavfile="${mp3file%.mp3}.wav"
  ffmpeg -i "$mp3file" "$wavfile"
done