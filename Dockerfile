FROM ttydof/ttyd:latest
ENV PORT=8080
CMD ["sh", "-c", "ttyd -p $PORT -c admin:secretpassword bash"]
