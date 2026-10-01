# Use a lightweight, official Python image
FROM python:3.11-slim

# Create a working directory inside the container
WORKDIR /app

# Copy the game script from your local machine to the container
COPY game.py .

# Run the script when the container starts
CMD ["python", "game.py"]
