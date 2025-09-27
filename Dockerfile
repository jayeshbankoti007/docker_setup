FROM --platform=linux/amd64 nvidia/cuda:13.0.1-cudnn-runtime-ubuntu24.04
RUN apt-get update && apt-get install -y python3 python3-pip python3-dev
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
WORKDIR /app