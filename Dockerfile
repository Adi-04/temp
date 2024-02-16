# Use the official Python image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application files to the container
COPY app app
COPY models models
COPY app.py app.py
COPY Dockerfile Dockerfile
COPY requirements.txt requirements.txt

# Install any dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on
EXPOSE 5000

# Define the command to run your application
CMD ["python", "app.py"]
