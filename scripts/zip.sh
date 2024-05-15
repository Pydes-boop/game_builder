if [ -d "$FOLDER" ]; then
    # Compress the folder into a zip file
    zip -r "$FOLDER.zip" "$FOLDER"
else
    echo "Error: Folder $FOLDER does not exist."
fi