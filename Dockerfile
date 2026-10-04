FROM python:3.10-slim

WORKDIR /app

# Copy the requirements file and install the web packages
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Python app
COPY tasklist_app.py .

# Expose port 8000 so we can talk to the container from our browser
# Bind to all available network interfaces.
# Why it matters for Docker: By default, web servers only listen to requests coming from inside their own machine (127.0.0.1 or localhost). Because a Docker container is like a separate isolated computer, if you left it at default, your main laptop wouldn't be able to talk to it. Setting the host to 0.0.0.0 tells the container: "Listen to web traffic coming from anywhere, including outside this container."

EXPOSE 8000

# Start the web server inside Docker
CMD ["uvicorn", "tasklist_app:app", "--host", "0.0.0.0", "--port", "8000"]
