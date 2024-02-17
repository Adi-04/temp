# Use the official Python image
FROM python:3.9-slim

# # Set the working directory inside the container
WORKDIR /app

# Copy the application files to the container

COPY ./requirements.txt /app

# Install any dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV FLASK_APP=app.py

# Expose the port the app runs on
EXPOSE 5000

# Define the command to run your application
CMD ["flask", "run", "--host", "0.0.0.0"]
