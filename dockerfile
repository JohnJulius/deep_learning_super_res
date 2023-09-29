FROM rocm/pytorch:latest

# Set the Dockerfile to use the `latest` tag of the `rocm/pytorch` image. This will ensure that the image is always up-to-date with the latest version of PyTorch.

# Add the `--cap-add=SYS_PTRACE`, `--security-opt seccomp=unconfined`, `--device=/dev/kfd`, `--device=/dev/dri`, `--group-add video`, `--ipc=host`, and `--shm-size 8G` options to the Dockerfile. These options are necessary for the container to access the hardware and software necessary for ROCm.
ENV DOCKER_RUN_OPTIONS "--cap-add=SYS_PTRACE --security-opt seccomp=unconfined --device=/dev/kfd --device=/dev/dri --group-add video --ipc=host --shm-size 16G"

# Start the container with the PyTorch environment and the specified options.
#CMD ["docker", "run", "-it", "$DOCKER_RUN_OPTIONS", "rocm/pytorch:latest"]

WORKDIR home/julius/Documents/ML/test

# Specify the command to run when the container starts
CMD ["python", "test.py"]