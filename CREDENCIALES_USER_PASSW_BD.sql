--drop  user SRN_USER cascade;
--drop  TABLESPACE SRN_PROJECT;


CREATE TABLESPACE SRN_PROJECT
		DATAFILE 'SRN_BD.dbf' SIZE 10M REUSE
		AUTOEXTEND ON MAXSIZE UNLIMITED
		EXTENT MANAGEMENT LOCAL
	  	SEGMENT SPACE MANAGEMENT AUTO;

CREATE USER SRN_USER IDENTIFIED BY SRN_USER123
	       DEFAULT TABLESPACE SRN_PROJECT
	       TEMPORARY TABLESPACE TEMP
	       QUOTA UNLIMITED ON SRN_PROJECT;
         
GRANT CREATE SESSION TO SRN_USER;	
GRANT CONNECT TO SRN_USER;
GRANT RESOURCE TO SRN_USER;
GRANT ALL PRIVILEGES  TO SRN_USER;