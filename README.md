# J6-Alert

A near real-time notification system to detect ICD10 codes starting with 'J6' (e.g., J60-J69) in a hospital's HIS (MariaDB) and send alerts via Telegram.

## Features
- Polls HIS database every 15 seconds for J6% codes
- Sends Telegram notifications with patient details (HN, VN, name, age, sex, diag type, date/time)
- Read-only access to HIS for safety
- Logs with MD5-hashed patient names for privacy
- Simple Python script for easy maintenance

## Setup
1. Clone the repo: `git clone https://github.com/your-username/j6-alert.git`
2. Install dependencies: `pip install -r requirements.txt`
3. Create `.env` with MariaDB and Telegram credentials
4. Run: `python src/j6_notifier.py`

## Environment Variables
- `DB_HOST`, `DB_USER`, `DB_PASS`, `DB_NAME`: MariaDB credentials
- `TELEGRAM_TOKEN`, `TELEGRAM_CHAT_ID`: Telegram Bot credentials

## Requirements
- Python 3.9+
- MariaDB (HIS)
- Telegram Bot

## Notes
- Ensure `ovstdiag` table has indexes on `icd10` and `vstdate` for performance
- Check logs in `logs/j6_alert.log` for debugging