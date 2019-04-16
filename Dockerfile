FROM node:11-slim

RUN npm install -g gitbook-cli && apt install -y nginx

WORKDIR /usr/share/nginx/html

ADD . /usr/share/nginx/html

EXPOSE 80

CMD ["service", "nginx", "start"]