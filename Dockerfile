FROM centos:7

LABEL   app: "mysharedtools" \
        org: "evolvecyber" \
        team: "devops"

RUN     yum install telnet -y && \
        yum install wget -y && \
        yum install unzip -y && \
        yum install elinks -y && \
        yum install -y yum-utils && \
        yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo && \
        yum -y install packer && \
        yum -y install terraform
    


CMD     tail -f /dev/null


