#!/bin/bash

# Encrypt the zip file symmetrically using GPG
gpg --quiet --batch --yes --symmetric --cipher-algo AES256 --passphrase=$PASSPHRASE --output $FILE.enc $FILE

# Remove the temporary zip file
rm $FILE

echo "File encrypted successfully."