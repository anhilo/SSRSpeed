FROM python:3

WORKDIR /usr/src/app

COPY . .
RUN pip install -r requirements.txt && apt update && apt install -y libsodium-dev
EXPOSE 80 

ENTRYPOINT  ["python","main.py"]
