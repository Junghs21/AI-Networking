FROM python:3.8.10-slim

WORKDIR /app

#Install essential build tools
RUN apt-get update && \
    apt-get install -y \
    git gcc g++ libgomp1 python3-dev libffi-dev libssl-dev && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

CMD ["bash"]
