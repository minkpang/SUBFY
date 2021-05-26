drop table if exists station;

CREATE TABLE station(
   stationId  int primary key auto_increment, 
   authority     VARCHAR(15) DEFAULT NULL
  ,lineNumber   VARCHAR(20) NOT NULL
  ,stationName  VARCHAR(20) NOT NULL
  ,jibunAddress VARCHAR(30) DEFAULT NULL
  ,doroAddress  VARCHAR(30) DEFAULT NULL
  ,dong VARCHAR(10) DEFAULT NULL
);

-- 우이신설
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('우이신설','우이신설','북한산우이','서울특별시 강북구 우이동 16-20',NULL);
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('우이신설','우이신설','솔밭공원','서울특별시 강북구 우이동 57-28',NULL);
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('우이신설','우이신설','4.19민주묘지','서울특별시 강북구 우이동 72-186',NULL);
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('우이신설','우이신설','가오리','서울특별시 강북구 수유동 338-46',NULL);
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('우이신설','우이신설','화계','서울특별시 강북구 수유동 472-677',NULL);
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('우이신설','우이신설','삼양','서울특별시 강북구 미아동 791-4703','서울특별시 강북구 미아동 삼양로');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('우이신설','우이신설','삼양사거리','서울특별시 강북구 미아동 745-142',NULL);
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('우이신설','우이신설','솔샘','서울특별시 강북구 미아동 1353-20',NULL);
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('우이신설','우이신설','북한산보국문','서울특별시 성북구 정릉동 286-19',NULL);
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('우이신설','우이신설','정릉','서울특별시 성북구 정릉동 139-80',NULL);
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('우이신설','우이신설','성신여대입구','서울특별시 성북구 동선동4가 1번지','서울특별시 성북구 동소문로 102');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('우이신설','우이신설','보문','서울특별시 성북구 보문동1가 127-1번지','서울 성북구 보문로 지하 116');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('우이신설','우이신설','신설동','서울특별시 동대문구 신설동 76-5','서울특별시 동대문구 왕산로 1');

