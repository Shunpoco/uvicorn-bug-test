FROM python:3.8.8-slim

WORKDIR /app

RUN pip install "uvicorn[standard]==0.14.0" "gunicorn==20.0.4" "fastapi==0.63.0"

COPY main.py ./

EXPOSE 8080

CMD ["gunicorn", "--bind", "0.0.0.0:8080", "--workers", "1", "--worker-class", "uvicorn.workers.UvicornWorker", "main:app", "--access-logfile", "-"]
