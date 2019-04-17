FROM node:11

WORKDIR /book
COPY . .
RUN npm install -g gitbook-cli http-server && \
    gitbook init && \
    gitbook install && (gitbook build . _app || gitbook build . _app)

WORKDIR /book/_app
EXPOSE 4000

CMD [ "http-server", "-g", "-a", "0.0.0.0", "-p", "4000" ]