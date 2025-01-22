# JavaScript Pong Game

A simple JavaScript Pong game that you can run using Docker.

## Overview
This project is a classic Pong game implemented in JavaScript. Dockerizing the application allows you to run it easily in a containerized environment without worrying about installing dependencies on your local machine.

---

## Prerequisites
- Docker must be installed on your system.
- [Download and install Docker here](https://www.docker.com/).

---

## Getting Started

Follow these steps to build and run the application using Docker.

### Step 1: Clone the Repository
Clone the project repository to your local machine:

```bash
git clone https://github.com/jakesgordon/javascript-pong.git
```

Change into the project directory:

```bash
cd javascript-pong
```

### Step 2: Build the Docker Image
Build the Docker image using the provided Dockerfile:

```bash
docker build -t javascript-pong-image .
```

**Explanation:**
- `docker build`: Command to build a Docker image.
- `-t javascript-pong-image`: Tags the image with the name `javascript-pong-image`.
- `.`: Specifies the build context as the current directory.

### Step 3: Run the Docker Container
Run a container from the image you just built:

```bash
docker run -p 5000:5000 javascript-pong-image
```

**Explanation:**
- `docker run`: Command to run a Docker container.
- `-p 5000:5000`: Maps port 5000 in the container to port 5000 on your host machine.
- `javascript-pong-image`: The name of the image to create the container from.

### Step 4: Access the Application
Open your web browser and navigate to:

```
http://localhost:5000
```

You should see the JavaScript Pong game running. Enjoy playing!

---

## Stopping the Application
To stop the Docker container, press `Ctrl+C` in the terminal where the container is running.

Alternatively, you can stop the container using the following commands:

1. List all running containers:

   ```bash
   docker ps
   ```

2. Stop the container:

   ```bash
   docker stop CONTAINER_ID
   ```

   Replace `CONTAINER_ID` with the actual ID from the `docker ps` output.

---

## Cleaning Up
If you want to remove the Docker image to free up space, you can do so with:

```bash
docker rmi javascript-pong-image
```

---

## Additional Information

### Dockerfile Explanation
The Dockerfile in this project sets up a lightweight web server to serve the static files of the Pong game.

### Port Configuration
The application uses port 5000. If port 5000 is already in use on your machine, you can map the container port to another port. For example:

```bash
docker run -p 5001:5000 javascript-pong-image
```

Then access the game at `http://localhost:5001`.

---

## Troubleshooting

### Issue: Port 5000 is already in use.
**Solution:** Use a different host port when running the container. For example, `-p 5001:5000`.

### Issue: Cannot connect to `http://localhost:5000`.
**Solution:** Ensure the Docker container is running and that you've mapped the ports correctly.

---

## License
This project is licensed under the [MIT License](LICENSE).

---

## Acknowledgments
- Original game by Jake Gordon: [https://github.com/jakesgordon/javascript-pong](https://github.com/jakesgordon/javascript-pong)

---

## Contact
For any questions or issues, please open an issue on the [project repository](https://github.com/jakesgordon/javascript-pong).

