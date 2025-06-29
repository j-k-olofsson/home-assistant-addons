ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

# Lägg till körskriptet till rätt plats
COPY services.d /etc/services.d

# Se till att run-scriptet är körbart
RUN chmod +x /etc/services.d/chromadb/run
