FROM kalilinux/kali-linux-docker
MAINTAINER Darwin D Wu <wuddarwin@gmail.com>
RUN apt-get update && apt-get upgrade -y
RUN apt-get install metasploit -y
RUN apt-get install kali-linux-top10 -y
RUN apt-get install postgresql -y
RUN cd /etc/ssl/certs/
RUN chown postgres ssl-cert-snakeoil.pem
RUN chmod 777 ssl-cert-snakeoil.pem
RUN cd /etc/ssl/private
RUN chown postgres ssl-cert-snakeoil.key
RUN chmod 700 ssl-cert-snakeoil.key
RUN service postgresql start
