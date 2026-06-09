FROM python:3.10.12
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       git=1:2.34.1-1ubuntu1.12 \
    && rm -rf /var/lib/apt/lists/*
RUN pip install --no-cache-dir \
    pandas==2.0.3 \
    numpy==1.24.3 \
    matplotlib==3.7.2 \
    notebook==7.0.6
COPY . /workspace
WORKDIR /workspace
