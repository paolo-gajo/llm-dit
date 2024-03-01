# Large Language Models @ DIT GPU servers

This repository holds large language model resources for the GPU servers of the Department for Interpreting and Translation, University of Bologna.

## Accessing the servers

To access the server, follow the steps below:

1. Ask one of the admins to create an account for you with which to have access to the server.
2. On Windows, press start and type 'cmd' and press Enter. This will open the command prompt from which you can issue the command you need to connect (replace 'username' with the username assigned to you for login):

```console
ssh username@magamago.sslmit.unibo.it
```
or
```console
ssh username@john.sslmit.unibo.it
```

N.B.: John is firewall blocked, so you will need to SSH through MagaMago by putting this into your config file in ~/.ssh
```console
Host john.sslmit.unibo.it
  ProxyJump magamago.sslmit.unibo.it
```
You will then be prompted to insert the password. Insert it and you will be connected.

## Using the models

The models are currently located in the following directories:

```
MagaMago --> /storage/llm
John --> /models
```
