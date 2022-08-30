FROM ansible/awx-ee:latest

USER root
RUN dnf install -y python3-psycopg2
RUN pip3 install hvac
RUN pip3 install kubernetes-validate
ADD mongod-4.4.repo /etc/yum.repos.d/mongod-4.4.repo
RUN dnf install -y mongodb-database-tools
RUN curl -k -q -s https://dl.minio.io/client/mc/release/linux-amd64/mc --output mc
RUN mv mc /usr/local/bin/mc
RUN chmod +x /usr/local/bin/mc
USER 1000
