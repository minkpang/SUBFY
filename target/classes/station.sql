drop table if exists station;

CREATE TABLE station(
   station_id  int primary key auto_increment, 
   authority     VARCHAR(15) DEFAULT NULL
  ,line_number   VARCHAR(20) NOT NULL
  ,station_name  VARCHAR(20) NOT NULL
  ,jibun_address VARCHAR(30) DEFAULT NULL
  ,doro_address  VARCHAR(30) DEFAULT NULL
  ,dong VARCHAR(10) DEFAULT NULL
);

-- 지하철 역 검색
select * from station;
-- where station_name like CONCAT('%', '신촌', '%');

-- 동 이름 추가하기
set sql_safe_updates=0;
update station set dong = substring_index(substring_index(jibun_address, " ", 3), " ", -1 )
where substring_index(substring_index(jibun_address, " ", 3), " ", -1 ) like CONCAT('%', '동', '%');
update station set dong = substring_index(substring_index(jibun_address, " ", 4), " ", -1 )
where substring_index(substring_index(jibun_address, " ", 4), " ", -1 ) like CONCAT('%', '동', '%');

select * from station;

select dong from station where station_name = '신촌' or station_name = '신촌역';

-- select dong from station where station_name = '신촌' or station_name = '신촌역';

-- 지하철역 이름으로 건물 거래 정보 검색
select *
from housedeal as hd
join station as st
on hd.dong = st.dong
where station_name = '신촌' or station_name = concat('신촌', '역');

select * from housedeal;

select dong from station where station_name = '신촌' or station_name = '신촌역';

