FROM ubuntu:14.04.4

MAINTAINER Wei-Ming Wu <wnameless@gmail.com>

ADD assets /assets
RUN /assets/setup.sh

EXPOSE 22
EXPOSE 1521
EXPOSE 8080

VOLUME "/u01/app/oracle/"

CMD /usr/sbin/startup.sh && /usr/sbin/sshd -D
