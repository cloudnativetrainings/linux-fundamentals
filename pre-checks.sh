#!/bin/bash

# Function to display colored output
print_status() {
    if [ "$2" == "OK" ]; then
        printf "%-30s \e[32m%s\e[0m\n" "$1" "$2"  # Green for OK
    else
        printf "%-30s \e[31m%s\e[0m\n" "$1" "$2"  # Red for NOK
    fi
}

# Check the status of each container
echo "Virtual Machines"
echo "=========="

ssh -q -o "StrictHostKeyChecking=no" -o "BatchMode=yes" -p 2222 ubuntu@localhost "echo 2>&1" && print_status "vm-1" "OK" || print_status "vm-1" "NOK"
ssh -q -o "StrictHostKeyChecking=no" -o "BatchMode=yes" -p 2223 ubuntu@localhost "echo 2>&1" && print_status "vm-2" "OK" || print_status "vm-2" "NOK"

echo ""