-- 1호선
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','소요산','경기도 동두천시 상봉암동 126-3','경기도 동두천시 평화로 2925');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','동두천','경기도 동두천시 동두천동 245-210','경기도 동두천시 평화로 2687');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','보산','경기도 동두천시 보산동 422','경기도 동두천시 평화로 2539');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','동두천중앙','경기도 동두천시 생연동 726-3','경기도 동두천시 동두천로 228');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','지행','경기도 동두천시 지행동 424-1','경기도 동두천시 평화로 2285');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','덕정','경기도 양주시 덕정동 350-14','경기도 양주시 화합로 1356');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','덕계','경기도 양주시 덕계동 209-5','경기도 양주시 고덕로 139번길 317');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','양주','경기도 양주시 남방동 94-1','경기도 양주시 평화로 919');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','녹양','경기도 의정부시 녹양동 96-1','경기도 의정부시 평화로 757');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','가능','경기도 의정부시 가능동 197-1','경기도 의정부시 평화로 633');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','의정부','경기도 의정부시 의정부동 168-54','경기도 의정부시 평화로 525');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','회룡','경기도 의정부시 호원동 50-5','경기도 의정부시 평화로 363');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','망월사','경기도 의정부시 호원동 50-5','경기도 의정부시 평화로 221');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','도봉산','서울특별시 도봉구 도봉동 18-1','서울특별시 도봉구 도봉로 964-33');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','도봉','서울특별시 도봉구 도봉동 639','서울특별시 도봉구 도봉로 170길 2');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','방학','서울특별시 도봉구 방학동 728','서울특별시 도봉구 도봉로 150다길 3');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','창동','서울특별시 도봉구 창동 135-1','서울특별시 도봉구 마들로11길 77');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','녹천','서울특별시 도봉구 창동 57-11','서울특별시 도붕구 덕릉로 376');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','월계','서울특별시 노원구 월계동 263-1','서울특별시 노원구 월계로53길 40');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','광운대','서울특별시 노원구 월계동 85','서울특별시 노원구 석계로 98-2');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','석계','서울특별시 노원구 월계동 36-4','서울특별시 노원구 화랑로 341');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','신이문','서울특별시 동대문구 이문동 7','서울특별시 동대문구 한천로 472');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','외대앞','서울특별시 동대문구 이문동 360-5','서울특별시 동대문구 휘경로 27');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','회기','서울특별시 동대문구 휘경동 317-101','서울특별시 동대문구 회기로 196');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','남영','서울특별시 용산구 갈월동 96-1','서울특별시 용산구 한강대로77길 25');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','용산','서울특별시 용산구 한강로3가 40-999','서울특별시 용산구 한강대로23길 55');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','노량진','서울특별시 동작구 노량진동 67-2','서울특별시 동작구 노량진로 151');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','대방','서울특별시 영등포구 신길동 1368-3','서울특별시 영등포구 여의대방로 300');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','신길','서울특별시 영등포구 신길동 41-1','서울특별시 영등포구 영등포로 327');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','영등포','서울특별시 영등포구 영등포동 618-496','서울특별시 영등포구 경인로 846');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','신도림','서울특별시 구로구 신도림동 460-26','서울특별시 구로구 새마로 지하117-21');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','구로','서울특별시 구로구 구로동 585-3','서울특별시 구로구 구로중앙로 174');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','구일','서울특별시 구로구 구로동 636-45','서울특별시 구로구 구일로 133');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','개봉','서울특별시 구로구 개보동 415','서울특별시 구로구 경인로40길 47');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','오류동','서울특별시 구로구 오류동 66','서울특별시 구로구 경인로 20길 13');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','온수','서울특셜시 구로구 온수동 51-7','서울특별시 구로구 부일로 872');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','역곡','경기도 부천시 원미곡 역곡동 382','경기도 부천시 원미구 역곡로 1');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','소사','경기도 부천시 소사구 소사본동 395','경기도 부천시 소사구 소사로 272');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','부천','경기도 부천시 소사구 심곡본동 316-2','경기도 부천시 소사구 부천로 1');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','중동','경기도 부천시 소사구 송내동 632','경기도 부천시 소사구 중동로 73');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','송내','경기도 부천시 소사구 송내동 632-4','경기도 부천시 소사구 송내대로 43');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','부개','인천광역시 부평구 부개동 468','인천광역시 부평구 수변로 22');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','부평','인천광역시 부평구 부평동 738-21','인천광역시 부평구 광장로 16');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','백운','인천광역시 부평구 십정동 541-1','인천광역시 부평구 마장로 55번길 14');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','동암','인천광역시 부평구 십정동 541-1','인천광역시 부평구 동암광장로 10');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','간석','인천광역시 남동구 간석동 757','인천광역시 남동구 석정로 522-14');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','주안','인천광역시 남구 주안동 125','인천광역시 남구 주안로 95-19');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','도화','인천광역시 남구 도화동 668','인천광역시 남구 숙골로 24번길 9');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','제물포','인천광역시 남구 숭의동 450-39','인천광역시 남구 경인로 129');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','도원','인천광역시 동구 창영동 179-1','인천광역시 동구 참외전로 245');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','동인천','인천광역시 중구 인현동 1-613','인천광역시 중구 참외전로 121');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','인천','인천광역시 중구 북성동1가 3-1','인천광역시 중구 제물량로 269');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','가산디지털단지','서울특별시 금천구 가산동 468-4','서울특별시 금천구 벚꽃로 309');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','독산','서울특별시 금천구 가산동 717','서울특별시 금천구 벚꽃로 115');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','금천구청','서울특별시 금천구 시흥동 113-55','서울특별시 금천구 시흥대로 63길 91');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','광명',NULL,'경기도 광명시 광명역로 21 광명역');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','석수','경기도 안양시 만악구 석수동 737','경기도 안양시 만안구 경수대로 1431');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','관악','경기도 안양시 만악구 석수동 101-16','경기도 안양시 만안구 경수대로 1273번길 46');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','안양','경기도 안양시 만안구 안양동 88-1','경기도 안양시 만안구 만안로 232');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','명학','경기도 안양시 만안구 안양동 1163-1','경기도 안양시 만안구 만안로 20');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','금정','경기도 군포시 금정동 613','경기도 군포시 군포로 750');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','군포','경기도 군포시 당동 134-1','경기도 군포시 군포역1길 27');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','당정','경기도 군포시 당정동 938','경기도 구노시 당정역로 91');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','의왕','경기도 의왕시 삼동 191','경기도 의왕시 철도박물관로 66');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','성균관대','경기도 수원시 장안구 율전동 495-2','경기도 수원시 장안구 서부로 2149');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','화서','경기도 수원시 팔달구 화서동 464','경기도 수원시 팔달구 덕영대로 692');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','수원','경기도 수원시 팔달구 매산로1가 18','경기도 수원시 팔달구 덕영대로 924');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','세류','경기도 수원시 권선구 장지동 25-4','경기도 수원시 권선구 정조로 393-1');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','병점','경기도 화성시 진암동 824-1','경기도 화성시 떡전골로 97');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','서동탄','경기도 오산시 외삼미동 242','경기도 오산시 외삼미로 15번길 75-60');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','세마','경기도 오산시 세교동 244-5','경기도 오산시 세마역로 88');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','오산대','경기도 오산시 수청동 435-1','경기도 오산시 청학로 236');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','오산','경기도 오산시 오산동 603-116','경기도 오산시 역광장로 59');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','진위','경기도 평택시 진위면 하북리 139-3','경기도 평택시 진위면 경기대로 1855');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','송탄','경기도 평택시 신장동 257-5','경기도 평택시 송탄공원로 43');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','서정리','경기도 평택시 서정동 427-53','경기도 평택시 탄현로 51');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','지제','경기도 평택시 지제동 559-4','경기도 평택시 경기대로 777');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','평택','경기도 평택시 평택동 185-579','경기도 평택시 평택로 51');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','성환','충청남도 천안시 서북구 성환읍 성환리 449-128','충청남도 천안시 서북구 성환읍 성환1로 237-5');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','직산','충청남도 천안시 서북구 직산읍 모시리 58-11','충청남도 천안시 서북구 직산읍 천안대로 1471-33');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','두정','충청남도 천안시 서북구 두정동 84-1','충청남도 천안시 서북구 두정로 289');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','천안','충청남도 천안시 동남구 대흥동 57-1','충청남도 천안시 동남구 대흥로 239');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','봉명','충청남도 천안시 동남구 봉명동 20-2','충청남도 천안시 동남구 차돌로 51');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','쌍용(나사렛대)','충청남도 천안시 서북구 쌍용동 426-3','충청남도 천안시 서북구 쌍용19로 20');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','아산','충청남도 아산시 배방읍 장재리 268','충청남도 아산시 배방읍 희망로 90');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','배방','충청남도 아산시 배방읍 구령리 148-2','충청남도 아산시 배방읍 온천대로 1967');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','온양온천','충청남도 아산시 온천동 56-9','충청남도 아산시 온천대로 1496');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('코레일','1호선','신창(순천향대)','충청남도 아산시 신창면 행목리 346-49','충청남도 아산시 신창면 행목로 50');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','1호선','청량리(서울시립대입구)','서울특별시 동대문구 왕산로 328-1','서울특별시 동대문구 왕산로 지하 205');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','1호선','제기동','서울특별시 동대문구 제기동 65','서울특별시 동대문구 왕산로 지하 93');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','1호선','신설동','서울특별시 동대문구 신설동 76-5','서울특별시 동대문구 왕산로 지하 1');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','1호선','동묘앞','서울특별시 종로구 숭인동 117','서울특별시 종로구 종로 359');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','1호선','동대문','서울특별시 종로구 창신동 492-1','서울특별시 종로구 종로 지하 302');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','1호선','종로5가','서울특별시 종로구 종로5가 82-1','서울특별시 종로구 종로 지하 216');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','1호선','종로3가','서울특별시 종로구 종로3가 10-5','서울특별시 종로구 종로 지하 129');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','1호선','종각','서울특별시 종로구 종로1가 54','서울특별시 종로구 종로 지하 55');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','1호선','시청','서울특별시 중구 정동 5-5','서울특별시 세종대로 지하 101');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','1호선','서울역','서울특별시 중구 남대문로5가 73-6','서울특별시 세종대로 지하 2');

