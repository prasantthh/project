# Use the official Jenkins LTS image
FROM jenkins/jenkins:lts

# Switch to root user to install extra packages
USER root

# (Optional) Install additional Linux packages, e.g., Docker CLI inside Jenkins container
# RUN apt-get update && apt-get install -y docker.io

# Switch back to Jenkins user
USER jenkins

# Pre-install Jenkins plugins (optional)
# You can modify this list to suit your needs
RUN jenkins-plugin-cli --plugins \
    git \
    workflow-aggregator \
    blueocean \
    credentials-binding \
    docker-workflow
