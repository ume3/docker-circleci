FROM centos:latest

ADD ./docker/nginx.repo /etc/yum.repos.d/
RUN yum -y -q --setopt=tsflags=nodocs install \
    nginx \
    ;\
    yum clean all

EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
