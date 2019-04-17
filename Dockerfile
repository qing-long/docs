FROM node:11

WORKDIR /book

COPY . .

RUN npm install -g gitbook-cli && \
    gitbook init && \
    cd _book

EXPOSE 80

CMD ["http-server", "-a", "0.0.0.0", "-p", "4000"]
