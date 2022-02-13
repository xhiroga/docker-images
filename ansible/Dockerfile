# alias ansible='docker run -it -v $(pwd):/work:ro -v ~/.ansible:/root/.ansible -v ~/.ssh:/root/.ssh:ro --entrypoint ansible --rm ghcr.io/xhiroga/ansible'
# alias ansible-playbook='docker run -it -v $(pwd):/work:ro -v ~/.ansible:/root/.ansible -v ~/.ssh:/root/.ssh:ro --entrypoint ansible-playbook --rm ghcr.io/xhiroga/ansible'

FROM centos:7

ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

RUN yum check-update; \
    yum install -y gcc libffi-devel python3 epel-release; \
    yum install -y python3-pip; \
    yum install -y wget; \
    yum clean all

RUN pip3 install --upgrade pip; \
    pip3 install --upgrade virtualenv; \
    pip3 install pywinrm[kerberos]; \
    pip3 install pywinrm; \
    pip3 install jmspath; \
    pip3 install requests; \
    python3 -m pip install ansible; \
    ansible-galaxy collection install ansible.windows; \
    ansible-galaxy collection install azure.azcollection; \
    pip3 install -r ~/.ansible/collections/ansible_collections/azure/azcollection/requirements-azure.txt

WORKDIR /work

# References
# - [Get Started \- Configure Ansible in a Docker container \| Microsoft Docs](https://docs.microsoft.com/en-us/azure/developer/ansible/configure-in-docker-container?tabs=azure-cli)
# - [Run Ansible with Docker\. Ansible container \| by Maciej \| Medium](https://iceburn.medium.com/run-ansible-with-docker-9eb27d75285b)
