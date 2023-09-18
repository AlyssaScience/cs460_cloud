# Use the official Jupyter image as a parent image
FROM jupyter/base-notebook:latest

# Set working directory
WORKDIR /app

# Install Flask, Pandas, Folium, and Requests
RUN pip install Flask pandas folium requests

# Copy the current directory contents into the container at /app
COPY . /app

# Make port 8888 available to the world outside this container
EXPOSE 8888

# Run your custom script when the container launches
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
