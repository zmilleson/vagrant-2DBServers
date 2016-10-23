/* Create new role and db */
CREATE ROLE prod_dba WITH LOGIN PASSWORD 'SampleP4ss!' SUPERUSER;
CREATE DATABASE user_profiles;
GRANT ALL PRIVILEGES ON DATABASE user_profiles TO prod_dba;