# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Install Python and pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip

# Install PyYAML
RUN pip3 install PyYAML

# Copy the current directory contents into the container at /app
COPY . /app

# Make feed.py executable
RUN chmod +x /usr/bin/feed.py

# Run feed.py when the container launches
CMD ["python3", "/usr/bin/feed.py"]
