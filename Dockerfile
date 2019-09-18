FROM python:3

WORKDIR /usr/src/app

COPY . .
RUN pip install -r requirements.txt && apt update && apt install libsodium-dev

ENTRYPOINT  ["python","main.py"]
