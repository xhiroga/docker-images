# docker build -t hiroga/fail .
# docker run --rm -it hiroga/fail
# docker push hiroga/fail
FROM node:12.18.1

WORKDIR /app

COPY . .

CMD [ "node", "fail.js" ]
