From ubuntu:16.04
RUN apt-get update 
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install -y mysql-server
ADD owner.sh /root/owner.sh
RUN chmod 777 /root/owner.sh
#RUN ["/bin/bash", "-c", "/root/owner.sh"]
ENTRYPOINT ["/root/owner.sh"]
#RUN usermod -d /var/lib/mysql/ mysql


