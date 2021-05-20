-- qna 테이블 생성
drop table qna;

create table qna(
    id       int    primary key auto_increment,
    author 	 varchar(20)  not null,
    title    varchar(20)  not null,
    content  varchar(4000) NOT NULL,
    wdate     date   
);

insert into qna (author, title, content, wdate) 
            values ('kimssafy', 'qna 게시글 1','게시글 내용', now());

insert into qna (author, title, content, wdate) 
          values ('kimssafy','qna 게시글 2','게시글 내용', now());

insert into qna (author, title, content, wdate) 
          values ('hongssafy','qna 게시글 3','게시글 내용333', now()); 

insert into qna (author, title, content, wdate) 
          values ('hongssafy','qna 게시글 4','content 44444', now()); 
 
commit;

select * from qna;
