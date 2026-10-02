FROM ttydof/ttyd:latest
EXPOSE 8080
ENV PORT=8080
CMD ["sh", "-c", "ttyd -p $PORT -c admin:secretpassword bash"]
