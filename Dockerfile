# Use the desired Python base image
FROM alpine:3.10

# Copy the entrypoint.sh script
COPY entrypoint.sh /entrypoint.sh

# Set the entrypoint to the script
ENTRYPOINT ["/entrypoint.sh"]
