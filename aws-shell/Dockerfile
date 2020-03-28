# alias aws-shell='docker start -ai aws-shell || docker run -it -v "$HOME/.aws:/root/.aws" --name aws-shell hiroga/aws-shell:latest'
FROM python:3.7.7-alpine3.11

RUN pip install --upgrade pip;\
    pip install --upgrade aws-shell
ENTRYPOINT [ "aws-shell" ]
