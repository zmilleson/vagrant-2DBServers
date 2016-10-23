/* Sanitize the password values using the hashed username for development */
UPDATE user_data SET password = (SELECT md5(username));

/* Sanitize the email values for development */
UPDATE user_data SET email = 'sani+username' || id || '@gmail.com';

/* Sanitize the phone values for development */
UPDATE user_data SET phone = translate(phone, '1234567890', '2114577038');