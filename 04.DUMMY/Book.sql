-- tblBook
-- 교재 테이블, 12개+42개 = 54개 
-- bookSeq = 교재 번호
-- SubjectSeq = 개설 과목번호
-- bookName = 교재 이름
-- publisher = 출판사 이름


--[공통과목 9개] 
--프로그래밍 언어활용
--개설과목번호 1
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 1, '이것이 자바다', '한빛미디어');

--데이터베이스 구현
--개설과목번호 2
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 2, '오라클 SQL과 PL/SQL', '생능출판사');

--JSP 웹 프로그래밍
--개설과목번호3 , 교재 2개 
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 3, '최범균의 JSP 2.3 웹 프로그래밍 : 기초부터 중급까지', '가메출판사');

--응용SW 기초기술 활용
--개설과목번호4
insert into tblBook(bookseq ,SubjectSeq, bookname, publisher) values (seqBook.nextVal,  4, 'Java의 정석', '도우출판');

--요구사항 확인
--개설과목번호5
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 5, '[자체제작]요구사항 확인 모듈교재', '쌍용출판');

--UI구현 및 테스트
--개설과목번호6
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 6, '[자체제작]UI구현 및 테스트 모듈교재', '쌍용출판');

--애플리케이션 통합구현
--개설과목번호7
insert into tblBook(bookseq ,SubjectSeq, bookname, publisher) values (seqBook.nextVal, 7 ,'[자체제작]애플리케이션 통합구현 모듈교재', '쌍용출판');

--애플리케이션 테스트 관리
--개설과목번호8
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 8, '[자체제작]애플리케이션 테스트 수행 모듈교재', '쌍용출판');

--애플리케이션 배포
--개설과목번호 9
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 9, '[자체제작]애플리케이션 배포 모듈교재', '쌍용출판');

---------------------------------------------------------------------------------------------------------------------------

-- [선택과목 32개 ]
-- 'Back-end개발'
-- 과목번호 10
insert into tblBook(bookseq ,SubjectSeq,  bookname, publisher) values (seqBook.nextVal, 10 ,'깔끔한 파이썬 탄탄한 백엔드', ' 비제이퍼블릭(BJ퍼블릭)');

--Python프로그래밍
--과목번호 11
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 11, 'Do it! 점프 투 파이썬 ', '이지스퍼블리싱');


--'웹 표준(HTML, CSS, 자바스크립트)'
-- 과목번호 12
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 12, 'Do it! HTML+CSS+자바스크립트 웹 표준의 정석 ', '이지스퍼블리싱');


--'Framework(myBATIS, Spring)'
--과목번호 13 
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 13, '스프링 퀵 스타트', '루비페이퍼');


--'머신러닝 기반 데이터 분석(파이썬)'
-- 과목번호 14 - 교재 2개 
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 14, '파이썬 머신러닝 완벽 가이드', '위키북스');


--'웹 서버 구축 실무(HTML5, CSS5)'
--과목번호 15
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 15, 'Do it! HTML5+CSS3 웹 표준의 정석', '이지스퍼블리싱');



--'Server와 Client' 
--과목번호 16 - 교재 2개 
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 16, '모던 웹을 위한 JavaScript + jQuery 입문', '한빛미디어');


--'빅데이터 수집시스템 개발'
--과목번호 17
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 17, '데이터 분석을 위한 파이썬 철저 입문[개정판]', '워커북스');

--'R Fundamentals Application(hadoop, Linux, R(데이터마이닝))' 
--과목번호 18
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 18, 'R과 하둡을 이용한 빅데이터 분석 : 빅데이터 처리를 위한 이상적인 솔루션 (acorn+PACKT 시리즈)', '에이콘출판');


--'웹 개발(HTML5, CSS3, JavaScript, JQuery)'
--과목번호19
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 19, '생활코딩! HTML+CSS+자바스크립트', '위키북스');

