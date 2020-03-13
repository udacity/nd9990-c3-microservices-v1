# This Dockerfile creates an image; it will package up our app inside an image

# Set the base image as Node.js
FROM node:12

# Create the app directory inside the container. All subsequent commands that
# refer to a starting-point directory will refer to WORKDIR
WORKDIR /usr/src/app

# copy package.json and package-lock.json to WORKDIR
COPY package*.json ./

# install all dependencies in package-lock.json onto your image at WORKDIR/node_modules
# npm clean install; install a project from a clean slate from package-lock.json
RUN npm ci

# copy the rest of the source code in the current folder to the image at WORKDIR/
COPY . .

# declare the port that the app runs on
EXPOSE 8080

# Define the command that runs our app inside our container
# we want to start our app with the same command that we use on the terminal 
# This command is run when the container is run.  This starts the server.
CMD ["npm", "run", "dev"]

# to execute this Dockerfile and build a new image called charliepie/udacity-restapi-feed
# $ docker build -t charliepie/udacity-restapi-feed .
# -t name-of-app  (tag the app with a name) 
# charlie is my dockerhub username, always lowercase
# '.'   current directory is where to find the Dockerfile and the app source code (the context)

# docker images   (should see the image charliepie/udacity-restapi-feed)

