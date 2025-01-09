# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app/

# Install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose the port the app runs on
EXPOSE 8000

# Run Django's development server (this is for development, you might want to use Gunicorn in production)
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
