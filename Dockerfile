FROM python:2.7

WORKDIR /app
RUN   apt-get update && apt-get install -y bash
RUN   pip install requests
RUN   pip install baker
RUN   pip install websocket-client

ENTRYPOINT ["/app/gaucho"]
COPY services.py /app/gaucho
RUN chmod +x /app/gaucho
