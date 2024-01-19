# Large Language Models @ MagaMago

This repository holds scripts for quick testing of large language models such as LLaMA on the Department for Interpreting and Translation's MagaMago server.

## Accessing Magamago

To access the server, follow the steps below:

1. Ask one of the admins to create an account for you with which to have access to the server.
2. On Windows, press start and type 'cmd' and press Enter. This will open the command prompt from which you can issue the command you need to connect (replace 'username' with the username assigned to you for login):

```console
ssh username@magamago.sslmit.unibo.it
```
You will then be prompted to insert the password. Insert it and you will be connected.

## Using the models

The models are currently located in the following directory:

```
/storage/llm
```

For example, the LLaMA 2 models are in:

```
/storage/llm/llama2/
   .
   |---Llama-2-7b-chat-hf
   |---Llama-2-7b-hf
```

To test the LLaMA 2 7B Chat model you can use the script below or run the command directly from the command line, after accessing MagaMago through SSH.

```console
#!/bin/bash

/storage/llm/llama.cpp/main -m /storage/llm/llama2/Llama-2-7b-chat-hf/ggml-model-f16.gguf -c 512 -b 1024 -n -1 --keep 48 \
    -ngl 10 \
    --repeat_penalty 1.0 --color -i \
    --log-disable \
    -r "User:" -f /storage/llm/llama.cpp/prompts/dan.txt
```

Important flags, i.e. options starting with a dash after the main script:

```
-n: number of tokens to output, -1 = infinite tokens or until the model stops by itself
-ngl: number of GPU layers to exploit for acceleration
-f: path to the text file containing the prompt the model sees when the script is run
```

You can take a look at the different available prompts at:

```
/storage/llm/llama.cpp/prompts
```
