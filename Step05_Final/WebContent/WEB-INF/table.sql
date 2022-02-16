
-- 사용자(회원) 정보를 저장할 테이블
create table users(
	id varchar2(100) primary key,
	pwd varchar2(100) not null,
	email varchar2(100),
	profile varchar2(100),--프로필 이미지 경로를 저장할 칼럼
	regdate date
);

-- 게시글을 저장할 테이블
create table board_cafe(
	num NUMBER PRIMARY KEY,
	WRITER VARCHAR2(100) NOT NULL,
	TITLE VARCHAR2(100) NOT NULL,
	CONTENT CLOB,--글 내용
	VIEWCOUNT NUMBER,-- 조회수
	REGDATE DATE-- 글 작성일
);

--게시글의 번호를 얻어낼 시퀀스
CREATE SEQUENCE BOARD_CAFE_SEQ;

-- 업로드된 파일의 정보를 저장할 테이블
CREATE TABLE board_file(
   num NUMBER PRIMARY KEY,
   writer VARCHAR2(100) NOT NULL,
   title VARCHAR2(100) NOT NULL,
   orgFileName VARCHAR2(100) NOT NULL, -- 원본 파일명
   saveFileName VARCHAR2(100) NOT NULL, -- 서버에 실제로 저장된 파일명
   fileSize NUMBER NOT NULL, -- 파일의 크기 
   regdate DATE
);

CREATE SEQUENCE board_file_seq;

-- 이미지 겔러리를 만들기 위한 테이블 
CREATE TABLE board_gallery(
   num NUMBER PRIMARY KEY,
   writer VARCHAR2(100),
   caption VARCHAR2(100), -- 이미지에 대한 설명
   imagePath VARCHAR2(100), -- 업로드된 이미지의 경로  ex) /upload/xxx.jpg
   regdate DATE -- 이미지 업로드 날짜 
);

CREATE SEQUENCE board_gallery_seq;