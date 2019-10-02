FROM nginx:1.15.8-alpine

WORKDIR /app
COPY default.conf /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf

RUN chmod go+x /app
