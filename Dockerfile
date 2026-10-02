FROM tsl0922/ttyd:latest
EXPOSE 8080
ENV PORT=8080
ENV CC_REVERSE_PROXY_BUFFERING=FALSE
CMD ["sh", "-c", "ttyd -t pingInterval=30 -p $PORT -c admin:secretpassword bash", "-i"]
