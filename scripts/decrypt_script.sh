#!/bin/bash

# Set your input and output file paths
INPUT_FILE="encrypted_build/${PLATFORM}.enc"  # Assuming your encrypted file is in the 'encrypted_build' directory
OUTPUT_FILE="build/${PLATFORM}"  # Assuming you want to save the decrypted file in the 'build' directory

# Decrypt the file using GPG
gpg --quiet --batch --yes --decrypt --passphrase="$ARTIFACTS_PASSPHRASE" --output "$OUTPUT_FILE" "$INPUT_FILE"

echo "File decrypted successfully."
