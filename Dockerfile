FROM python:3.12-slim
WORKDIR /app
COPY . .
RUN pip install --upgrade pip wheel setuptools msgpack
RUN pip install --upgrade -r requirements.txt
CMD ["python", "app.py"]