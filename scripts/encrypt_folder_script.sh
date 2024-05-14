#!/bin/bash

# Set your input and output file paths <- we just set those directly
# INPUT_FILE="build/${PLATFORM}"  # Assuming your built game is in the 'build' directory
# OUTPUT_FILE="encrypted_build/${PLATFORM}.enc"  # Assuming you want to save the encrypted file in the 'encrypted_build' directory
if [ -d "$FOLDER" ]; then
    # Compress the folder into a zip file
    zip -r "$FOLDER.zip" "$FOLDER"
else
    echo "Error: Folder $FOLDER does not exist."
fi

# Encrypt the zip file symmetrically using GPG
gpg --quiet --batch --yes --symmetric --cipher-algo AES256 --passphrase="$PASSPHRASE" --output "$FOLDER.zip.enc" "$FOLDER.zip"

# Remove the temporary zip file
rm "$FOLDER.zip"

echo "File encrypted successfully."
