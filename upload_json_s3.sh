#!/bin/bash
bucket="____"
key="json_exports/users.json"
local_file="output.json"

echo "[" > $local_file
awk -F',' 'NR>1 {
    printf "  {\"id\": \"%s\", \"name\": \"%s\", \"email\": \"%s\"}", $1, $2, $3;
    if (NR != NR_END) print ",";
    else print "";
}' NR_END=$(wc -l < users.csv) users.csv >> $local_file
echo "]" >> $local_file

echo "☁️ Uploading $local_file to s3://$bucket/$key"
aws s3 cp "$local_file" "s3://$bucket/$key"
echo "✅ Upload completed!"
