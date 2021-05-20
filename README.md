# 프로젝트 개요
| PJT명    | HappyHouse Project                   |
| -------- | ------------------------------------ |
| 단계명   | Web Vue PJT]                         |
| 진행일자 | 2021.05.18                           |
| 진행자   | 서울 11반 김주현<br>서울 11반 박민광 |



# 산출목 목록

## 1. HappyHouse 수정된 요구사항 목록

- [요구사항정의서.docx](https://lab.ssafy.com/j828h/07_happyhouse_vue/blob/master/%EC%82%B0%EC%B6%9C%EB%AC%BC/%EC%9A%94%EA%B5%AC%EC%82%AC%ED%95%AD%EC%A0%95%EC%9D%98%EC%84%9C.docx)
- [요구사항정의서.pdf](https://lab.ssafy.com/j828h/07_happyhouse_vue/blob/master/%EC%82%B0%EC%B6%9C%EB%AC%BC/%EC%9A%94%EA%B5%AC%EC%82%AC%ED%95%AD%EC%A0%95%EC%9D%98%EC%84%9C.pdf)

## 2. HappyHouse 실행 화면 캡쳐

1. [전체 목록](https://lab.ssafy.com/j828h/07_happyhouse_vue/blob/master/%EC%82%B0%EC%B6%9C%EB%AC%BC/01_%EC%A0%84%EC%B2%B4%EB%AA%A9%EB%A1%9D.JPG)
2. [등록](https://lab.ssafy.com/j828h/07_happyhouse_vue/blob/master/%EC%82%B0%EC%B6%9C%EB%AC%BC/02_%EB%93%B1%EB%A1%9D.JPG)
3. [상세 페이지](https://lab.ssafy.com/j828h/07_happyhouse_vue/blob/master/%EC%82%B0%EC%B6%9C%EB%AC%BC/03_%EC%83%81%EC%84%B8%ED%8E%98%EC%9D%B4%EC%A7%80.JPG)
4. [수정](https://lab.ssafy.com/j828h/07_happyhouse_vue/blob/master/%EC%82%B0%EC%B6%9C%EB%AC%BC/04_%EC%88%98%EC%A0%95.JPG)
5. [삭제](https://lab.ssafy.com/j828h/07_happyhouse_vue/blob/master/%EC%82%B0%EC%B6%9C%EB%AC%BC/05_%EC%82%AD%EC%A0%9C.JPG)
6. [제목으로 게시글 검색](https://lab.ssafy.com/j828h/07_happyhouse_vue/blob/master/%EC%82%B0%EC%B6%9C%EB%AC%BC/06_%EC%A0%9C%EB%AA%A9%EA%B2%80%EC%83%89.JPG)
7. [내용으로 게시글 검색](https://lab.ssafy.com/j828h/07_happyhouse_vue/blob/master/%EC%82%B0%EC%B6%9C%EB%AC%BC/07_%EB%82%B4%EC%9A%A9%EA%B2%80%EC%83%89.JPG)



##  3. 프로젝트 파일 (기본 필수 기능)

> HappyHouse 프로젝트의 QnA 게시판을 Vue를 활용하여 SPA구조로 설계하고 구현한다.

- [Front-End (Vuex) ](https://lab.ssafy.com/j828h/07_happyhouse_vue/tree/master/Vue)
- Back-End(Spring Boot)

    | 분류                          | Mapper Class                                                 | Service Class                                                |
    | ----------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
    | 게시글 등록/ 읽기/ 수정/ 삭제 | [`QnaMapper.java`](https://lab.ssafy.com/j828h/07_happyhouse_vue/blob/master/src/main/java/com/ssafy/happyhouse/model/mapper/QnaMapper.java)<br />cf> [`mapper/qna.xml`](https://lab.ssafy.com/j828h/07_happyhouse_vue/blob/master/src/main/resources/mapper/qna.xml) | [`QnaService.java`](https://lab.ssafy.com/j828h/07_happyhouse_vue/blob/master/src/main/java/com/ssafy/happyhouse/model/service/QnaService.java)<br />[`QnaServiceImpl.java`](https://lab.ssafy.com/j828h/07_happyhouse_vue/blob/master/src/main/java/com/ssafy/happyhouse/model/service/QnaServiceImpl.java) |

