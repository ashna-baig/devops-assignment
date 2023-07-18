# Base image
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy the Python script and requirements file to the working directory
COPY main.py requirements.txt /app/

# Install project dependencies
RUN pip install -r requirements.txt

# Run the Python script
CMD [ "python", "samplecode.py" ]

