#!/bin/bash
echo "[" > output.json
awk -F',' 'NR>1 {
    printf "  {\"id\": \"%s\", \"name\": \"%s\", \"email\": \"%s\"}", $1, $2, $3;
    if (NR != NR_END) print ",";
    else print "";
}' NR_END=$(wc -l < users.csv) users.csv >> output.json
echo "]" >> output.json
echo "✅ JSON written to output.json"
