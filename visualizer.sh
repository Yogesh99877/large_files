echo "Do you want to delete large files older than 30 days from $SCAN_DIR? (y/n)"
read answer

TO_DELETE_FILE="to_delete.txt"

if [[ "$answer" == "y" ]]; then
    echo "Finding large files (>100MB, >30 days)..."
    
    # Save list of files to TO_DELETE_FILE
    find "$SCAN_DIR" -type f -size +100M -mtime +30 -exec ls -lh {} \; > "$TO_DELETE_FILE"
    
    echo "Files identified for deletion are saved in: $TO_DELETE_FILE"
    cat "$TO_DELETE_FILE"
    
    echo "Proceed with deletion? (y/n)"
    read confirm
    
    if [[ "$confirm" == "y" ]]; then
        # Delete the files (from list)
        awk '{print $9}' "$TO_DELETE_FILE" | xargs -d '\n' rm -f
        echo "Deleted files listed in $TO_DELETE_FILE"
    else
        echo "Skipped deletion."
    fi
fi

