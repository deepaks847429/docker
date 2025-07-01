FROM nginx:latest
# Set the working directory
COPY ./nginx.conf /etc/nginx/nginx.conf
# Copy static files to the Nginx HTML directory
# Exposing port 80 for HTTP traffic
EXPOSE :80
# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

# Explanation:
# FROM nginx:latest: This specifies the base image, which is the official Nginx image.

# COPY ./nginx.conf /etc/nginx/nginx.conf: This is commented out in case you want to add a custom Nginx configuration. You can uncomment and adjust the path to include your own configuration file.

# EXPOSE 80: This exposes port 80 to allow web traffic to the container.

# CMD ["nginx", "-g", "daemon off;"]: This command tells Docker to start Nginx in the foreground, preventing the container from exiting immediately.

# To build the Docker image:

# Save the Dockerfile in a directory.

# In the same directory, run:

# bash
# Copy
# docker build -t nginx-image .
# To run the container:

# bash
# Copy
# docker run -p 80:80 nginx-image