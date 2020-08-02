FROM alpine:latest

# Install distro packages
RUN apk add autoconf        # argbash
RUN apk add bash
RUN apk add git
RUN apk add make            # argbash

# Install argbash
WORKDIR /
RUN git clone https://github.com/matejak/argbash.git
WORKDIR /argbash/resources
RUN make install PREFIX=/usr

# Copy and build (with argbash) setup script
WORKDIR /app
COPY . .
RUN argbash -o autorepo autorepo-argbash
RUN rm autorepo-argbash

WORKDIR /
ENTRYPOINT [ "/app/autorepo" ]
