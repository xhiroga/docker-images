# alias aws-shell='docker run --rm -it -v "$HOME/.aws:/root/.aws" hiroga/aws-shell:latest'
FROM python:3.7.7-alpine3.11

RUN pip install --upgrade pip;\
    pip install --upgrade aws-shell
ENTRYPOINT [ "aws-shell" ]
