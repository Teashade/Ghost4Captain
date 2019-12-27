FROM ghost:latest

RUN ghost config url ${URL}
