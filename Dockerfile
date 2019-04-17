FROM node:11

WORKDIR /book
COPY . .
RUN npm install -g gitbook-cli http-server && \
    gitbook init

EXPOSE 4000

CMD ["gitbook", "serve"]
