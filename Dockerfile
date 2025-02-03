# Dockerfile
FROM node:alpine3.21

# Set the working directory
WORKDIR /src

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app will run on
EXPOSE 4000

# Command to start the application
CMD ["npm", "start"]