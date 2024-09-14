# Use Kali Linux base image
FROM kalilinux/kali-rolling

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive
ENV USER root
ENV PASSWORD password

# Update and install necessary packages
RUN apt-get update && apt-get install -y \
    x11vnc \
    xvfb \
    xfce4 \
    xfce4-terminal \
    wget \
    supervisor \
    && apt-get clean

# Install noVNC
RUN mkdir -p /opt/novnc/utils/websockify && \
    wget -qO- https://github.com/novnc/noVNC/archive/master.tar.gz | \
    tar xz --strip 1 -C /opt/novnc && \
    wget -qO- https://github.com/novnc/websockify/archive/master.tar.gz | \
    tar xz --strip 1 -C /opt/novnc/utils/websockify

# Expose port 8080 for noVNC
EXPOSE 8080

# Copy supervisor configuration
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Start all services
CMD ["/usr/bin/supervisord"]

