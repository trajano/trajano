FROM atmoz/sftp:alpine
COPY *.pub /home/site/.ssh/keys/
COPY host_keys/* /etc/ssh/
RUN chmod 400 /etc/ssh/ssh_host*key*
CMD [ "site::1001" ]
