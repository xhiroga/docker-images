FROM amazon/aws-cli

RUN curl -sL https://rpm.nodesource.com/setup_16.x | bash -
# nektos/act requires nodejs and GitHub Actions reqires tar and gzip
RUN yum install -y nodejs tar gzip
