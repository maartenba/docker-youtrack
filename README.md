# YouTrack on Docker

This repository contains a Docker image of JetBrains [YouTrack](http://www.jetbrains.com/youtrack).

* The Docker image is available at [maartenba/youtrack](https://registry.hub.docker.com/u/maartenba/youtrack)
* The GitHub repository is available at [maartenba/docker-youtrack](https://github.com/maartenba/docker-youtrack)

## Usage

First, pull the Docker image using the following command:

	docker pull maartenba/youtrack

Next, create a container.

	docker run -d maartenba/youtrack

YouTrack starts and listens on port 80 in the container. To map it to the host's port 80, use the following command to create the container instead:

	docker run --name="youtrack" -p 80:80 -d maartenba/youtrack

### Additional settings

YouTrack stores its data and backups at ```/root/teamsysdata``` and ```/root/teamsysdata-backup``` in the container. If you wish to re-use data, it is a good idea to set up a volume mapping for these two paths. For example:

	docker run --name="youtrack" -v /path/on/host/teamsysdata:/root/teamsysdata -v /path/on/host/teamsysdata-backup:/root/teamsysdata-backup -p 80:80 -d maartenba/youtrack
