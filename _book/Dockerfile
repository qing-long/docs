FROM node:11

WORKDIR /book

COPY . .

RUN npm install -g gitbook-cli && \
    apt update && \
    apt install -y nginx && \
    gitbook init && \
    cp -r _book/* /usr/share/nginx/html && \
    service nginx restart

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]