# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy requirements.txt into the container
COPY crudproject/requirements.txt /app/

# Install dependencies
RUN pip install --upgrade pip
RUN pip install -r /app/requirements.txt

# Copy the rest of the application code
COPY . /app/

# Expose the port the app runs on
EXPOSE 8000

# Run Django's development server (development only)
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
