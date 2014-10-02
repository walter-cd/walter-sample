# Dockerfile
FROM centos:centos7

RUN yum -y update; yum clean all

RUN yum -y remove fakesystemd
RUN yum -y install systemd

RUN yum -y install passwd openssh-server initscripts; yum clean all
RUN echo root | passwd --stdin root
RUN echo "UseDNS no" >> /etc/ssh/sshd_config
RUN sed -i 's/UsePrivilegeSeparation sandbox/UsePrivilegeSeparation no/' /etc/ssh/sshd_config

RUN yum install -y openssh-server
RUN sed -ri 's/UsePAM yes/UsePAM no/g' /etc/ssh/sshd_config
RUN mkdir -p /var/run/sshd && chmod 755 /var/run/sshd
ADD keys/id_rsa.ansible.pub /root/.ssh/authorized_keys
RUN chmod -R g-rwx,o-rwx /root/.ssh

RUN systemctl enable sshd.service

CMD ["/usr/sbin/init"]
