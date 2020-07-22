FROM alpine:latest

RUN apk add bash

WORKDIR /app
COPY . .

ENTRYPOINT [ "./interact" ]
#CMD [ "nothing" ]
