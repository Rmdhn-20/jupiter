# Use the latest Ubuntu image
FROM ubuntu:20.04

# Set the working directory
WORKDIR /app

# Update and install required packages
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    pip3 install jupyterlab

# Expose port 8080
EXPOSE 8080

# Start JupyterLab on port 8080 without authentication
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8080", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
