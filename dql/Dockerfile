# alias dql='docker run --rm -it -v "$HOME/.aws:/root/.aws" hiroga/dql:latest'
FROM python:2.7.18-buster

RUN pip install --upgrade pip;\
    pip install --upgrade dql

ENTRYPOINT [ "dql" ]
