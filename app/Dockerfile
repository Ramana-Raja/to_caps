FROM python:3.9-slim
WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt


COPY process.py .

ENV RAW_BUCKET=""
ENV PROCESSED_BUCKET=""
ENV INPUT_KEY=""
ENV OUTPUT_KEY=""

CMD ["python", "process.py"]
