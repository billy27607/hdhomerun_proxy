# Use the official Python 3 Alpine image as a base
FROM python:3-alpine

# Install necessary packages
RUN apk add --no-cache \
    bash \
    git \
    gcc \
    libc-dev

# Clone the repository
RUN git clone https://github.com/billy27607/hdhomerun_proxy.git /app

# Set the working directory
WORKDIR /app

# Install Python dependencies (if any)
# RUN pip install -r requirements.txt

# Expose the port the application runs on
EXPOSE 65001

# Default command (can be overridden in docker-compose)
CMD ["python", "hdhomerun_app_proxy.py"]