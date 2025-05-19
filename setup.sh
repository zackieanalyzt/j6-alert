#!/bin/bash
echo "Installing dependencies..."
pip install -r requirements.txt
echo "Creating logs directory if not exists..."
mkdir -p logs
echo "Setup complete. Create .env file with required credentials."
echo "Run the script with: python src/j6_notifier.py"