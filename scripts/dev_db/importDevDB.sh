# Create empty database for restore to empty into
echo ""
echo "****Create database 'user_profiles' and user on development server."
echo ""
sudo -u postgres psql -f /vagrant/dev_db/createDB.sql

# Restore backup into database
echo ""
echo "****Restore backed up database from production server."
echo ""
sudo -u postgres psql user_profiles < /vagrant/backups/initial_user_profiles.sql

# Sanitize values
echo ""
echo "****Sanitize password, email, and phone number data in database for development purposes."
echo "" 
sudo -u postgres psql -d user_profiles -f /vagrant/dev_db/sanitizeData.sql
