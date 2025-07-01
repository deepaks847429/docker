# use an official Node.js runtime as a parent image
FROM node:latest
# set the working directory in the container
WORKDIR /usr/src/app
# copy package.json and package-lock.json to the working directory
COPY package*.json ./
# install dependencies
RUN npm install

#  copy rest of the container code to the working directory

COPY ..
# expose port 3000 for the application

EXPOSE 3000

# start the application

CMD ["node", "start"] 

# Explanation:
# FROM node:16: This pulls the official Node.js image from Docker Hub, using version 16 as the base image.

# WORKDIR /app: This sets the working directory inside the container to /app.

# *COPY package.json ./**: This copies the package.json and package-lock.json files into the container. This is done first to take advantage of Docker’s cache layer and avoid reinstalling dependencies if they haven’t changed.

# RUN npm install: This installs the app's dependencies inside the container.

# COPY . .: This copies the rest of your application code into the container.

# EXPOSE 3000: This exposes port 3000, allowing traffic to reach your Node.js application.

# CMD ["npm", "start"]: This runs the npm start command to start the Node.js application. Ensure that you have a start script defined in your package.json.

# To build and run the Docker image:
# Save the Dockerfile in the root directory of your Node.js app.

# Build the Docker image:

# bash
# Copy
# docker build -t node-app .
# Run the Docker container:

# bash
# Copy
# docker run -p 3000:3000 node-app
# This will make your Node.js application accessible on port 3000 of your machine.