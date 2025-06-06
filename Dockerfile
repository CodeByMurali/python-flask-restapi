FROM python:3.11-slim

WORKDIR /opt/app

COPY . .

RUN pip install --no-cache-dir -r requirements-prod.txt

EXPOSE 8080

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0", "--port=8080"]