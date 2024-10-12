#!/bin/bash

# Title: Docker Cleanup Script
# Description: This script removes all running and stopped Docker containers, networks, and volumes.

# Remove all containers (running and stopped)
docker rm -f $(docker ps -aq)

# Remove all networks
docker network prune -f

# Remove all volumes
#docker volume prune -f
docker volume rm $(docker volume ls -q)

echo "Docker cleanup completed: All containers (running and stopped), networks, and volumes have been removed."