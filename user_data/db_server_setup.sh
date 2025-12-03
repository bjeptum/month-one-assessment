#!/bin/bash
yum update -y
yum install -y postgresql15 postgresql15-server
postgresql-setup initdb
systemctl start postgresql
systemctl enable postgresql
sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD 'yourpassword';"
echo "listen_addresses = '*'" >> /var/lib/pgsql/data/postgresql.conf
echo "host all all 0.0.0.0/0 md5" >> /var/lib/pgsql/data/pg_hba.conf
systemctl restart postgresql