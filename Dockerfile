# Use the official Python 3 Alpine image as a base
FROM python:3-alpine

# Set the working directory
WORKDIR /app

# Copy application files
COPY *.py ./

# Expose the port the application runs on
EXPOSE 65001

# Default command (can be overridden)
CMD ["python", "hdhomerun_app_proxy.py"]
