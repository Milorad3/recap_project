FROM python:3.11-slim
WORKDIR /app
COPY . .
RUN pip install --upgrade pip wheel msgpack setuptools>=78.1.1
RUN pip install -r requirements.txt
CMD ["python", "app.py"]