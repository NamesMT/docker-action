# Set the base image to use for subsequent instructions
FROM namesmt/images-alpine:node-dev

# Set the working directory inside the container
WORKDIR /home

# Copy any source file(s) required for the action
COPY entrypoint.sh .

# Configure the container to be run as an executable
ENTRYPOINT ["/bin/zsh", "entrypoint.sh"]
