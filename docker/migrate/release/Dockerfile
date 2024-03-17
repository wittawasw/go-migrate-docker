FROM alpine:3.19

RUN apk add --no-cache wget

# Download and extract migrate binary
RUN wget -O /tmp/migrate.tar.gz https://github.com/golang-migrate/migrate/releases/download/v4.17.0/migrate.linux-amd64.tar.gz && \
    tar -xzvf /tmp/migrate.tar.gz -C /tmp && \
    mv /tmp/migrate /usr/local/bin/migrate && \
    chmod +x /usr/local/bin/migrate

# Clean up
RUN rm -rf /tmp/*

# CMD ["migrate", "--version"]

ENTRYPOINT ["migrate"]
CMD ["--help"]