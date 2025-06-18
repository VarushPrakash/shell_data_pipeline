# 🐚 Shell Data Pipeline – Real-Time Ingestion with Kafka + S3

This project demonstrates a complete automation pipeline using Bash scripting, AWS S3, and Apache Kafka — from data transformation to ingestion and cloud storage.

## 💡 Features

- ✅ CSV-to-JSON conversion with shell
- ✅ Upload JSON to AWS S3 using AWS CLI
- ✅ Kafka-based message producer & consumer (JSON)
- ✅ Cron simulation with scheduled shell loops
- ✅ Log parsing with grep, awk, cut

---

## 📂 Project Structure

| Script | Purpose |
|--------|---------|
| `csv_transformer.sh` | Extracts & formats CSV columns |
| `csv_to_json.sh` | Converts CSV to JSON |
| `upload_json_s3.sh` | Pushes JSON to S3 |
| `push_json_kafka.sh` | Produces JSON messages to Kafka |
| `consume_json_kafka.sh` | Reads messages from Kafka |
| `kafka_auto_push.sh` | Automates ingestion every 60s |
| `cron_simulation.sh` | Simulates scheduled job |
| `batch_csv_processor.sh` | Loops over `.csv` files |
| `greet_user.sh` | Takes user input |
| `welcome.sh` | First basic script |

---

## 🔧 Requirements

- Git Bash / Linux shell
- Kafka (localhost or Docker)
- AWS CLI (`aws configure`)
- `jq` (optional, for JSON formatting)

---

## 🧠 What I Learned

- Working with files, conditions, and loops in Bash
- Data cleaning and conversion
- Kafka message flows (produce/consume)
- Scheduling jobs like cron
- Uploading to AWS with shell scripts

---

## 👨‍💻 Author

**Varush Prakash**  
- Data Engineer | Snowflake | AWS | Kafka | PySpark  
- [LinkedIn](https://www.linkedin.com/in/varush-prakash-a7555521a)  
