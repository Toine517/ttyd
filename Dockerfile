FROM tsl0922/ttyd:latest
USER root
RUN apt-get update && \
    apt-get install -y --no-install-recommends iperf3 && \
    rm -rf /var/lib/apt/lists/*
EXPOSE 8080 7681 5201
ENV PORT=8080
ENV CC_REVERSE_PROXY_BUFFERING=FALSE
CMD ["sh", "-c", "ttyd -t pingInterval=30 -p $PORT -W -c admin:secretpassword bash", "-i"]
