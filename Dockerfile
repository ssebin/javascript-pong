# Base image
FROM node:14-alpine

# Working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Port Number
EXPOSE 5000

# Run command
CMD [ "npm", "start" ]