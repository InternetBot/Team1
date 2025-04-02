FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN mkdir -p uploads

EXPOSE 5000

# Initialize the database and create default admin account
RUN python -c "from app.init_db import init_db; init_db()"

CMD ["flask", "run", "--host=0.0.0.0"] 