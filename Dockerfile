# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the app code to the working directory
COPY . .

# Build the React app
RUN npm run build

# Expose port 3000 for the app
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
