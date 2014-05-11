#
# Ansible Dockerfile
#
# https://github.com/dockerfile/ansible
#

# Pull base image.
FROM dockerfile/ubuntu

# Install Ansible.
RUN apt-get install -y python-dev python-pip
RUN pip install ansible

# Define mountable directories.
VOLUME ["/data"]

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["bash"]
