FROM python:3.11-slim

# Specifies the path in the image where files will be copied
WORKDIR /app

# Install the application dependencies
RUN pip install flask==2.3

# Copy in the source code
COPY app /app

# Sets an environment variable that a running container will use
ENV FLASK_APP=app.py

# Indicates a port the image will expose
EXPOSE 5000

# The command to run the application when the container starts
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]