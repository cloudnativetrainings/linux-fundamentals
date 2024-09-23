#!/bin/bash

# vm-1 is configured to forward port 2222
ssh -p 2222 -o StrictHostKeyChecking=no ubuntu@localhost
