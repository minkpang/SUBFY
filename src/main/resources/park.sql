
-- 같은 동에 있는 공원들 찾기

select * from station;
select * from park;

-- 지하철역 이름으로 건물 거래 정보 검색 & 같은 동에 있는 공원 정보
SELECT hd.no, hd.dong, hd.AptName, hd.jibun, hi.lat, hi.lng, hd.dealAmount, 
hd.dealYear, hd.dealMonth, hd.dealDay, hd.area, hd.floor, hd.type, hd.rentMoney,
st.lineNumber, st.stationName, st.jibunAddress, st.doroAddress, st.stationLat, st.stationLng, 
 6371 * acos( cos( radians(hi.lat) ) * cos( radians( st.stationLat ) )
          * cos( radians( st.stationLng ) - radians(hi.lng) )
          + sin( radians(hi.lat) ) * sin( radians( st.stationLat ) ) ) AS stationDistance,
pk.parkName, pk.parkType, pk.parkDoroAddress, pk.parkJibunAddress, pk.parkLat, pk.parkLng, pk.parkArea,
6371 * acos( cos( radians(hi.lat) ) * cos( radians( pk.parkLat ) )
          * cos( radians( pk.parkLng ) - radians(hi.lng) )
          + sin( radians(hi.lat) ) * sin( radians( pk.parkLat ) ) ) AS parkDistance          
from houseinfo as hi
join housedeal as hd
on hi.AptName = hd.AptName and hi.dong = hd.dong
join station as st
on hd.dong = st.dong
join park as pk
on hd.dong = pk.dong
where st.stationName = '성수' or st.stationName like concat('성수', '%')
group by hd.AptName
order by stationDistance, AptName, parkDistance;

-- where st.stationName = '건대' or st.stationName like concat('건대', '%')

-- 동 이름으로 검색 & 같은 동에 있는 지하철 정보 & 같은 동에 있는 공원 정보
SELECT hd.no, hd.dong, hd.AptName, hd.code, hd.buildYear, hd.jibun, hi.lat, hi.lng, hi.img, hd.dealAmount, hd.buildYear, 
hd.dealYear, hd.dealMonth, hd.dealDay, hd.area, hd.floor, hd.type, hd.rentMoney, 
st.lineNumber, st.stationName, st.jibunAddress, st.doroAddress, st.stationLat, st.stationLng,
 6371 * acos( cos( radians(hi.lat) ) * cos( radians( st.stationLat ) )
          * cos( radians( st.stationLng ) - radians(hi.lng) )
          + sin( radians(hi.lat) ) * sin( radians( st.stationLat ) ) ) AS stationDistance,
pk.parkName, pk.parkType, pk.parkDoroAddress, pk.parkJibunAddress, pk.parkLat, pk.parkLng, pk.parkArea,
6371 * acos( cos( radians(hi.lat) ) * cos( radians( pk.parkLat ) )
          * cos( radians( pk.parkLng ) - radians(hi.lng) )
          + sin( radians(hi.lat) ) * sin( radians( pk.parkLat ) ) ) AS parkDistance
FROM houseinfo hi
join housedeal hd
on hi.AptName = hd.AptName and hi.dong = hd.dong
join station as st
on hi.dong = st.dong
join park as pk
on hd.dong = pk.dong
WHERE hi.dong like CONCAT('%', '행당', '%')
order by stationDistance, AptName, parkDistance;


-- 아파트 이름으로 검색 & 지하철 정보 & 같은 동에 있는 공원 정보
SELECT hd.no, hd.dong, hd.AptName, hd.code, hd.buildYear, hd.jibun, hi.lat, hi.lng, hi.img, hd.dealAmount, hd.buildYear, 
hd.dealYear, hd.dealMonth, hd.dealDay, hd.area, hd.floor, hd.type, hd.rentMoney, 
st.lineNumber, st.stationName, st.jibunAddress, st.doroAddress, st.stationLat, st.stationLng,
 6371 * acos( cos( radians(hi.lat) ) * cos( radians( st.stationLat ) )
          * cos( radians( st.stationLng ) - radians(hi.lng) )
          + sin( radians(hi.lat) ) * sin( radians( st.stationLat ) ) ) AS stationDistance,
pk.parkName, pk.parkType, pk.parkDoroAddress, pk.parkJibunAddress, pk.parkLat, pk.parkLng, pk.parkArea,
6371 * acos( cos( radians(hi.lat) ) * cos( radians( pk.parkLat ) )
          * cos( radians( pk.parkLng ) - radians(hi.lng) )
          + sin( radians(hi.lat) ) * sin( radians( pk.parkLat ) ) ) AS parkDistance          
FROM houseinfo hi
join housedeal hd
on hi.AptName = hd.AptName and hi.dong = hd.dong
join station as st
on hi.dong = st.dong
join park as pk
on hd.dong = pk.dong
WHERE hi.AptName like CONCAT('%', '풍림', '%')
order by stationDistance, AptName, parkDistance;