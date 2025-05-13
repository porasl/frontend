Install mySql

Install java

Import inrik schema

Create inrik database with details bellow


Create a mysql data table ‘inrik’, a user with passwords as bellow


CREATE USER 'andrew'@'localhost' IDENTIFIED BY 'passw0rd';

GRANT ALL PRIVILEGES ON * . * TO 'andrew'@'localhost';


CREATE USER 'inrik'@'localhost' IDENTIFIED BY 'passw0rd!';

GRANT ALL PRIVILEGES ON * . * TO 'inrik'@'localhost';

SHOW GRANTS FOR 'inrik'@'localhost';

ALTER USER 'inrik'@'localhost' IDENTIFIED BY 'password!';

DROP USER 'inrik'@'localhost';

UPDATE DATABASECHANGELOGLOCK SET LOCKED=0, LOCKGRANTED=null, LOCKEDBY=null where ID=1;

insert into user (active, channelname, confirmed, creationdate, fullname, password, phonenumber, token, username)
 values(1,'Inrik channel', 1, '2021-03-06 00:56:50.917000', 'I N R I K', '$2a$10$5CnPhCnru/89wkTHVMzjrulRPBk0PqLIrlxbMXYiFwS02d5DAUFnG', '6502931966', '1XW7QDL9418898', "info@inrik.com");


INSERT INTO configinfo (configName, configValue) VALUES ("imagedir","d:/tools/tomcat9/webapps/storage/images");

INSERT INTO configinfo (configName, configValue) VALUES ("videodir","d:/tools/tomcat9/webapps/storage/videos");

INSERT INTO configinfo (configName, configValue) VALUES ("audiodir","d:/tools/tomcat9/webapps/storage/audios");

INSERT INTO configinfo (configName, configValue) VALUES ("filedir","d:/tools/tomcat9/webapps/storage/files");

INSERT INTO configinfo (configName, configValue) VALUES ("profilepath","d:/tools/tomcat9/webapps/storage/profilepath");

INSERT INTO configinfo (configName, configValue) VALUES ("serverlog","d:/tools/tomcat9/webapps/serverlog");

INSERT INTO configinfo (configName, configValue) VALUES ("defaultChannelIconPath","resources/images/defaultChannelIcon.png");

INSERT INTO configinfo (configName, configValue) VALUES ("ffmpeg","d:/tools/ffmpeg/bin/ffmpeg.exe");

INSERT INTO configinfo (configName, configValue) VALUES ("ffprobe","d:/tools/ffmpeg/bin/ffprobe.exe");

INSERT INTO configinfo (configName, configValue) VALUES ("mail.transport.protocol","smtp");

INSERT INTO configinfo (configName, configValue) VALUES ("mail.host","smtpout.secureserver.net");

INSERT INTO configinfo (configName, configValue) VALUES ("mail.smtp.auth","true");

INSERT INTO configinfo (configName, configValue) VALUES ("mail.user","info@inrik.com");

INSERT INTO configinfo (configName, configValue) VALUES ("mail.password","H2800amid!");


Run docker-compose up -d from the same directory where docker-compose.yml is located.
- Install the Docker Desktop and start it

You can also create a /docker/ folder if you want to separate infra files, and run with docker-compose -f docker/docker-compose.yml up -d.


Start Kafka (docker-compose up) //docker-compose up -d

Start ContentServices (port 8083) to begin listening

Start Frontend (port 8082) and POST a video file to /api/upload

Check that the consumer picks up the message and starts encoding.
















 