FROM mysql:latest
COPY client.cnf /
RUN chmod 400 /client.cnf
# docker volume create -d cifs --name noriko/s/wpdb --opt cifsopts=vers=3.02,file_mode=0666,dir_mode=0777
# docker volume create -d cifs --name noriko/s/www --opt cifsopts=vers=3.02,file_mode=0666,dir_mode=0777

