FROM alpine:latest
RUN rm -rf /app/node_modules
RUN apk upgrade && \
    apk add --update npm && \
    npm install -yg yarn
RUN addgroup -g 1000 -S app && \
    adduser -u 1000 -S app -G app
WORKDIR /app
USER app
