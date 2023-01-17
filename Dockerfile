# Load Ubuntu baseimage from Dockerhub
FROM: ubuntu:latest

# Do the update
RUN apt-get update

# Install curl
RUN apt-get install curl wget -y

# Define workdir inside container
WORKDIR /mydir

# Copy curler.sh script to workdir
copy curler.sh .

# Define execute right to curler.sh
# RUN chmod +x curler.sh

# Run curler.sh when container is started
CMD ["bash", "curler.sh"]
