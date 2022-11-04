FROM docker.io/python:3.8-slim-buster

# Install ansible-playbook
RUN pip install ansible

# install ssh client
RUN apt-get update && apt-get install -y openssh-client

# install kubernetes client
RUN pip install kubernetes

# install kubernetes.core collection
RUN ansible-galaxy collection install kubernetes.core