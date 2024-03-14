# 3DSlicer-root 
It is a 3D Slicer accessible through the browser running as a superuser by default. This is intended to be run with a rootless Docker container, where the root user inside the container will be mapped to a standard user in the system. This allow to preserve all the correct file ownership rules.

WARNING: Do not run with a standard Docker container, as it will run as root and will create files with root ownership.

# if built locally, run as
```
docker run --rm -d -p YOUR_PORT:8080  -v DOCKER_DIR:OS_DIR  --name CONTAINER_NAME slicer5-custom
```
# if retrieved from DockerHUB run as
```
docker run --rm -d -p YOUR_PORT:8080  -v DOCKER_DIR:OS_DIR  --name CONTAINER_NAME lgianca/slicer5-custom
```
# build locally as 
```
docker build -t slicer5-custom  .
```

# Acknowledgements
This is a simple layer on top of https://github.com/pieper/SlicerDockers/