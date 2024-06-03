# Use an official Ubuntu as a parent image
FROM ubuntu:20.04

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive
ENV MY_USER=steven

# Install dependencies
RUN apt-get update && \
    apt-get install -y sudo curl git

# Add a non-root user for testing
RUN useradd -ms /bin/bash ${MY_USER} && \
    echo "${MY_USER} ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Set the working directory
WORKDIR /home/${MY_USER}

# Switch to the non-root user
USER ${MY_USER}

# Start the container with bash
CMD ["/bin/bash"]

