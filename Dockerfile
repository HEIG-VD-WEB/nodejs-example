## First stage: Build the application
FROM node:20-alpine as build

# Work directory
WORKDIR /app

# Copy package files
COPY package.json package.json
COPY package-lock.json package-lock.json

# Install dependencies
RUN npm ci

# Copy source files
COPY home.html home.html
COPY index.js index.js

EXPOSE 3000

# Run the application
CMD ["npm", "run", "start"]
