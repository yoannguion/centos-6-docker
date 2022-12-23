FROM centos:6
MAINTAINER yoannguion <yoannguion@gmail.com>
LABEL "maintainer"="Yoann Guion <yoannguion@gmail.com>"

RUN curl https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-6 --output /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6 && \
    curl https://www.getpagespeed.com/files/centos6-eol.repo --output /etc/yum.repos.d/CentOS-Base.repo && \
    curl https://www.getpagespeed.com/files/centos6-epel-eol.repo --output /etc/yum.repos.d/epel.repo && \
    yum -y update && \
    yum clean all && \
    rm -rf /var/cache/*
