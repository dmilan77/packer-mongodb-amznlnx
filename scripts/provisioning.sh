# cat >/tmp/mongodb-org.repo <<EOL
# [mongodb-org-${MONGO_VERSION}]
# name=MongoDB Repository
# baseurl=https://repo.mongodb.org/yum/amazon/2/mongodb-org/${MONGO_VERSION}/x86_64/
# gpgcheck=1
# enabled=1
# gpgkey=https://www.mongodb.org/static/pgp/server-${MONGO_VERSION}.asc
# EOL
# sudo cp /tmp/mongodb-org.repo /etc/yum.repos.d/mongodb-org.repo
sudo yum update -y
sudo yum install libcurl openssl xz-libs -y
sudo yum install gnupg -y
# https://www.mongodb.com/try/download/community
sudo yum install -y https://repo.mongodb.org/yum/amazon/2013.03/mongodb-org/3.2/x86_64/RPMS/mongodb-org-server-3.2.22-1.amzn1.x86_64.rpm
sudo cp /tmp/mongod.conf /etc/mongod.conf
