# Use the node:19.7.0-alpine base image
FROM node:19.7.0-alpine

# Set environment variable for production
ENV NODE_ENV=production

# Create and set ownership of the labone directory
RUN mkdir /assigment1 && chown node:node /assigment1

# Set the working directory to labone
WORKDIR /assigment1

# Set the user to node
USER node

# Copy all files and set ownership
COPY --chown=node:node . .

# Install necessary node modules
RUN npm install

# Expose port 3000 for the application
EXPOSE 3000

# Set the default command to run the application
CMD ["node", "src/index.js"]
