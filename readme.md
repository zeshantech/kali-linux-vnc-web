# Kali Linux Docker with GUI and noVNC

This project allows you to run **Kali Linux** with a fully functional inside a **Docker** container, accessible through your web browser via **noVNC**.

The container provides a lightweight Kali Linux desktop environment that can be accessed with GUI on Web

## Features

- **Kali Linux** with XFCE desktop environment
- **noVNC** access to the Kali desktop from any web browser
- **x11vnc** for VNC server setup
- Lightweight and easy-to-use Docker setup

## Requirements

- Docker installed on your system
- Web browser to access the GUI

## Quick Start

1. Clone this repository:
    ```bash
    git clone https://github.com/zeshantech/kali-linux-vnc-web.git
    cd kali-linux-vnc-web
    ```

2. Build the Docker image:
    ```bash
    docker build -t kali-gui .
    ```

3. Run the Docker container:
    ```bash
    docker run -d -p 8080:8080 kali-gui
    ```

4. Access Kali Linux GUI from your browser:
    - Open your browser and go to `http://localhost:8080/vnc.html`.

## Usage

- Once the container is running, you can access a full Kali Linux desktop environment from your browser.
- From there, you can run any Kali Linux tools, terminal, or any other installed applications.

## Troubleshooting

- Ensure Docker is installed and running.
- If the container doesn’t start correctly, check the logs:
    ```bash
    docker logs <container_id>
    ```

## License

This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for details.

## Support
For any support mail me on [zeshanshakil0@gmail.com](mailto:zeshanshakil0@gmail.com)
