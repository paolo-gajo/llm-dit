#!/bin/bash

#
# Temporary script - will be removed in the future
#


# Important:
#
#   "--keep 48" is based on the contents of prompts/chat-with-bob.txt
#
./main -m ./models/7B/ggml-model-f16.gguf -c 512 -b 1024 -n 256 --keep 48 \
    --repeat_penalty 1.0 --color -i \
    --log-disable \
    -r "User:" -f prompts/chat-with-bob.txt
