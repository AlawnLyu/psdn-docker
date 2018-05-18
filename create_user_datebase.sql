
CREATE DATABASE powerdns;

GRANT ALL ON powerdns.* TO 'powerdns'@'localhost' IDENTIFIED BY '123456';

GRANT ALL ON powerdns.* TO 'powerdns'@'%' IDENTIFIED BY '123456';

GRANT SELECT, INSERT, UPDATE, DELETE ON powerdns.* TO 'powermysql'@'%'
 IDENTIFIED BY '123456';

FLUSH PRIVILEGES;