# Use Ghost 5.14.1 image from Docker Hub
FROM ghost:5.14.1

# Set the working directory inside the container
WORKDIR $GHOST_INSTALL

# Copy all files from your local repository into the container's working directory
COPY . .

# Ensure the custom config.production.json is copied to the Ghost config folder
COPY config.production.json /var/lib/ghost/config.production.json

# Ensure that the necessary environment variables will be used for Ghost to run
ENTRYPOINT []
CMD ["npm", "start"]