--'반응형 웹 사이트 만들기'
--과목번호20
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 20,  'Do it! 반응형 웹 만들기 실무자가 꼭 알아야 할 최신 반응형 웹 기술을 한 권에!','이지스퍼블리싱');

--'웹 클라이언트 프로그래밍 (HTML, CSS3, JavaScript, JQuery)'
--과목번호21
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 21, '차세대 웹 프로그래밍 : HTML5+CSS3+JavaScript', '한빛아카데미');

--'Spring 개발'
--과목번호22
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 22, '스프링 부트로 배우는 자바 웹 개발 ', '제이펍');

-- 'Spring Framework 통합 구현'
--과목번호23
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 23,'배워서 바로 쓰는 스프링 프레임워크', '한빛미디어');

--'제이쿼리 모바일'
--과목번호24
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 24, 'jQuery Mobile로 하는 모바일 웹 개발 ', '에이콘출판');

--'코틀린 프로그래밍'
--과목번호25
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 25, '다재다능 코틀린 프로그래밍' , '영진닷컴');

--'안드로이드 Kotlin 앱 프로그래밍' 
--과목번호26
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 26 ,'안드로이드 with Kotlin 앱 프로그래밍 가이드', '아이콕스');

--'Spring 서버 기반의 지능형 웹과 앱 통합개발 및 구현'
--과목번호27
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 27,'스프링 5.0 마이크로서비스 2/e', '에이콘출판');

--'통계 기반 데이터 분석'
--과목번호28
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 28, '데이터 분석을 위한 파이썬 철저 입문[개정판]','워커북스');

--'UML을 사용한 시스템 분석'
--과목번호29
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 29, '객체 지향 설계와 분석을 위한 UML 기초와 응용', '한빛아카데미');

--'시스템 사용자 교육'
--과목번호30
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 30, '정보시스템 이행 모듈교재', '한국출판사');

--'파이썬과 R을 활용한 텍스트 마이닝'
--과목번호31
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 31, '잡아라! 텍스트 마이닝 with 파이썬', '비제이퍼블릭');

--'Tensorflow로 배우는 머신러닝'
--과목번호32
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 32,'머신 러닝 교과서 with 파이썬, 사이킷런, 텐서플로', '길벗');

--'Open API를 활용'
--과목번호33
insert into tblBook(bookseq , SubjectSeq,  bookname, publisher) values (seqBook.nextVal, 33, 'NHN 오픈 API를 활용한 매시업 ', '위키북스');

--'UI/UX 설계'
--과목번호34 
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 34, 'UML로 배우는 시스템 분석 설계', '생능출판사');

--'웹킷 계열 브라우저 반응형 웹 UI/UX 설계'
--과목번호35
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 35, '[자체제작]웹킷 계열 브라우저 반응형 웹 UI/UX설계', '쌍용출판');

--'빅데이터 분석 기획'
--과목번호36
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 36, '빅데이터 기획 및 분석', '크라운출판사');

--'웹 서버 프로그램 구현'
--과목번호37
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 37, 'JSP WEB PROGRAMMING MASTER', '북스홀릭');

--'지능형 웹 알고리즘'
--과목번호38
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 38, '지능형 웹 알고리즘', '위키북스');

--'지능형 웹과 빅데이터 통합 프로젝트'
--과목번호39
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 39,  '[자체제작]지능형 웹과 빅데이터 통합', '쌍용출판');

--'융합기반 웹표준 프로젝트'
--과목번호40
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 40, '[자체제작]융합기반 웹표준 프로젝트', '쌍용출판');

--'반응형 웹 프로그래밍'
--과목번호41
insert into tblBook(bookseq , SubjectSeq, bookname, publisher) values (seqBook.nextVal, 41, 'Do it! 반응형 웹 만들기 실무자가 꼭 알아야 할 최신 반응형 웹 기술을 한 권에!','이지스퍼블리싱');

commit;
