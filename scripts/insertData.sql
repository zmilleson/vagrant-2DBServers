/* Create Table */
CREATE TABLE user_data(
    id      SERIAL PRIMARY KEY, 
    username    varchar(50) UNIQUE NOT NULL,
    password    varchar(100) NOT NULL,
    email       varchar(256) UNIQUE NOT NULL,
    phone       varchar(50)
);

/* Install PGCrypto Extension */
CREATE EXTENSION IF NOT EXISTS pgcrypto;

/* Insert sample data into user_data table */
INSERT INTO user_data (username, password, email, phone) VALUES
    ('zmilleson', crypt('NebRules12!', gen_salt('bf',8)), 'zach@get-vm.com', 5559502845),
    ('cbird', crypt('Ch13fs21', gen_salt('bf',8)), 'carly@get-vm.com', 5559502864),
    ('julia01', crypt('jules&Z3d', gen_salt('bf',8)), 'julia@get-vm.com', 5559502383),
    ('bronco31', crypt('Br0ck3r@', gen_salt('bf',8)), 'john@get-vm.com', 5559502468),
    ('vortec', crypt('Ch3vyTrucks1', gen_salt('bf',8)), 'victoria@get-vm.com', 5559501156),
    ('decker', crypt('87Broncos', gen_salt('bf',8)), 'declan@get-vm.com', 5559501235),
    ('manda24', crypt('chatroom1', gen_salt('bf',8)), 'amanda@get-vm.com', 5559509954),
    ('belldozer', crypt('OKl4h0ma', gen_salt('bf',8)), 'belinda@get-vm.com', 5559506412);