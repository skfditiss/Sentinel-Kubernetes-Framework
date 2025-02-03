# Use official Node.js image
FROM node:alpine

# Set working directory inside container
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json .
RUN npm install

# Copy application code
COPY . .

# Expose application port
EXPOSE 7000

# Start the application
CMD ["node", "app.js"]