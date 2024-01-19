#!/bin/bash

#
# Temporary script - will be removed in the future
#


# Important:
#
#   "--keep 48" is based on the contents of prompts/chat-with-bob.txt
#
./bin/main -m /storage/llm/llama2/Llama-2-7b-hf/ggml-model-f16.gguf -c 512 -b 1024 -n -1 --keep 48 \
    -ngl 10 \
    --repeat_penalty 1.0 --color -i \
    --log-disable \
    -r "User:" -f /home/pgajo/working/llama.cpp/prompts/llama2chat_w_model_response_english_teacher.txt

