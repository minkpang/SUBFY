-- drop table if exists station;

-- CREATE TABLE station(
--    station_id  int primary key auto_increment, 
--    authority     VARCHAR(15) DEFAULT NULL
--   ,line_number   VARCHAR(20) NOT NULL
--   ,station_name  VARCHAR(20) NOT NULL
--   ,jibun_address VARCHAR(30) DEFAULT NULL
--   ,doro_address  VARCHAR(30) DEFAULT NULL
--   ,dong VARCHAR(10) DEFAULT NULL
-- );

-- -- 동 이름 추가하기
-- set sql_safe_updates=0;
-- update station set dong = substring_index(substring_index(jibun_address, " ", 3), " ", -1 )
-- where substring_index(substring_index(jibun_address, " ", 3), " ", -1 ) like CONCAT('%', '동', '%');
-- update station set dong = substring_index(substring_index(jibun_address, " ", 4), " ", -1 )
-- where substring_index(substring_index(jibun_address, " ", 4), " ", -1 ) like CONCAT('%', '동', '%');

-- -- 자동 mapping을 위해 컬럼명경
-- alter table station change station_id stationId int;
-- alter table station change line_number lineNumber VARCHAR(20);
-- alter table station change station_name stationName VARCHAR(20);
-- alter table station change jibun_address jibunAddress VARCHAR(30);
-- alter table station change doro_address doroAddress VARCHAR(30);

-- select * from station;

-- select * from station where stationName = '뚝섬' or stationName = '뚝섬역';
-- select * from station where stationName = '성수' or stationName = '성수역';

-- -- select dong from station where station_name = '신촌' or station_name = '신촌역';

-- -- 지하철역 이름으로 건물 거래 정보 검색 
-- select *
-- from housedeal as hd
-- inner join station as st
-- on hd.dong = st.dong
-- where stationName = '성수' or stationName = concat('성수', '역');

-- select * from housedeal where dong like concat("%", "성수", "%"); 
-- -- 38
-- select * from houseinfo where dong like concat("%", "성수", "%"); 
-- -- 38
-- SELECT hi.no as no, hi.dong as dong, hi.AptName as aptName, hi.code as code, hi.jibun as jibun, hd.dealAmount as dealAmount, hi.lat, hi.lng
-- FROM houseinfo hi, housedeal hd
-- WHERE hi.dong like concat("%", "성수", "%")
-- AND hi.no = hd.no
-- ORDER BY AptName;

-- 지하철역 이름으로 건물 거래 정보 검색 & 위도 경도 정보도 join
-- housedeal, houseinfo, station join
SELECT hd.no, hd.dong, hd.AptName, hd.code, hd.buildYear, hd.jibun, hi.lat, hi.lng, hi.img, hd.dealAmount, hd.buildYear, 
hd.dealYear, hd.dealMonth, hd.dealDay, hd.area, hd.floor, hd.type, hd.rentMoney,
st.lineNumber, st.stationName, st.jibunAddress, st.doroAddress, st.stationLat, st.stationLng, 
 6371 * acos( cos( radians(hi.lat) ) * cos( radians( st.stationLat ) )
          * cos( radians( st.stationLng ) - radians(hi.lng) )
          + sin( radians(hi.lat) ) * sin( radians( st.stationLat ) ) ) AS distance
from houseinfo as hi
join housedeal as hd
on hi.AptName = hd.AptName and hi.dong = hd.dong
join station as st
on hd.dong = st.dong
where st.stationName = '성수' or st.stationName = concat('성수', '역')
order by distance, AptName;

-- 동 이름으로 검색
-- housedeal, houseinfo join
SELECT hd.no, hd.dong, hd.AptName, hd.code, hd.buildYear, hd.jibun, hi.lat, hi.lng, hi.img, hd.dealAmount, hd.buildYear, 
hd.dealYear, hd.dealMonth, hd.dealDay, hd.area, hd.floor, hd.type, hd.rentMoney 
FROM houseinfo hi, housedeal hd
WHERE hi.dong like CONCAT('%', '행당', '%')
AND hi.AptName = hd.AptName and hi.dong = hd.dong
ORDER BY hd.AptName;

-- 벽산 아파트 검색
SELECT hd.no, hd.dong, hd.AptName, hd.code, hd.buildYear, hd.jibun, hi.lat, hi.lng, hi.img, hd.dealAmount, hd.buildYear, 
hd.dealYear, hd.dealMonth, hd.dealDay, hd.area, hd.floor, hd.type, hd.rentMoney 
FROM houseinfo hi, housedeal hd
WHERE hi.AptName like CONCAT('%', '벽산', '%')
AND hi.AptName = hd.AptName and hi.dong = hd.dong
ORDER BY hd.AptName;


