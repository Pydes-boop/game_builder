#!/bin/bash

# Decrypt the file using GPG
gpg --quiet --batch --yes --decrypt --passphrase="$PASSPHRASE" --output "$OUTPUT_FILE" "$INPUT_FILE"

# Remove the temporary encrypted filed
rm "$INPUT_FILE"

echo "File decrypted successfully."