-- 2호선
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','시청','서울특별시 중구 서소문동 90-1','서울특별시 중구 서소문로 지하 127');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','을지로입구','서울특별시 중구 을지로3가 347-3','서울특별시 중구 을지로 지하 42');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','을지로3가','서울 중구 을지로3가 70-1','서울특별시 중구 을지로 지하 106');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','을지로4가','서울특별시 중구 을지로4가 267-1','서울특별시 중구 을지로 지하 178');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','동대문역사문화공원','서울특별시 중구 을지로7가 112-3','서울특별시 중구 을지로 지하 279');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','신당','서울특별시 중구 신당동 99','서울특별시 중구 퇴계로 지하 431-1');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','상왕십리','서울특별시 성동구 하왕십리동 946-14','서울특별시 성동구 왕십리로 지하 374');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','왕십리','서울특별시 성동구 행당동 192','서울특별시 성동구 왕십리로 지하 300');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','한양대','서울특별시 성동구 행당동 산17','서울특별시 성동구 왕십리로 206');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','뚝섬','서울특별시 성동구 성수동1가 656-745','서울특별시 성동구 아차산로 18');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','성수','서울특별시 성동구 성수동2가 300-1','서울특별시 성동구 아차산로 100');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','건대입구','서울특별시 광진구 화양동 7-3','서울특별시 광진구 아차산로 243');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','구의(광진구청)','서울특별시 광진구 구의동 245-24','서울특별시 광진구 아차산로 384-1');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','강변(동서울터미널)','서울특별시 광진구 구의동 546-6','서울특별시 광진구 강변역로 53');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','잠실나루','서울특별시 송파구 신천동 15','서울특별시 송파구 오금로 20');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','잠실(송파구청)','서울특별시 송파구 잠실동 8','서울특별시 송파구 올림픽로 지하 265');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','잠실새내','서울특별시 송파구 잠실동 33','서울특별시 송파구 올림픽로 지하 140');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','종합운동장','서울특별시 송파구 잠실동 122','서울특별시 송파구 올림픽로 지하 23');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','삼성(무역센터)','서울특별시 강남구 삼성동 172-66','서울특별시 강남구 테헤란로 지하 538');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','선릉','서울특별시 강남구 삼성동 172-66','서울특별시 강남구 테헤란로 지하 340');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','역삼','서울특별시 강남구 역삼동 804','서울특별시 강남구 테헤란로 지하 156');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','강남','서울특별시 강남구 역삼동 858','서울특별시 강남구 강남대로 지하 396');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','교대(법원·검찰청)','서울특별시 서초구 서초동 1748-4','서울특별시 서초구 서초대로 지하 294');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','서초','서울특별시 서초구 서초동 1748-5','서울특별시 서초구 서초대로 지하 233');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','방배','서울특별시 서초구 방배동 912-14','서울특별시 서초구 방배로 지하 80');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','사당','서울특별시 동작구 사당동 1129','서울특별시 동작구 남부순환로 지하 2089');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','낙성대','서울특별시 관악구 봉천동 1693-39','서울특별시 관악구 남부순환로 지하 1928');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','서울대입구(관악구청)','서울특별시 관악구 봉천동 979-2','서울특별시 관악구 남부순환로 지하 1822');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','봉천','서울특별시 관악구 봉천동 979-7','서울특별시 관악구 남부순환로 지하 1721');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','신림','서울특별시 관악구 신림동 1467-10','서울특별시 관악구 남부순환로 지하 1614');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','신대방','서울특별시 동작구 신대방동 643-1','서울특별시 동작구 대림로 2');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','구로디지털단지','서울특별시 구로구 구로동 810-3','서울특별시 구로구 도림천로 477');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','대림(구로구청)','서울특별시 구로구 구로동 1204','서울특별시 구로구 도림천로 351');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','신도림','서울특별시 구로구 신도림동 460-26','서울특별시 구로구 새말로 지하117-21');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','문래','서울특별시 영등포구 문래동3가 68-1','서울특별시 영등포구 당산로 지하 28');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','영등포구청','서울특별시 영등포구 당산동3가 270-1','서울특별시 영등포구 당산로 121');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','당산','서울특별시 영등포구 당산동6가 323-1','서울특별시 영등포구 당산로 229');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','합정','서울특별시 마포구 서교동 393','서울특별시 마포구 양화로 지하 55');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','홍대입구','서울특별시 마포구 동교동 165','서울특별시 마포구 양화로 지하160');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','신촌','서울특별시 마포구 노고산동 31-11','서울특별시 마포구 신촌로 지하 90');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','이대','서울특별시 마포구 염리동 8-85','서울특별시 마포구 신촌로 지하180');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','아현','서울특별시 마포구 아현동 354-23','서울특별시 마포구 신촌로 지하 270');
INSERT INTO station(authority,lineNumber,stationName,jibunAddress,doroAddress) VALUES ('서울교통공사','2호선','충정로(경기대입구)','서울특별시 서대문구 충정로3가 319-1','서울특별시 서대문구 서소문로 지하 17');

-- 동 이름 추가하기
set sql_safe_updates=0;
update station set dong = substring_index(substring_index(jibunAddress, " ", 3), " ", -1 )
where substring_index(substring_index(jibunAddress, " ", 3), " ", -1 ) like CONCAT('%', '동', '%');
update station set dong = substring_index(substring_index(jibunAddress, " ", 4), " ", -1 )
where substring_index(substring_index(jibunAddress, " ", 4), " ", -1 ) like CONCAT('%', '동', '%');

commit;
