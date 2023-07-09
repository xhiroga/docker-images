FROM amazon/aws-cli

RUN curl -sL https://rpm.nodesource.com/setup_16.x | bash -
RUN yum install -y nodejs

# For GitHub Actions
ENTRYPOINT [ "/bin/bash" ]
