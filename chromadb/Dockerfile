ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

# Copy run script into s6-overlay services folder
COPY services.d /etc/services.d
RUN chmod +x /etc/services.d/chromadb/run