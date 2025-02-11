# Use an official Node.js image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first (for efficient caching)
COPY package*.json ./

# Install dependencies
RUN npm install --omit=dev  # Use --omit=dev if this is a production build

# Copy the entire app source
COPY . .

# Expose the application port
EXPOSE 3000

# Start the Node.js app
CMD ["npm", "start"]
