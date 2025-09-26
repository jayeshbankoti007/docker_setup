FROM --platform=linux/amd64 nvidia/cuda:12.2.1-cudnn8-devel-ubuntu22.04
RUN apt-get update && apt-get install -y python3 python3-pip python3-dev
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
WORKDIR /app