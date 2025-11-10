#!/bin/bash

if [ -n "$SSH_CONNECTION" ]; then
    echo "✅ SSH session detected."
    echo "Logged in from: $(echo $SSH_CONNECTION | awk '{print $1}')"
    echo "User: $(whoami) on Host: $(hostname)"
else
    echo "❌ Not an SSH session."
fi
