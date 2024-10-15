# Use the official Python image from Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any dependencies specified in requirements.txt
RUN pip install -r requirements.txt

# Expose the port that Flask will run on
EXPOSE 8080

# Command to run the Flask app
CMD ["python", "app.py"]
