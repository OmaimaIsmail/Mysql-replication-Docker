From ubuntu:16.04
RUN apt-get update 
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install -y mysql-server
ADD owner.sh /root/owner.sh
RUN chmod 755 /root/owner.sh
ENTRYPOINT ["/root/owner.sh"]



