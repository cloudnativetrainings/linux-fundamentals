#!/bin/bash

# vm-2 is configured to forward port 2223
ssh -p 2223 -o StrictHostKeyChecking=no ubuntu@localhost
