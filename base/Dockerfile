# Dockerfile
FROM centos:centos6

RUN yum -y update; yum clean all

RUN yum -y install passwd openssh-server initscripts; yum clean all
RUN echo root | passwd --stdin root

RUN yum install -y openssh-server
RUN yum install -y tar
RUN yum install -y net-tools
RUN sed -ri 's/UsePAM yes/UsePAM no/g' /etc/ssh/sshd_config
RUN sed -ri 's/^#PermitRootLogin yes/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN mkdir -p /var/run/sshd && chmod 755 /var/run/sshd
ADD keys/id_rsa.ansible.pub /root/.ssh/authorized_keys
RUN chmod -R g-rwx,o-rwx /root/.ssh

RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N '' 

EXPOSE 8080 80 22

CMD ["/usr/sbin/sshd", "-D"]
