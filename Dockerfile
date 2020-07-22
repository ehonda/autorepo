FROM alpine:latest

RUN apk add bash
RUN apk add git

WORKDIR /app
COPY . .

ENTRYPOINT [ "./autorepo" ]
