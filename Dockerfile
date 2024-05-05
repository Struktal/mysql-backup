FROM alpine:latest

# Install required packages
RUN apk --no-cache add tzdata mysql-client mariadb-connector-c-dev

# Copy application files
COPY ./app /app
RUN chmod +x /app/entrypoint.sh && \
    chmod +x /app/backup.sh && \
    mkdir /backup

# Setup cronjob
RUN crontab -u root /app/crontab

CMD ["/app/entrypoint.sh"]
