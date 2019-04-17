FROM node:11

WORKDIR /book

COPY . .

RUN npm install -g gitbook-cli && \
    gitbook init && \
    gitbook build

EXPOSE 4000

CMD ["gitbook", "serve", "."]
