# This command uses the PYTHON image base from Docker Hub
FROM python:latest

# Create a directory in the container to /app
RUN mkdir /app

# Specifies the path in the image where files will be copied
WORKDIR /app

# Copy in the source code
COPY app /app

# Install the application dependencies
RUN pip install -r requirements.txt

# Indicates the port the image will expose
EXPOSE 5000

# The command to run the application when the container starts
CMD ["python", "/app/main.py"]