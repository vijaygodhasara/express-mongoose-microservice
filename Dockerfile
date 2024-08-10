# Use the official Node.js image
FROM node:14

# Create and change to the app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Copy the app code
COPY . .

# Bind to port 3000
EXPOSE 3000

# Start the app
CMD ["node", "src/index.js"]