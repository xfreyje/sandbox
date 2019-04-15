connect sys/manager1 as sysdba

create user sandbox identified by manager1
default tablespace users
temporary tablespace temp;

grant connect, resource to sandbox;

alter user sandbox quota unlimited on users;

exit;
