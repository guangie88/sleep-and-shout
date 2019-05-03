FROM alpine:3.9

WORKDIR /app
COPY ./run.sh ./

CMD ["sh", "./run.sh"]
