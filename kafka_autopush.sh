#!/bin/bash
topic="user-data"
json_file="output.json"

while true
do
  echo "📤 Sending data at: $(date)"
  cat $json_file | jq -c '.[]' | while read line; do
    echo "$line" | kafka-console-producer.sh --broker-list localhost:9092 --topic $topic > /dev/null
    echo "✅ Sent: $line"
  done
  echo "⏳ Waiting for 60 seconds before next push..."
  sleep 60
done
