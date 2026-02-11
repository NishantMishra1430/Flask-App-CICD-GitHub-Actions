FROM python:3.9-slim
WORKDIR /app
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y gcc default-libmysqlclient-dev pkg-config \
    && rm -rf /var/lib/apt/lists/*
COPY requirements.txt .
RUN pip install mysqlclient \
    && pip install --no-cache-dir -r requirements.txt \
    && pip install python-dotenv
COPY . .

CMD ["python", "app.py"]
