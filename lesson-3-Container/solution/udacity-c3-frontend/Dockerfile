## Build
FROM beevelop/ionic AS ionic
RUN apt-get update && \
    apt-get install -y python2.7-dev make g++ && \
    rm -rf /var/lib/apt/lists/*
RUN ln -s /usr/bin/python2.7 /usr/bin/python
# Create the application directory
WORKDIR /usr/src/app
# Install the application dependencies
# We can use wildcard to ensure both package.json AND package-lock.json are considered
# where available (npm@5+)
COPY package*.json ./
RUN npm ci
# Bundle app source
COPY . .
RUN ionic build

## Run
FROM nginx:alpine
#COPY www /usr/share/nginx/html
COPY --from=ionic /usr/src/app/www /usr/share/nginx/html
