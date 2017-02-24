FROM vizuri/aws-cli:1.0
MAINTAINER Isaac Christoffersen <ichristoffersen@vizuri.com>

USER root

RUN yum -y install ansible && \
    yum clean all && \
    echo -e '[local]\nlocalhost' > /etc/ansible/hosts

COPY configs/ansible.cfg /etc/ansible/ansible.cfg

USER vizuri

ENTRYPOINT ["/usr/bin/ansible"]
