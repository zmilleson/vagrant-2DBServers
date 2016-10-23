#!/usr/bin/env bash

##### Deploy Production Database ##### 
# Setup PostgreSQL user & database
echo ""
echo "****Creating database 'user_profiles' and user within PostgreSQL."
echo ""
sudo -u postgres psql -f /vagrant/createProdDB.sql

# Install PGCrypto extension
echo ""
echo "****Install PGCrypto Extension"
echo ""
sudo -u postgres psql -d user_profiles -f /usr/share/postgresql/9.3/extension/pgcrypto--1.0.sql

# Insert sample data into database
echo ""
echo "****Create table, extensions, and insert data into database."
echo ""
sudo -u postgres psql -d user_profiles -f /vagrant/insertData.sql

# Run initial backup
echo ""
echo "****Initial backup of the database to shared storage."
echo ""
sudo -u postgres pg_dump user_profiles > /vagrant/backups/initial_user_profiles.sql

# Schedule backups
echo ""
echo "****Setup scheduled daily backups to be kept for 30 days."
echo ""
sudo cp /vagrant/backupDB.sh /etc/cron.daily/backupDB.sh
sudo chmod +x /etc/cron.daily/backupDB.sh