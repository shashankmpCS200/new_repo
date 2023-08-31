# Use the latest Node.js image as the base image
FROM node:latest

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Expose port 3000
EXPOSE 3000

# Command to start the application
CMD [ "npm", "run", "dev" ]
