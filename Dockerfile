# Use Ghost 5.14.1 image from Docker Hub
FROM ghost:5.14.1

# Set the working directory inside the container
WORKDIR $GHOST_INSTALL

# Copy all files from your local repository into the container's working directory
COPY . .

# Copy the config.production.json file to the Ghost config folder
COPY config.production.json /var/lib/ghost/config.production.json

# Clear entrypoint so we can define our own command
ENTRYPOINT []

# Command to run Ghost using a start script
CMD ["./start.sh"]

# This is the content of the Dockerfile
