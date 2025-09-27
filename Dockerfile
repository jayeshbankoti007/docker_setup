FROM --platform=linux/amd64 nvidia/cuda:13.0.1-cudnn-runtime-ubuntu24.04

# Install Python + venv
RUN apt-get update && apt-get install -y python3 python3-pip python3-dev python3-venv

# Create and activate virtual environment
RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

# Install Python deps
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
