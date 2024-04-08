#!/bin/bash

ssh-keygen
ssh-copy-id -p 8022 $(cat control-conn)