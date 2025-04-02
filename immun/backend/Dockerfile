FROM python:3.9-slim

WORKDIR /app

# Install netcat
RUN apt-get update && apt-get install -y netcat-traditional && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN mkdir -p uploads
RUN chmod +x start.sh

EXPOSE 5000

CMD ["./start.sh"] 