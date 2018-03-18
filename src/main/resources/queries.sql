--
-- Table structure for table ROLE
--

DROP TABLE IF EXISTS ROLE;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE ROLE (
  role_id int(11) NOT NULL AUTO_INCREMENT,
  role varchar(25) DEFAULT NULL,
  PRIMARY KEY (role_id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table USER
--

DROP TABLE IF EXISTS USER;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE USER (
  user_id int(11) NOT NULL AUTO_INCREMENT,
  active int(11) DEFAULT NULL,
  email varchar(25) NOT NULL,
  last_name varchar(25) NOT NULL,
  first_name varchar(25) NOT NULL,
  mobile_no varchar(20) NOT NULL,
  dob varchar(20) NOT NULL,
  gender varchar(1) NOT NULL,
  password varchar(150) NOT NULL,
  password_confirm varchar(150) NOT NULL,
  PRIMARY KEY (user_id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


--
-- Table structure for table USER_ROLE
--

DROP TABLE IF EXISTS USER_ROLE;
CREATE TABLE USER_ROLE (
  user_id int(11) NOT NULL,
  role_id int(11) NOT NULL,
  PRIMARY KEY (user_id,role_id),
  KEY FKa68196081fvovjhkek5m97n3y (role_id),
  CONSTRAINT FK859n2jvi8ivhui0rl0esws6o FOREIGN KEY (user_id) REFERENCES USER (user_id),
  CONSTRAINT FKa68196081fvovjhkek5m97n3y FOREIGN KEY (role_id) REFERENCES ROLE (role_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-------------INSERT roles
INSERT INTO ROLE VALUES (1,'ADMIN');
INSERT INTO ROLE VALUES (2,'USER');

Hibernate: create table role (role_id integer not null auto_increment, role varchar(255), primary key (role_id))
Hibernate: create table user (user_id bigint not null auto_increment, active integer, dob varchar(255) not null, email varchar(255) not null, gender varchar(255), last_name varchar(255) not null, mobile_no varchar(255) not null, name varchar(255) not null, primary key (user_id))
Hibernate: create table user_role (user_id bigint not null, role_id integer not null, primary key (user_id, role_id))
Hibernate: alter table user_role add constraint FKa68196081fvovjhkek5m97n3y foreign key (role_id) references role (role_id)
Hibernate: alter table user_role add constraint FK859n2jvi8ivhui0rl0esws6o foreign key (user_id) references user (user_id)