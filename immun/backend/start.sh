#!/bin/bash
# Wait for the database to be ready
echo "Waiting for database to be ready..."
while ! nc -z db 5432; do
  sleep 0.1
done
echo "Database is ready!"

# Initialize the database and create default admin account
python -c "from app.init_db import init_db; init_db()"

# Start the Flask application
flask run --host=0.0.0.0 