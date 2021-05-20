drop table if exists station;

CREATE TABLE station(
   id  int primary key auto_increment, 
   authority     VARCHAR(15) DEFAULT NULL
  ,line_number   VARCHAR(20) NOT NULL
  ,station_name  VARCHAR(20) NOT NULL
  ,jibun_address VARCHAR(30) DEFAULT NULL
  ,doro_address  VARCHAR(30) DEFAULT NULL
);

select * from station;