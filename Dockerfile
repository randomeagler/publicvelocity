FROM ubuntu:latest

# Install necessary packages
RUN apt-get update && apt-get install -y openjdk-25-jre-headless wget curl

# Set working directory
WORKDIR /app

# Copy your BungeeCord files
COPY velocity /app/velocity

COPY pico_limbo /app/pico_limbo
COPY server.toml /app/server.toml
RUN chmod +x /app/pico_limbo
RUN chmod +x /app/server.toml

# Copy your startup script
COPY main.sh /app/main.sh
RUN chmod +x /app/main.sh
RUN chmod +x /app/velocity/velocity.toml

# Expose the BungeeCord port
EXPOSE 25565

# Run the startup script
CMD ["./main.sh"]
