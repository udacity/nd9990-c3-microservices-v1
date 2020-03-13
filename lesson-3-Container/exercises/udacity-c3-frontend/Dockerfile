# This Dockerfile creates an image; it will package up our app inside an image

# Set the base image as this ionic image from the Docker library
FROM beevelop/ionic AS ionic

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
# 
RUN ionic build

# a Linux image
FROM nginx:alpine

# copy /usr/src/app/www from the base image 'ionic' to the new directory /usr/share/nginx/html
COPY --from=ionic /usr/src/app/www /usr/share/nginx/html

# to build this image:
# docker build -t char2pie/udacity-frontend .