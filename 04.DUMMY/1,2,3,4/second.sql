-- tblCurriculum, 과정
-- currSeq(과정번호), currName(과정이름), currRegYN(개설과정등록여부), currPeriod(과정기간)

insert into tblCurriculum(currSeq, currName, currRegYN, currPeriod) values (seqCurriculum.nextVal, '자바(Java) n 파이썬(Python)을 활용한 응용SW개발자 양성과정', 'Y', 171);               --1
insert into tblCurriculum(currSeq, currName, currRegYN, currPeriod) values (seqCurriculum.nextVal, '디지털 SW융합 자바 풀스텍 개발자 양성 과정', 'Y', 165);                               --2
insert into tblCurriculum(currSeq, currName, currRegYN, currPeriod) values (seqCurriculum.nextVal, '[빅데이터전문가]스마트 자바,파이썬기반 빅데이터분석 머신러닝활용(A)', 'Y', 186);         --3
insert into tblCurriculum(currSeq, currName, currRegYN, currPeriod) values (seqCurriculum.nextVal, '(디지털컨버전스) 자바(Java) n 스프링(Spring)프레임워크 개발자 양성과정', 'Y', 187);     --4
insert into tblCurriculum(currSeq, currName, currRegYN, currPeriod) values (seqCurriculum.nextVal, '프론트엔드 웹개발자를 위한 자바스크립트,제이쿼리', 'Y', 210);                          --5
insert into tblCurriculum(currSeq, currName, currRegYN, currPeriod) values (seqCurriculum.nextVal, '(디지털컨버전스) 자바 기반 AWS 클라우드 활용 Full-Stack 개발자 양성 과정', 'Y',216);    --6
insert into tblCurriculum(currSeq, currName, currRegYN, currPeriod) values (seqCurriculum.nextVal, '[디지털컨버전스]스마트 자바(JAVA) 안드로이드 웹 n 앱 개발자', 'Y', 200);               --7
insert into tblCurriculum(currSeq, currName, currRegYN, currPeriod) values (seqCurriculum.nextVal, '(스마트웹 n 콘텐츠 개발) 스마트 웹 콘텐츠 응용 SW 개발자 양성과정', 'Y', 170);          --8
insert into tblCurriculum(currSeq, currName, currRegYN, currPeriod) values (seqCurriculum.nextVal, '(빅데이터 분석)파이썬과 R을 활용한 빅데이터 분석 전문가 양성과정', 'Y', 183);           --9
insert into tblCurriculum(currSeq, currName, currRegYN, currPeriod) values (seqCurriculum.nextVal, '(디지털컨버전스)자바(JAVA)기반 디지털컨버전스 응용SW개발자 양성과정', 'Y', 170);       --10
insert into tblCurriculum(currSeq, currName, currRegYN, currPeriod) values (seqCurriculum.nextVal, '[과정평가형] 자바(JAVA)기반 응용SW(정보처리) 개발자 양성', 'Y', 209);               --11
insert into tblCurriculum(currSeq, currName, currRegYN, currPeriod) values (seqCurriculum.nextVal, '자바(JAVA)기반 디지털컨버전스 응용SW개발자 양성과정', 'Y', 194);                    --12
insert into tblCurriculum(currSeq, currName, currRegYN, currPeriod) values (10000, '대기', 'Y', 0);





-- tblSubject, 과목
-- subjectSeq(과목번호), subjectName(과목이름), subjectPeriod(과목기간)


--공통과목/ 90일
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, '프로그래밍 언어활용', 10); -- 1
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, '데이터베이스 구현', 7); -- 2
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, 'JSP 웹 프로그래밍', 9); -- 3
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, '응용SW 기초기술 활용', 4); -- 4
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, '요구사항 확인', 15); -- 5
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, 'UI구현 및 테스트', 12); -- 6
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, '애플리케이션 통합구현', 14); -- 7
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, '애플리케이션 테스트 관리', 12); -- 8
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, '애플리케이션 배포', 7); -- 9

--추가과목
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, 'Back-end개발', 18); -- 10
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, 'Python프로그래밍', 25); -- 11
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, '웹 표준(HTML, CSS, 자바스크립트)', 13); -- 12
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, 'Framework(myBATIS, Spring)', 27); -- 13
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, '머신러닝 기반 데이터 분석(파이썬)', 23); -- 14
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, '웹 서버 구축 실무(HTML5, CSS5)', 15); -- 15
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, 'Server와 Client', 20); --16
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, '빅데이터 수집시스템 개발', 33); -- 17
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, 'R Fundamentals Application(hadoop, Linux, R(데이터마이닝))', 28); -- 18
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, '웹 개발(HTML5, CSS3, JavaScript, JQuery)', 22); --19
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, '반응형 웹 사이트 만들기', 33); --20
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, '웹 클라이언트 프로그래밍(HTML, CSS3, JavaScript, JQuery)', 17); --21
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, 'Spring 개발', 25); --22
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, 'Spring Framework 통합 구현', 29); --23
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, '제이쿼리 모바일', 34); --24
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, '코틀린 프로그래밍', 29); --25
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, '안드로이드 Kotlin 앱 프로그래밍', 17); --26
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, 'Spring 서버 기반의 지능형 웹과 앱 통합개발 및 구현', 23); --27
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, '통계 기반 데이터 분석', 17); -- 28
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, 'UML을 사용한 시스템 분석' , 34); -- 29
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, '시스템 사용자 교육', 28); -- 30
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, '파이썬과 R을 활용한 텍스트 마이닝', 14); -- 31
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, 'Tensorflow로 배우는 머신러닝', 15); -- 32
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, 'Open API를 활용', 40); -- 33
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, 'UI/UX 설계', 42); --34
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, '웹킷 계열 브라우저 반응형 웹 UI/UX 설계', 26); -- 35
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, '빅데이터 분석 기획', 26); -- 36
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, '웹 서버 프로그램 구현', 38); -- 37
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, '지능형 웹 알고리즘', 22); -- 38
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, '지능형 웹과 빅데이터 통합 프로젝트', 14); -- 39
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, '융합기반 웹표준 프로젝트', 20); -- 40
insert into tblSubject (subjectSeq, subjectName, subjectPeriod) values (seqSubject.nextval, '반응형 웹 프로그래밍', 24); -- 41

-- tblStdCareer, 학생이력
-- stdCareerSeq(과목번호), stdSeq(과목이름), stdEdu(과목기간), wishField(취업희망분야), wishSalary(희망연봉)

insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S1','대졸','풀스택',3600);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S2','초대졸','프론트엔트',3200);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S3','초대졸','프론트엔트',4500);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S4','고졸','풀스택',3000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S5','대학원졸','백엔드',4000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S6','고졸','풀스택',3600);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S7','초대졸','프론트엔트',3000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S8','대졸','백엔드',3000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S9','대졸','백엔드',3200);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S10','초대졸','프론트엔트',3600);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S11','대학원졸','백엔드',3000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S12','대졸','프론트엔트',3400);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S13','대졸','프론트엔트',3400);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S14','대졸','백엔드',3400);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S15','대졸','풀스택',3600);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S16','고졸','프론트엔트',3000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S17','고졸','풀스택',3600);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S18','대학원졸','프론트엔트',5000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S19','초대졸','백엔드',4500);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S20','대학원졸','백엔드',5000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S21','초대졸','백엔드',3600);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S22','초대졸','풀스택',2800);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S23','고졸','풀스택',3200);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S24','고졸','프론트엔트',3000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S25','대졸','백엔드',3400);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S26','대학원졸','백엔드',5000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S27','대학원졸','프론트엔트',4500);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S28','대학원졸','프론트엔트',4500);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S29','고졸','풀스택',3200);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S30','대학원졸','백엔드',2800);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S31','초대졸','백엔드',3200);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S32','대학원졸','프론트엔트',4000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S33','초대졸','프론트엔트',2800);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S34','초대졸','프론트엔트',3600);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S35','대학원졸','풀스택',4500);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S36','대졸','프론트엔트',3600);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S37','대졸','백엔드',3200);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S38','대졸','프론트엔트',2800);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S39','대졸','프론트엔트',3000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S40','대졸','백엔드',4000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S41','초대졸','프론트엔트',3000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S42','고졸','프론트엔트',4500);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S43','고졸','프론트엔트',4000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S44','고졸','풀스택',5000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S45','고졸','백엔드',4500);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S46','대졸','백엔드',3200);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S47','대졸','백엔드',3000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S48','대학원졸','풀스택',3200);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S49','초대졸','프론트엔트',4500);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S50','대학원졸','백엔드',5000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S51','초대졸','프론트엔트',4000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S52','고졸','프론트엔트',3200);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S53','대학원졸','프론트엔트',5000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S54','대학원졸','프론트엔트',3600);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S55','고졸','프론트엔트',3600);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S56','대학원졸','프론트엔트',3400);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S57','대학원졸','프론트엔트',4500);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S58','대졸','풀스택',4000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S59','대학원졸','백엔드',4000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S60','고졸','프론트엔트',2800);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S61','고졸','프론트엔트',3600);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S62','고졸','프론트엔트',5000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S63','대학원졸','백엔드',3400);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S64','고졸','프론트엔트',4000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S65','초대졸','프론트엔트',3000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S66','초대졸','백엔드',3000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S67','대졸','프론트엔트',3200);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S68','초대졸','풀스택',5000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S69','고졸','백엔드',4000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S70','대학원졸','풀스택',2800);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S71','고졸','풀스택',3600);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S72','초대졸','백엔드',2800);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S73','고졸','풀스택',2800);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S74','고졸','백엔드',2800);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S75','초대졸','백엔드',4500);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S76','초대졸','프론트엔트',5000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S77','초대졸','풀스택',4000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S78','대졸','풀스택',3600);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S79','대학원졸','프론트엔트',4000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S80','대학원졸','프론트엔트',2800);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S81','대학원졸','프론트엔트',4500);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S82','고졸','백엔드',4000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S83','초대졸','풀스택',4000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S84','대학원졸','프론트엔트',5000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S85','고졸','프론트엔트',4000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S86','초대졸','프론트엔트',2800);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S87','초대졸','백엔드',3600);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S88','대졸','백엔드',2800);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S89','대학원졸','프론트엔트',4500);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S90','대졸','프론트엔트',4500);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S91','대학원졸','백엔드',5000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S92','고졸','프론트엔트',3000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S93','대졸','프론트엔트',4500);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S94','초대졸','백엔드',4000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S95','대학원졸','풀스택',3000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S96','대학원졸','풀스택',3200);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S97','초대졸','풀스택',4000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S98','대학원졸','풀스택',3200);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S99','대졸','프론트엔트',3600);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S100','대학원졸','풀스택',3200);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S101','대졸','프론트엔트',3600);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S102','대졸','풀스택',4500);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S103','대학원졸','프론트엔트',3200);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S104','대학원졸','풀스택',3000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S105','대졸','백엔드',4000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S106','고졸','프론트엔트',4000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S107','고졸','백엔드',2800);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S108','대졸','백엔드',4000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S109','초대졸','백엔드',3400);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S110','대졸','프론트엔트',3400);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S111','대졸','프론트엔트',3600);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S112','고졸','백엔드',3600);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S113','초대졸','백엔드',3400);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S114','초대졸','프론트엔트',2800);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S115','고졸','백엔드',4500);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S116','대졸','풀스택',3000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S117','대졸','풀스택',4500);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S118','초대졸','백엔드',4000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S119','대졸','백엔드',3000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S120','고졸','프론트엔트',2800);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S121','대학원졸','풀스택',3400);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S122','초대졸','풀스택',3600);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S123','고졸','풀스택',3200);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S124','고졸','풀스택',3000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S125','대학원졸','프론트엔트',3000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S126','고졸','백엔드',5000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S127','고졸','풀스택',4500);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S128','대학원졸','풀스택',5000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S129','대졸','프론트엔트',2800);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S130','대학원졸','백엔드',2800);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S131','고졸','풀스택',3600);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S132','고졸','프론트엔트',2800);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S133','고졸','프론트엔트',4000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S134','대학원졸','프론트엔트',4000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S135','고졸','백엔드',5000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S136','초대졸','백엔드',3200);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S137','대학원졸','풀스택',3200);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S138','고졸','백엔드',3600);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S139','고졸','백엔드',5000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S140','대졸','백엔드',4000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S141','대학원졸','프론트엔트',3200);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S142','대학원졸','백엔드',3600);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S143','초대졸','백엔드',4500);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S144','고졸','백엔드',2800);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S145','고졸','백엔드',3200);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S146','대졸','풀스택',3400);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S147','초대졸','풀스택',5000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S148','고졸','백엔드',3600);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S149','초대졸','풀스택',3600);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S150','고졸','프론트엔트',4500);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S151','대졸','풀스택',4000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S152','대학원졸','풀스택',3600);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S153','초대졸','풀스택',4500);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S154','고졸','풀스택',3600);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S155','고졸','풀스택',3600);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S156','초대졸','백엔드',2800);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S157','초대졸','풀스택',4000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S158','고졸','프론트엔트',3600);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S159','고졸','백엔드',4500);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S160','대학원졸','백엔드',3400);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S161','고졸','풀스택',5000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S162','고졸','백엔드',3200);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S163','초대졸','프론트엔트',2800);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S164','대학원졸','프론트엔트',3600);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S165','고졸','백엔드',3600);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S166','고졸','풀스택',2800);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S167','초대졸','풀스택',3000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S168','초대졸','백엔드',3200);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S169','초대졸','풀스택',3400);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S170','고졸','프론트엔트',3000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S171','대학원졸','프론트엔트',2800);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S172','대학원졸','백엔드',2800);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S173','대학원졸','프론트엔트',2800);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S174','초대졸','백엔드',2800);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S175','초대졸','백엔드',3200);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S176','고졸','풀스택',2800);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S177','대학원졸','프론트엔트',5000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S178','초대졸','풀스택',2800);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S179','대졸','풀스택',3000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S180','초대졸','프론트엔트',3200);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S181','초대졸','백엔드',3400);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S182','대학원졸','풀스택',2800);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S183','대졸','백엔드',3000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S184','고졸','백엔드',3000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S185','대졸','풀스택',5000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S186','대학원졸','백엔드',3000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S187','대졸','풀스택',2800);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S188','고졸','프론트엔트',4500);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S189','대졸','프론트엔트',4500);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S190','대학원졸','풀스택',4000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S191','대졸','풀스택',5000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S192','대학원졸','프론트엔트',3200);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S193','초대졸','백엔드',3600);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S194','초대졸','풀스택',5000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S195','고졸','프론트엔트',3200);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S196','대학원졸','백엔드',2800);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S197','대학원졸','프론트엔트',3200);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S198','대학원졸','프론트엔트',3200);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S199','초대졸','풀스택',4000);
insert into tblStdCareer(stdCareerSeq,stdSeq,stdEdu,wishField,wishSalary) values (seqStdCareer.nextVal,'S200','초대졸','풀스택',4500);






/*
--9. 교육생 취업 정보 테이블 생성
create table tblStdJob(
    stdJobSeq number primary key, -- 교육생 취업지원번호
    stdSeq number not null references tblStudent(stdSeq), --교육생 번호
    stdField varchar2(20) not null, --취업분야
    stdDate date not null, --교육생취업날짜
    stdSalary number not null -- 취업연봉
);
--9. 교육생 취업 정보 시퀀스 생성
create sequence seqStdJob;
*/

insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S1','금융','2021-03-08',3000);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S2','쇼핑몰','2021-03-01',3100);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S3','ERP','2021-02-08',3200);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S4','블록체인','2021-02-20',3000);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S5','CRM','2021-04-03',3400);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S6','콘텐츠','2021-05-02',2900);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S7','공공기관','2021-03-11',3100);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S8','공공기관','2021-04-12',3200);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S9','금융','2021-05-13',3300);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S10','쇼핑몰','2021-03-08',3400);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S11','제조업','2021-03-08',3500);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S12','금융','2021-03-07',3000);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S13','쇼핑몰','2021-03-01',3100);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S14','ERP','2021-02-08',3200);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S15','블록체인','2021-02-21',3000);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S16','CRM','2021-04-03',3400);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S17','콘텐츠','2021-04-01',2900);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S18','공공기관','2021-03-11',3100);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S19','공공기관','2021-04-12',3200);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S20','금융','2021-05-13',3300);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S21','쇼핑몰','2021-03-08',3400);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S22','제조업','2021-03-08',2800);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S23','ERP','2021-02-08',3200);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S24','블록체인','2021-02-18',2900);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S25','CRM','2021-04-02',3300);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S26','콘텐츠','2021-05-02',2900);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S27','공공기관','2021-03-11',3300);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S28','공공기관','2021-04-12',3400);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S29','금융','2021-05-13',3100);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S30','공공기관','2021-03-08',3200);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S31','쇼핑몰','2021-03-12',3400);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S32','제조업','2021-03-13',3500);


-- tblStdLicense, 교육생자격증
-- licenseSeq(자격증 번호,PK), stdSeq(학생번호,FK), licenseName(자격증명), licenseDate(취득일)

insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S108','CCNA','2016-02-23');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S145','CCNA','2012-12-16');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S103','정보처리산업기사','2014-03-18');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S172','컴퓨터활용능력 2급','2018-03-19');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S130','CCNA','2015-04-13');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S10','컴퓨터활용능력 2급','2018-04-15');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S4','정보처리 기능사','2013-06-02');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S165','컴퓨터활용능력 2급','2014-04-15');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S13','정보처리산업기사','2015-07-31');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S111','리눅스 마스터','2017-02-08');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S10','정보처리 기능사','2013-08-02');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S55','정보처리기사','2018-02-14');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S69','네트워크관리사 2급','2019-05-02');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S117','CCNA','2017-01-04');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S74','정보처리기사','2012-04-16');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S188','컴퓨터활용능력 2급','2018-09-22');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S144','네트워크관리사 2급','2018-07-30');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S119','정보처리 기능사','2019-07-06');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S85','리눅스 마스터','2012-04-13');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S123','리눅스 마스터','2017-11-03');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S159','CCNA','2012-02-13');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S103','CCNA','2011-01-08');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S161','정보처리기사','2018-01-06');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S65','컴퓨터활용능력 2급','2011-10-29');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S69','ITQ','2014-10-31');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S32','정보처리기사','2018-06-01');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S115','CCNA','2017-08-20');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S184','네트워크관리사 2급','2010-03-14');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S150','리눅스 마스터','2015-09-30');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S161','ITQ','2011-03-23');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S49','CCNA','2010-08-20');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S21','정보처리 기능사','2015-02-13');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S64','정보처리기사','2017-03-03');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S163','리눅스 마스터','2012-08-07');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S79','네트워크관리사 2급','2019-09-26');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S29','리눅스 마스터','2012-11-12');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S31','ITQ','2010-05-17');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S51','네트워크관리사 2급','2010-06-07');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S148','컴퓨터활용능력 2급','2017-02-03');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S180','네트워크관리사 2급','2011-06-25');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S185','ITQ','2016-06-20');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S32','컴퓨터활용능력 2급','2018-06-09');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S77','정보처리산업기사','2012-05-19');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S78','리눅스 마스터','2017-05-05');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S85','ITQ','2019-09-13');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S60','ITQ','2014-11-17');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S82','컴퓨터활용능력 2급','2013-03-01');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S157','정보처리기사','2012-01-05');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S119','컴퓨터활용능력 2급','2019-04-28');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S63','리눅스 마스터','2010-07-31');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S92','리눅스 마스터','2012-09-03');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S177','ITQ','2011-09-12');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S134','정보처리산업기사','2013-08-04');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S112','리눅스 마스터','2016-10-01');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S199','CCNA','2013-06-26');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S17','CCNA','2014-07-22');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S70','정보처리산업기사','2010-05-28');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S129','CCNA','2012-01-05');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S56','정보처리기사','2017-04-01');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S142','정보처리 기능사','2014-08-07');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S158','ITQ','2019-09-24');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S69','CCNA','2015-10-25');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S73','네트워크관리사 2급','2018-04-24');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S198','네트워크관리사 2급','2015-02-04');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S87','네트워크관리사 2급','2016-03-28');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S40','정보처리기사','2018-05-13');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S90','정보처리기사','2015-01-17');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S23','네트워크관리사 2급','2013-12-25');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S53','정보처리 기능사','2012-07-03');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S25','CCNA','2016-02-23');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S17','컴퓨터활용능력 2급','2015-07-15');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S127','정보처리 기능사','2019-11-13');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S175','정보처리산업기사','2014-09-01');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S186','정보처리 기능사','2014-01-10');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S111','정보처리 기능사','2010-06-03');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S158','ITQ','2018-03-14');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S106','정보처리산업기사','2017-11-27');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S173','컴퓨터활용능력 2급','2017-09-26');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S54','정보처리산업기사','2015-08-10');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S174','정보처리기사','2017-07-01');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S189','정보처리기사','2014-03-24');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S30','정보처리산업기사','2013-08-11');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S114','리눅스 마스터','2010-03-02');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S198','CCNA','2015-12-08');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S29','정보처리기사','2011-04-11');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S123','네트워크관리사 2급','2018-03-17');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S43','정보처리산업기사','2016-08-24');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S197','CCNA','2014-10-15');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S118','정보처리기사','2016-07-13');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S173','정보처리 기능사','2012-11-05');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S200','정보처리 기능사','2017-06-29');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S149','정보처리 기능사','2014-07-13');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S21','정보처리기사','2019-07-09');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S171','정보처리기사','2017-11-26');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S178','정보처리기사','2010-06-09');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S160','정보처리산업기사','2018-01-14');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S57','정보처리기사','2018-05-08');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S52','리눅스 마스터','2011-04-05');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S86','컴퓨터활용능력 2급','2019-02-19');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S154','정보처리 기능사','2011-05-01');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S178','정보처리 기능사','2010-12-07');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S12','정보처리산업기사','2011-08-22');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S44','ITQ','2013-07-07');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S155','정보처리기사','2013-11-12');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S103','컴퓨터활용능력 2급','2016-09-03');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S92','정보처리 기능사','2012-07-16');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S162','컴퓨터활용능력 2급','2015-12-30');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S29','정보처리산업기사','2015-02-10');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S79','ITQ','2010-03-31');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S6','컴퓨터활용능력 2급','2011-04-21');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S4','ITQ','2017-01-14');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S134','CCNA','2019-12-19');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S193','CCNA','2010-02-25');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S110','정보처리기사','2012-05-16');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S38','컴퓨터활용능력 2급','2012-06-22');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S8','정보처리 기능사','2011-11-06');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S166','정보처리기사','2018-01-19');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S3','CCNA','2010-05-25');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S120','정보처리 기능사','2014-01-12');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S23','리눅스 마스터','2019-07-04');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S69','정보처리산업기사','2016-06-16');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S106','CCNA','2012-03-27');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S177','정보처리산업기사','2012-03-15');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S116','정보처리 기능사','2012-11-22');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S48','네트워크관리사 2급','2019-06-06');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S121','CCNA','2015-04-29');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S181','정보처리 기능사','2015-06-19');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S148','정보처리산업기사','2013-02-20');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S72','CCNA','2016-09-06');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S114','CCNA','2016-11-12');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S66','CCNA','2019-04-30');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S8','리눅스 마스터','2010-05-29');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S50','ITQ','2019-05-29');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S136','리눅스 마스터','2017-09-03');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S125','정보처리산업기사','2011-01-04');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S86','ITQ','2010-07-30');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S177','정보처리기사','2017-06-06');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S81','컴퓨터활용능력 2급','2016-12-06');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S3','컴퓨터활용능력 2급','2015-05-16');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S24','정보처리기사','2014-07-27');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S52','정보처리 기능사','2016-07-03');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S192','정보처리산업기사','2011-05-07');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S49','정보처리산업기사','2017-01-25');
insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,'S146','컴퓨터활용능력 2급','2012-03-22');

-- tblTeacherAttend, 교사출결
-- teacherAttendSeq(교사출결번호), teacherSeq(교사번호), teacherAttendStatus(근태상황), teacherInTime(출근시간), teacherOutTime(퇴근시간), teacherAttendDate(출근날짜)

-- 강의중
-- 과정1(2021-02-25 ~ 현재(2021-06-11)), 교사1
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-02-25 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-25 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-25','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-02-26 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-26 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-26','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-02-27 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-27 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-27','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-02-28 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-28 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-28','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-03-01 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-01 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-01','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-03-02 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-02 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-02','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-03-03 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-03 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-03','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-03-04 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-04 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-04','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-03-05 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-05 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-05','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-03-06 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-06 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-06','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-03-07 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-07 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-07','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-03-08 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-08 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-08','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-03-09 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-09 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-09','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-03-10 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-10 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-10','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-03-11 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-11 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-11','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-03-12 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-12 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-12','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-03-13 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-13 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-13','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-03-14 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-14 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-14','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-03-15 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-15 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-15','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-03-16 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-16 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-16','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-03-17 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-17 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-17','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-03-18 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-18 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-18','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-03-19 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-19 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-19','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-03-20 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-20 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-20','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-03-21 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-21 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-21','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-03-22 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-22 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-22','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-03-23 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-23 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-23','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-03-24 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-24 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-24','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-03-25 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-25 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-25','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-03-26 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-26 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-26','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-03-27 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-27 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-27','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-03-28 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-28 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-28','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-03-29 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-29 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-29','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-03-30 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-30 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-30','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-03-31 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-31 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-31','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-04-01 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-01 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-01','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-04-02 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-02 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-02','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-04-03 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-03 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-03','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-04-04 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-04 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-04','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-04-05 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-05 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-05','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-04-06 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-06 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-06','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-04-07 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-07 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-07','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-04-08 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-08 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-08','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-04-09 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-09 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-09','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-04-10 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-10 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-10','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-04-11 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-11 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-11','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-04-12 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-12 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-12','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-04-13 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-13 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-13','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-04-14 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-14 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-14','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-04-15 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-15 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-15','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-04-16 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-16 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-16','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-04-17 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-17 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-17','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-04-18 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-18 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-18','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-04-19 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-19 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-19','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-04-20 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-20 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-20','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-04-21 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-21 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-21','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-04-22 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-22 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-22','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-04-23 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-23 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-23','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-04-24 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-24 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-24','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-04-25 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-25 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-25','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-04-26 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-26 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-26','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-04-27 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-27 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-27','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-04-28 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-28 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-28','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-04-29 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-29 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-29','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-04-30 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-30 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-30','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-05-01 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-01 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-01','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-05-02 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-02 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-02','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-05-03 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-03 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-03','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-05-04 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-04 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-04','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-05-05 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-05 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-05','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-05-06 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-06 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-06','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-05-07 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-07 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-07','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-05-08 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-08 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-08','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-05-09 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-09 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-09','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-05-10 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-10 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-10','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-05-11 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-11 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-11','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-05-12 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-12 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-12','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-05-13 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-13 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-13','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-05-14 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-14 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-14','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-05-15 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-15 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-15','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-05-16 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-16 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-16','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-05-17 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-17 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-17','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-05-18 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-18 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-18','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-05-19 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-19 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-19','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-05-20 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-20 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-20','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-05-21 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-21 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-21','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-05-22 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-22 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-22','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-05-23 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-23 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-23','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-05-24 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-24 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-24','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-05-25 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-25 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-25','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-05-26 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-26 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-26','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-05-27 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-27 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-27','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-05-28 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-28 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-28','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-05-29 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-29 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-29','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-05-30 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-30 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-30','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-05-31 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-31 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-31','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-06-01 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-01 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-01','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-06-02 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-02 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-02','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-06-03 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-03 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-03','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-06-04 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-04 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-04','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-06-05 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-05 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-05','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-06-06 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-06 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-06','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-06-07 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-07 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-07','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-06-08 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-08 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-08','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-06-09 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-09 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-09','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-06-10 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-10 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-10','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T1', '정상', to_date('2021-06-11 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-11 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-11','yyyy-mm-dd'));

-- 과정2(2021-05-10 ~ 현재(2021-06-11)), 교사4
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T4', '정상', to_date('2021-05-10 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-10 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-10','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T4', '정상', to_date('2021-05-11 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-11 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-11','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T4', '정상', to_date('2021-05-12 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-12 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-12','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T4', '정상', to_date('2021-05-13 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-13 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-13','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T4', '정상', to_date('2021-05-14 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-14 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-14','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T4', '정상', to_date('2021-05-15 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-15 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-15','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T4', '정상', to_date('2021-05-16 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-16 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-16','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T4', '정상', to_date('2021-05-17 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-17 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-17','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T4', '정상', to_date('2021-05-18 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-18 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-18','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T4', '정상', to_date('2021-05-19 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-19 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-19','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T4', '정상', to_date('2021-05-20 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-20 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-20','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T4', '정상', to_date('2021-05-21 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-21 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-21','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T4', '정상', to_date('2021-05-22 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-22 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-22','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T4', '정상', to_date('2021-05-23 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-23 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-23','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T4', '정상', to_date('2021-05-24 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-24 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-24','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T4', '정상', to_date('2021-05-25 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-25 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-25','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T4', '정상', to_date('2021-05-26 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-26 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-26','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T4', '정상', to_date('2021-05-27 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-27 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-27','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T4', '정상', to_date('2021-05-28 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-28 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-28','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T4', '정상', to_date('2021-05-29 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-29 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-29','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T4', '정상', to_date('2021-05-30 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-30 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-30','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T4', '정상', to_date('2021-05-31 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-31 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-31','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T4', '정상', to_date('2021-06-01 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-01 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-01','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T4', '정상', to_date('2021-06-02 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-02 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-02','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T4', '정상', to_date('2021-06-03 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-03 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-03','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T4', '정상', to_date('2021-06-04 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-04 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-04','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T4', '정상', to_date('2021-06-05 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-05 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-05','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T4', '정상', to_date('2021-06-06 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-06 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-06','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T4', '정상', to_date('2021-06-07 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-07 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-07','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T4', '정상', to_date('2021-06-08 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-08 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-08','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T4', '정상', to_date('2021-06-09 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-09 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-09','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T4', '정상', to_date('2021-06-10 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-10 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-10','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T4', '정상', to_date('2021-06-11 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-11 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-11','yyyy-mm-dd'));


-- 과정3(2021-03-29 ~ 현재(2021-06-11)), 교사6
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-03-29 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-29 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-29','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-03-30 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-30 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-30','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-03-31 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-31 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-31','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-04-01 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-01 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-01','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-04-02 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-02 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-02','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-04-03 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-03 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-03','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-04-04 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-04 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-04','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-04-05 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-05 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-05','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-04-06 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-06 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-06','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-04-07 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-07 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-07','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-04-08 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-08 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-08','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-04-09 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-09 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-09','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-04-10 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-10 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-10','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-04-11 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-11 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-11','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-04-12 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-12 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-12','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-04-13 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-13 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-13','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-04-14 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-14 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-14','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-04-15 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-15 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-15','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-04-16 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-16 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-16','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-04-17 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-17 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-17','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-04-18 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-18 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-18','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-04-19 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-19 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-19','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-04-20 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-20 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-20','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-04-21 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-21 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-21','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-04-22 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-22 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-22','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-04-23 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-23 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-23','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-04-24 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-24 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-24','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-04-25 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-25 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-25','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-04-26 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-26 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-26','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-04-27 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-27 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-27','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-04-28 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-28 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-28','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-04-29 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-29 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-29','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-04-30 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-30 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-30','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-05-01 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-01 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-01','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-05-02 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-02 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-02','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-05-03 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-03 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-03','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-05-04 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-04 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-04','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-05-05 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-05 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-05','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-05-06 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-06 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-06','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-05-07 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-07 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-07','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-05-08 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-08 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-08','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-05-09 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-09 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-09','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-05-10 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-10 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-10','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-05-11 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-11 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-11','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-05-12 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-12 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-12','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-05-13 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-13 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-13','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-05-14 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-14 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-14','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-05-15 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-15 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-15','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-05-16 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-16 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-16','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-05-17 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-17 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-17','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-05-18 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-18 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-18','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-05-19 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-19 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-19','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-05-20 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-20 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-20','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-05-21 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-21 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-21','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-05-22 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-22 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-22','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-05-23 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-23 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-23','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-05-24 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-24 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-24','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-05-25 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-25 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-25','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-05-26 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-26 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-26','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-05-27 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-27 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-27','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-05-28 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-28 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-28','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-05-29 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-29 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-29','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-05-30 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-30 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-30','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-05-31 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-31 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-31','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-06-01 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-01 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-01','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-06-02 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-02 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-02','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-06-03 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-03 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-03','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-06-04 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-04 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-04','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-06-05 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-05 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-05','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-06-06 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-06 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-06','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-06-07 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-07 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-07','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-06-08 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-08 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-08','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-06-09 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-09 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-09','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-06-10 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-10 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-10','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T6', '정상', to_date('2021-06-11 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-11 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-11','yyyy-mm-dd'));

-- 과정4(2021-04-05 ~ 현재(2021-06-11)), 교사2
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-04-05 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-05 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-05','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-04-06 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-06 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-06','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-04-07 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-07 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-07','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-04-08 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-08 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-08','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-04-09 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-09 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-09','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-04-10 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-10 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-10','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-04-11 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-11 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-11','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-04-12 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-12 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-12','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-04-13 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-13 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-13','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-04-14 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-14 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-14','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-04-15 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-15 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-15','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-04-16 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-16 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-16','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-04-17 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-17 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-17','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-04-18 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-18 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-18','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-04-19 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-19 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-19','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-04-20 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-20 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-20','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-04-21 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-21 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-21','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-04-22 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-22 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-22','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-04-23 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-23 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-23','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-04-24 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-24 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-24','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-04-25 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-25 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-25','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-04-26 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-26 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-26','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-04-27 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-27 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-27','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-04-28 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-28 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-28','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-04-29 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-29 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-29','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-04-30 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-30 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-30','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-05-01 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-01 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-01','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-05-02 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-02 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-02','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-05-03 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-03 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-03','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-05-04 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-04 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-04','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-05-05 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-05 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-05','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-05-06 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-06 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-06','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-05-07 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-07 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-07','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-05-08 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-08 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-08','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-05-09 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-09 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-09','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-05-10 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-10 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-10','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-05-11 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-11 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-11','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-05-12 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-12 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-12','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-05-13 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-13 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-13','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-05-14 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-14 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-14','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-05-15 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-15 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-15','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-05-16 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-16 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-16','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-05-17 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-17 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-17','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-05-18 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-18 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-18','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-05-19 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-19 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-19','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-05-20 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-20 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-20','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-05-21 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-21 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-21','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-05-22 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-22 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-22','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-05-23 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-23 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-23','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-05-24 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-24 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-24','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-05-25 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-25 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-25','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-05-26 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-26 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-26','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-05-27 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-27 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-27','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-05-28 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-28 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-28','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-05-29 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-29 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-29','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-05-30 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-30 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-30','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-05-31 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-31 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-31','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-06-01 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-01 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-01','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-06-02 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-02 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-02','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-06-03 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-03 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-03','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-06-04 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-04 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-04','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-06-05 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-05 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-05','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-06-06 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-06 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-06','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-06-07 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-07 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-07','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-06-08 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-08 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-08','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-06-09 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-09 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-09','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-06-10 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-10 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-10','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T2', '정상', to_date('2021-06-11 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-11 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-11','yyyy-mm-dd'));

-- 과정5(2021-02-18 ~ 현재(2021-06-11)), 교사3
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-02-18 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-18 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-18','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-02-19 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-19 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-19','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-02-20 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-20 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-20','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-02-21 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-21 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-21','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-02-22 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-22 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-22','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-02-23 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-23 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-23','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-02-24 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-24 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-24','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-02-25 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-25 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-25','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-02-26 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-26 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-26','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-02-27 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-27 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-27','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-02-28 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-28 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-28','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-03-01 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-01 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-01','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-03-02 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-02 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-02','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-03-03 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-03 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-03','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-03-04 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-04 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-04','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-03-05 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-05 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-05','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-03-06 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-06 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-06','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-03-07 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-07 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-07','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-03-08 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-08 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-08','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-03-09 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-09 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-09','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-03-10 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-10 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-10','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-03-11 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-11 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-11','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-03-12 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-12 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-12','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-03-13 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-13 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-13','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-03-14 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-14 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-14','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-03-15 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-15 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-15','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-03-16 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-16 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-16','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-03-17 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-17 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-17','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-03-18 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-18 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-18','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-03-19 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-19 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-19','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-03-20 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-20 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-20','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-03-21 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-21 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-21','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-03-22 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-22 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-22','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-03-23 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-23 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-23','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-03-24 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-24 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-24','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-03-25 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-25 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-25','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-03-26 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-26 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-26','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-03-27 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-27 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-27','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-03-28 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-28 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-28','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-03-29 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-29 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-29','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-03-30 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-30 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-30','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-03-31 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-31 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-31','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-04-01 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-01 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-01','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-04-02 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-02 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-02','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-04-03 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-03 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-03','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-04-04 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-04 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-04','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-04-05 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-05 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-05','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-04-06 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-06 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-06','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-04-07 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-07 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-07','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-04-08 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-08 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-08','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-04-09 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-09 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-09','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-04-10 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-10 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-10','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-04-11 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-11 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-11','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-04-12 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-12 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-12','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-04-13 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-13 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-13','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-04-14 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-14 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-14','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-04-15 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-15 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-15','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-04-16 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-16 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-16','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-04-17 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-17 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-17','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-04-18 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-18 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-18','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-04-19 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-19 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-19','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-04-20 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-20 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-20','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-04-21 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-21 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-21','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-04-22 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-22 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-22','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-04-23 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-23 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-23','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-04-24 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-24 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-24','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-04-25 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-25 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-25','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-04-26 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-26 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-26','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-04-27 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-27 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-27','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-04-28 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-28 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-28','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-04-29 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-29 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-29','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-04-30 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-30 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-30','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-05-01 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-01 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-01','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-05-02 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-02 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-02','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-05-03 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-03 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-03','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-05-04 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-04 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-04','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-05-05 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-05 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-05','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-05-06 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-06 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-06','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-05-07 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-07 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-07','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-05-08 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-08 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-08','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-05-09 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-09 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-09','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-05-10 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-10 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-10','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-05-11 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-11 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-11','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-05-12 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-12 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-12','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-05-13 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-13 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-13','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-05-14 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-14 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-14','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-05-15 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-15 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-15','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-05-16 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-16 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-16','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-05-17 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-17 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-17','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-05-18 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-18 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-18','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-05-19 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-19 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-19','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-05-20 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-20 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-20','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-05-21 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-21 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-21','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-05-22 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-22 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-22','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-05-23 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-23 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-23','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-05-24 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-24 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-24','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-05-25 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-25 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-25','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-05-26 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-26 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-26','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-05-27 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-27 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-27','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-05-28 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-28 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-28','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-05-29 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-29 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-29','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-05-30 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-30 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-30','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-05-31 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-31 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-31','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-06-01 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-01 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-01','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-06-02 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-02 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-02','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-06-03 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-03 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-03','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-06-04 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-04 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-04','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-06-05 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-05 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-05','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-06-06 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-06 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-06','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-06-07 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-07 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-07','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-06-08 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-08 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-08','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-06-09 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-09 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-09','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-06-10 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-10 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-10','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T3', '정상', to_date('2021-06-11 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-11 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-11','yyyy-mm-dd'));

-- 과정6(2021-01-25 ~ 현재(2021-06-11)), 교사5
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-01-25 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-25 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-25','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-01-26 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-26 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-26','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-01-27 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-27 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-27','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-01-28 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-28 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-28','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-01-29 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-29 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-29','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-01-30 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-30 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-30','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-01-31 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-31 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-31','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-02-01 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-01 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-01','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-02-02 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-02 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-02','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-02-03 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-03 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-03','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-02-04 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-04 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-04','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-02-05 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-05 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-05','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-02-06 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-06 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-06','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-02-07 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-07 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-07','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-02-08 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-08 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-08','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-02-09 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-09 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-09','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-02-10 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-10 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-10','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-02-11 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-11 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-11','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-02-12 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-12 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-12','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-02-13 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-13 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-13','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-02-14 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-14 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-14','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-02-15 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-15 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-15','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-02-16 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-16 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-16','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-02-17 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-17 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-17','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-02-18 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-18 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-18','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-02-19 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-19 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-19','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-02-20 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-20 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-20','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-02-21 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-21 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-21','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-02-22 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-22 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-22','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-02-23 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-23 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-23','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-02-24 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-24 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-24','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-02-25 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-25 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-25','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-02-26 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-26 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-26','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-02-27 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-27 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-27','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-02-28 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-28 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-28','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-03-01 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-01 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-01','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-03-02 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-02 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-02','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-03-03 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-03 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-03','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-03-04 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-04 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-04','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-03-05 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-05 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-05','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-03-06 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-06 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-06','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-03-07 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-07 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-07','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-03-08 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-08 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-08','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-03-09 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-09 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-09','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-03-10 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-10 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-10','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-03-11 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-11 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-11','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-03-12 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-12 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-12','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-03-13 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-13 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-13','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-03-14 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-14 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-14','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-03-15 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-15 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-15','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-03-16 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-16 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-16','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-03-17 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-17 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-17','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-03-18 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-18 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-18','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-03-19 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-19 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-19','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-03-20 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-20 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-20','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-03-21 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-21 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-21','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-03-22 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-22 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-22','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-03-23 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-23 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-23','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-03-24 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-24 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-24','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-03-25 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-25 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-25','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-03-26 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-26 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-26','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-03-27 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-27 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-27','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-03-28 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-28 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-28','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-03-29 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-29 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-29','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-03-30 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-30 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-30','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-03-31 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-31 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-03-31','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-04-01 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-01 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-01','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-04-02 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-02 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-02','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-04-03 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-03 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-03','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-04-04 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-04 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-04','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-04-05 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-05 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-05','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-04-06 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-06 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-06','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-04-07 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-07 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-07','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-04-08 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-08 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-08','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-04-09 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-09 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-09','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-04-10 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-10 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-10','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-04-11 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-11 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-11','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-04-12 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-12 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-12','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-04-13 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-13 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-13','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-04-14 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-14 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-14','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-04-15 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-15 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-15','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-04-16 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-16 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-16','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-04-17 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-17 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-17','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-04-18 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-18 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-18','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-04-19 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-19 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-19','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-04-20 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-20 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-20','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-04-21 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-21 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-21','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-04-22 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-22 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-22','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-04-23 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-23 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-23','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-04-24 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-24 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-24','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-04-25 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-25 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-25','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-04-26 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-26 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-26','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-04-27 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-27 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-27','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-04-28 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-28 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-28','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-04-29 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-29 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-29','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-04-30 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-30 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-04-30','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-05-01 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-01 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-01','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-05-02 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-02 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-02','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-05-03 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-03 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-03','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-05-04 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-04 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-04','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-05-05 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-05 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-05','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-05-06 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-06 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-06','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-05-07 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-07 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-07','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-05-08 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-08 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-08','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-05-09 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-09 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-09','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-05-10 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-10 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-10','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-05-11 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-11 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-11','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-05-12 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-12 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-12','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-05-13 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-13 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-13','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-05-14 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-14 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-14','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-05-15 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-15 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-15','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-05-16 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-16 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-16','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-05-17 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-17 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-17','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-05-18 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-18 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-18','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-05-19 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-19 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-19','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-05-20 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-20 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-20','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-05-21 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-21 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-21','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-05-22 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-22 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-22','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-05-23 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-23 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-23','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-05-24 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-24 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-24','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-05-25 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-25 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-25','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-05-26 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-26 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-26','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-05-27 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-27 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-27','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-05-28 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-28 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-28','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-05-29 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-29 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-29','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-05-30 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-30 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-30','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-05-31 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-31 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-05-31','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-06-01 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-01 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-01','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-06-02 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-02 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-02','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-06-03 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-03 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-03','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-06-04 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-04 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-04','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-06-05 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-05 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-05','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-06-06 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-06 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-06','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-06-07 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-07 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-07','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-06-08 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-08 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-08','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-06-09 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-09 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-09','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-06-10 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-10 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-10','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T5', '정상', to_date('2021-06-11 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-11 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-06-11','yyyy-mm-dd'));


-- 강의종료
-- 과정8(2020-08-17 ~ 2021-02-02), 교사8
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-08-17 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-08-17 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-08-17','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-08-18 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-08-18 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-08-18','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-08-19 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-08-19 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-08-19','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-08-20 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-08-20 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-08-20','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-08-21 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-08-21 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-08-21','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-08-22 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-08-22 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-08-22','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-08-23 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-08-23 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-08-23','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-08-24 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-08-24 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-08-24','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-08-25 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-08-25 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-08-25','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-08-26 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-08-26 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-08-26','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-08-27 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-08-27 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-08-27','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-08-28 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-08-28 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-08-28','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-08-29 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-08-29 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-08-29','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-08-30 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-08-30 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-08-30','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-08-31 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-08-31 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-08-31','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-09-01 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-01 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-01','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-09-02 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-02 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-02','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-09-03 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-03 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-03','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-09-04 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-04 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-04','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-09-05 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-05 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-05','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-09-06 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-06 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-06','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-09-07 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-07 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-07','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-09-08 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-08 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-08','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-09-09 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-09 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-09','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-09-10 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-10 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-10','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-09-11 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-11 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-11','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-09-12 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-12 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-12','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-09-13 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-13 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-13','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-09-14 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-14 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-14','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-09-15 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-15 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-15','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-09-16 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-16 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-16','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-09-17 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-17 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-17','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-09-18 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-18 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-18','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-09-19 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-19 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-19','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-09-20 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-20 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-20','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-09-21 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-21 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-21','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-09-22 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-22 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-22','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-09-23 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-23 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-23','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-09-24 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-24 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-24','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-09-25 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-25 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-25','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-09-26 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-26 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-26','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-09-27 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-27 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-27','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-09-28 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-28 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-28','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-09-29 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-29 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-29','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-09-30 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-30 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-09-30','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-10-01 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-01 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-01','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-10-02 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-02 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-02','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-10-03 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-03 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-03','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-10-04 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-04 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-04','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-10-05 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-05 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-05','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-10-06 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-06 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-06','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-10-07 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-07 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-07','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-10-08 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-08 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-08','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-10-09 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-09 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-09','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-10-10 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-10 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-10','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-10-11 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-11 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-11','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-10-12 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-12 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-12','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-10-13 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-13 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-13','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-10-14 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-14 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-14','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-10-15 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-15 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-15','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-10-16 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-16 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-16','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-10-17 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-17 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-17','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-10-18 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-18 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-18','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-10-19 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-19 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-19','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-10-20 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-20 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-20','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-10-21 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-21 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-21','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-10-22 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-22 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-22','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-10-23 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-23 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-23','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-10-24 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-24 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-24','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-10-25 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-25 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-25','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-10-26 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-26 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-26','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-10-27 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-27 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-27','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-10-28 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-28 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-28','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-10-29 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-29 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-29','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-10-30 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-30 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-30','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-10-31 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-31 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-10-31','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-11-01 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-01 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-01','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-11-02 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-02 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-02','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-11-03 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-03 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-03','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-11-04 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-04 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-04','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-11-05 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-05 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-05','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-11-06 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-06 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-06','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-11-07 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-07 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-07','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-11-08 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-08 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-08','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-11-09 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-09 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-09','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-11-10 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-10 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-10','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-11-11 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-11 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-11','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-11-12 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-12 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-12','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-11-13 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-13 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-13','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-11-14 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-14 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-14','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-11-15 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-15 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-15','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-11-16 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-16 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-16','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-11-17 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-17 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-17','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-11-18 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-18 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-18','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-11-19 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-19 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-19','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-11-20 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-20 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-20','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-11-21 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-21 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-21','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-11-22 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-22 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-22','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-11-23 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-23 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-23','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-11-24 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-24 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-24','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-11-25 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-25 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-25','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-11-26 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-26 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-26','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-11-27 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-27 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-27','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-11-28 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-28 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-28','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-11-29 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-29 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-29','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-11-30 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-30 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-11-30','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-12-01 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-01 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-01','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-12-02 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-02 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-02','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-12-03 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-03 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-03','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-12-04 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-04 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-04','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-12-05 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-05 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-05','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-12-06 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-06 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-06','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-12-07 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-07 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-07','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-12-08 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-08 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-08','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-12-09 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-09 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-09','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-12-10 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-10 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-10','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-12-11 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-11 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-11','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-12-12 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-12 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-12','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-12-13 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-13 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-13','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-12-14 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-14 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-14','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-12-15 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-15 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-15','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-12-16 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-16 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-16','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-12-17 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-17 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-17','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-12-18 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-18 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-18','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-12-19 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-19 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-19','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-12-20 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-20 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-20','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-12-21 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-21 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-21','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-12-22 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-22 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-22','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-12-23 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-23 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-23','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-12-24 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-24 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-24','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-12-25 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-25 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-25','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-12-26 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-26 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-26','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-12-27 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-27 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-27','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-12-28 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-28 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-28','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-12-29 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-29 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-29','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-12-30 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-30 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-30','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2020-12-31 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-31 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2020-12-31','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2021-01-01 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-01 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-01','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2021-01-02 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-02 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-02','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2021-01-03 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-03 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-03','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2021-01-04 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-04 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-04','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2021-01-05 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-05 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-05','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2021-01-06 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-06 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-06','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2021-01-07 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-07 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-07','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2021-01-08 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-08 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-08','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2021-01-09 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-09 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-09','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2021-01-10 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-10 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-10','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2021-01-11 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-11 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-11','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2021-01-12 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-12 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-12','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2021-01-13 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-13 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-13','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2021-01-14 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-14 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-14','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2021-01-15 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-15 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-15','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2021-01-16 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-16 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-16','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2021-01-17 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-17 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-17','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2021-01-18 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-18 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-18','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2021-01-19 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-19 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-19','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2021-01-20 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-20 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-20','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2021-01-21 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-21 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-21','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2021-01-22 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-22 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-22','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2021-01-23 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-23 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-23','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2021-01-24 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-24 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-24','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2021-01-25 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-25 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-25','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2021-01-26 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-26 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-26','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2021-01-27 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-27 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-27','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2021-01-28 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-28 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-28','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2021-01-29 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-29 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-29','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2021-01-30 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-30 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-30','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2021-01-31 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-31 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-01-31','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2021-02-01 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-01 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-01','yyyy-mm-dd'));
insert into tblTeacherAttend (teacherAttendSeq, teacherSeq, teacherAttendStatus, teacherInTime, teacherOutTime, teacherAttendDate) values ('TA' || seqTeacherAttend.nextVal, 'T8', '정상', to_date('2021-02-02 08:50:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-02 18:00:00','yyyy-mm-dd hh24-mi-ss'), to_date('2021-02-02','yyyy-mm-dd'));



-- teacherHistory
-- 교사이력 10개
-- teacherHistorySeq = 교사 이력 번호, teacherSeq = 교사 번호, teacherEdu = 교사 학력, teacherCareer = 교사 경력

insert into tblTeacherHistory (teacherHistorySeq,teacherSeq,teacherEdu,teacherCareer) values (seqTeacherHistory.nextval,'T1','초대졸',1);
insert into tblTeacherHistory (teacherHistorySeq,teacherSeq,teacherEdu,teacherCareer) values (seqTeacherHistory.nextval,'T2','대졸',1);
insert into tblTeacherHistory (teacherHistorySeq,teacherSeq,teacherEdu,teacherCareer) values (seqTeacherHistory.nextval,'T3','대졸',7);
insert into tblTeacherHistory (teacherHistorySeq,teacherSeq,teacherEdu,teacherCareer) values (seqTeacherHistory.nextval,'T4','대학원졸',13);
insert into tblTeacherHistory (teacherHistorySeq,teacherSeq,teacherEdu,teacherCareer) values (seqTeacherHistory.nextval,'T5','대졸',4);
insert into tblTeacherHistory (teacherHistorySeq,teacherSeq,teacherEdu,teacherCareer) values (seqTeacherHistory.nextval,'T6','초대졸',2);
insert into tblTeacherHistory (teacherHistorySeq,teacherSeq,teacherEdu,teacherCareer) values (seqTeacherHistory.nextval,'T7','고졸',6);
insert into tblTeacherHistory (teacherHistorySeq,teacherSeq,teacherEdu,teacherCareer) values (seqTeacherHistory.nextval,'T8','대졸',5);
insert into tblTeacherHistory (teacherHistorySeq,teacherSeq,teacherEdu,teacherCareer) values (seqTeacherHistory.nextval,'T9','고졸',10);
insert into tblTeacherHistory (teacherHistorySeq,teacherSeq,teacherEdu,teacherCareer) values (seqTeacherHistory.nextval,'T10','대학원졸',15);



-- equip
-- 시설 테이블
-- equipSeq = 제품 번호, classNum = 강의실 번호, equipName = 제품 분류, equipStatus = 제품 상태, equipBuyDate = 제품 구입일

--빔
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'빔','사용가능','2015-12-05');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'빔','사용가능','2015-12-05');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'빔','사용가능','2015-12-05');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'빔','사용가능','2018-03-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'빔','사용가능','2018-03-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'빔','사용가능','2018-03-22');

--에어컨
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'에어컨','사용가능','2020-06-12');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'에어컨','사용가능','2020-06-12');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'에어컨','사용가능','2020-06-13');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'에어컨','사용가능','2020-06-13');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'에어컨','사용가능','2020-06-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'에어컨','사용가능','2020-06-18');

--컴퓨터 1강의실
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'컴퓨터','사용가능','2020-01-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'컴퓨터','사용가능','2020-01-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'컴퓨터','사용가능','2020-01-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'컴퓨터','사용가능','2020-01-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'컴퓨터','사용가능','2020-01-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'컴퓨터','사용가능','2020-01-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'컴퓨터','사용가능','2020-01-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'컴퓨터','사용가능','2020-01-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'컴퓨터','사용가능','2020-01-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'컴퓨터','사용가능','2020-01-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'컴퓨터','사용가능','2020-01-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'컴퓨터','사용가능','2020-03-05');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'컴퓨터','사용가능','2020-03-05');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'컴퓨터','사용가능','2020-03-05');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'컴퓨터','사용가능','2020-03-05');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'컴퓨터','사용가능','2020-03-05');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'컴퓨터','사용가능','2020-03-05');

--컴퓨터 2강의실
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'컴퓨터','사용가능','2020-01-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'컴퓨터','사용가능','2020-01-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'컴퓨터','사용가능','2020-01-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'컴퓨터','사용가능','2020-01-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'컴퓨터','사용가능','2020-01-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'컴퓨터','사용가능','2020-01-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'컴퓨터','사용가능','2020-01-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'컴퓨터','사용가능','2020-01-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'컴퓨터','사용가능','2020-01-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'컴퓨터','사용가능','2020-01-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'컴퓨터','사용가능','2020-01-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'컴퓨터','사용가능','2020-03-05');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'컴퓨터','사용가능','2020-03-05');



--컴퓨터 3강의실
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'컴퓨터','사용가능','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'컴퓨터','사용가능','2020-01-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'컴퓨터','사용가능','2020-01-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'컴퓨터','사용가능','2020-01-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'컴퓨터','사용가능','2020-01-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'컴퓨터','사용가능','2020-01-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'컴퓨터','사용가능','2020-01-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'컴퓨터','사용가능','2020-01-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'컴퓨터','사용가능','2020-01-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'컴퓨터','사용가능','2020-01-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'컴퓨터','사용가능','2020-01-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'컴퓨터','사용가능','2020-01-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'컴퓨터','사용가능','2020-03-05');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'컴퓨터','사용가능','2020-03-05');


--컴퓨터 4강의실
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'컴퓨터','사용가능','2019-12-07');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'컴퓨터','사용가능','2019-12-07');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'컴퓨터','사용가능','2019-12-07');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'컴퓨터','사용가능','2019-12-07');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'컴퓨터','사용가능','2019-12-07');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'컴퓨터','사용가능','2019-12-07');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'컴퓨터','사용가능','2019-12-07');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'컴퓨터','사용가능','2019-12-07');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'컴퓨터','사용가능','2019-12-28');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'컴퓨터','사용가능','2019-12-28');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'컴퓨터','사용가능','2019-12-28');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'컴퓨터','사용가능','2019-12-28');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'컴퓨터','사용가능','2019-12-28');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'컴퓨터','사용가능','2019-12-28');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'컴퓨터','사용가능','2019-12-28');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'컴퓨터','사용가능','2019-12-28');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'컴퓨터','사용가능','2019-12-28');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'컴퓨터','사용가능','2019-12-28');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'컴퓨터','사용가능','2020-04-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'컴퓨터','사용가능','2020-04-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'컴퓨터','사용가능','2020-04-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'컴퓨터','사용가능','2020-04-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'컴퓨터','사용가능','2020-04-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'컴퓨터','사용가능','2020-04-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'컴퓨터','사용가능','2020-04-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'컴퓨터','사용가능','2020-04-11');

--컴퓨터 5강의실
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'컴퓨터','사용가능','2019-12-07');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'컴퓨터','사용가능','2019-12-07');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'컴퓨터','사용가능','2019-12-07');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'컴퓨터','사용가능','2019-12-07');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'컴퓨터','사용가능','2019-12-07');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'컴퓨터','사용가능','2019-12-07');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'컴퓨터','사용가능','2019-12-07');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'컴퓨터','사용가능','2019-12-07');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'컴퓨터','사용가능','2019-12-28');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'컴퓨터','사용가능','2019-12-28');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'컴퓨터','사용가능','2019-12-28');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'컴퓨터','사용가능','2019-12-28');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'컴퓨터','사용가능','2019-12-28');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'컴퓨터','사용가능','2019-12-28');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'컴퓨터','사용가능','2019-12-28');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'컴퓨터','사용가능','2019-12-28');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'컴퓨터','사용가능','2019-12-28');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'컴퓨터','사용가능','2019-12-28');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'컴퓨터','사용가능','2020-04-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'컴퓨터','사용가능','2020-04-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'컴퓨터','사용가능','2020-04-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'컴퓨터','사용가능','2020-04-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'컴퓨터','사용가능','2020-04-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'컴퓨터','사용가능','2020-04-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'컴퓨터','사용가능','2020-04-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'컴퓨터','사용가능','2020-04-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'컴퓨터','사용가능','2020-04-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'컴퓨터','사용가능','2020-04-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'컴퓨터','사용가능','2020-04-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'컴퓨터','사용가능','2020-04-11');

--컴퓨터 6강의실
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'컴퓨터','사용가능','2019-12-07');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'컴퓨터','사용가능','2019-12-07');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'컴퓨터','사용가능','2019-12-07');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'컴퓨터','사용가능','2019-12-07');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'컴퓨터','사용가능','2019-12-07');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'컴퓨터','사용가능','2019-12-07');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'컴퓨터','사용가능','2019-12-07');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'컴퓨터','사용가능','2019-12-07');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'컴퓨터','사용가능','2019-12-28');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'컴퓨터','사용가능','2019-12-28');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'컴퓨터','사용가능','2019-12-28');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'컴퓨터','사용가능','2019-12-28');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'컴퓨터','사용가능','2019-12-28');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'컴퓨터','사용가능','2019-12-28');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'컴퓨터','사용가능','2019-12-28');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'컴퓨터','사용가능','2019-12-28');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'컴퓨터','사용가능','2019-12-28');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'컴퓨터','사용가능','2019-12-28');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'컴퓨터','사용가능','2020-04-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'컴퓨터','사용가능','2020-04-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'컴퓨터','사용가능','2020-04-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'컴퓨터','사용가능','2020-04-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'컴퓨터','사용가능','2020-04-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'컴퓨터','사용가능','2020-04-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'컴퓨터','사용가능','2020-04-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'컴퓨터','사용가능','2020-04-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'컴퓨터','사용가능','2020-04-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'컴퓨터','사용가능','2020-04-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'컴퓨터','사용가능','2020-04-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'컴퓨터','사용가능','2020-04-11');

--컴퓨터 사용불가
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'컴퓨터','사용불가','2012-10-31');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'컴퓨터','사용불가','2014-02-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'컴퓨터','사용불가','2014-02-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'컴퓨터','사용불가','2019-12-07');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'컴퓨터','사용불가','2019-09-17');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'컴퓨터','수리중','2020-01-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'컴퓨터','수리중','2020-03-05');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'컴퓨터','수리중','2019-12-07');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'컴퓨터','수리중','2020-04-11');

--책상 1강의실
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'책상','사용가능','2019-08-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'책상','사용가능','2019-08-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'책상','사용가능','2019-08-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'책상','사용가능','2019-08-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'책상','사용가능','2019-08-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'책상','사용가능','2019-08-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'책상','사용가능','2019-08-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'책상','사용가능','2019-08-15');

--책상 2강의실
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'책상','사용가능','2019-08-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'책상','사용가능','2019-08-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'책상','사용가능','2019-08-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'책상','사용가능','2019-08-15');


--책상 3강의실
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'책상','사용가능','2019-08-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'책상','사용가능','2019-08-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'책상','사용가능','2019-08-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'책상','사용가능','2019-08-15');


--책상 4강의실
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'책상','사용가능','2019-08-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'책상','사용가능','2019-08-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'책상','사용가능','2019-08-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'책상','사용가능','2019-08-15');

--책상 5강의실
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'책상','사용가능','2019-08-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'책상','사용가능','2019-08-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'책상','사용가능','2019-08-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'책상','사용가능','2019-08-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'책상','사용가능','2019-08-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'책상','사용가능','2019-08-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'책상','사용가능','2019-08-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'책상','사용가능','2019-08-15');

--책상 6강의실
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'책상','사용가능','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'책상','사용가능','2018-11-11');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'책상','사용가능','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'책상','사용가능','2019-08-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'책상','사용가능','2019-08-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'책상','사용가능','2019-08-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'책상','사용가능','2019-08-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'책상','사용가능','2019-08-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'책상','사용가능','2019-08-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'책상','사용가능','2019-08-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'책상','사용가능','2019-08-15');

--책상 사용불가 or 수리중
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'책상','사용불가','2012-06-03');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'책상','사용불가','2014-03-12');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'책상','사용불가','2012-06-03');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'책상','사용불가','2012-06-03');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'책상','사용불가','2014-03-12');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'책상','사용불가','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'책상','수리중','2018-05-22');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'책상','수리중','2019-08-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'책상','수리중','2019-05-21');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'책상','수리중','2018-11-11');

--의자 1강의실
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'의자','사용가능','2019-08-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'의자','사용가능','2019-08-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'의자','사용가능','2019-08-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'의자','사용가능','2019-08-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'의자','사용가능','2019-08-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'의자','사용가능','2019-08-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'의자','사용가능','2019-08-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'의자','사용가능','2019-08-18');

--의자 2강의실
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'의자','사용가능','2019-08-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'의자','사용가능','2019-08-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'의자','사용가능','2019-08-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'의자','사용가능','2019-08-18');


--의자 3강의실
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'의자','사용가능','2019-08-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'의자','사용가능','2019-08-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'의자','사용가능','2019-08-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'의자','사용가능','2019-08-18');


--의자 4강의실
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'의자','사용가능','2019-08-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'의자','사용가능','2019-08-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'의자','사용가능','2019-08-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'의자','사용가능','2019-08-18');

--의자 5강의실
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'의자','사용가능','2019-08-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'의자','사용가능','2019-08-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'의자','사용가능','2019-08-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'의자','사용가능','2019-08-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'의자','사용가능','2019-08-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'의자','사용가능','2019-08-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'의자','사용가능','2019-08-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'의자','사용가능','2019-08-18');

--의자 6강의실
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','사용가능','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','사용가능','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','사용가능','2019-05-24');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','사용가능','2019-08-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','사용가능','2019-08-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','사용가능','2019-08-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','사용가능','2019-08-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','사용가능','2019-08-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','사용가능','2019-08-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','사용가능','2019-08-18');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','사용가능','2019-08-18');

--의자 사용불가 or 수리중
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'의자','사용불가','2012-06-06');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'의자','사용불가','2012-06-06');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'의자','사용불가','2012-06-06');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,2,'의자','사용불가','2012-06-06');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'의자','사용불가','2012-06-06');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'의자','사용불가','2012-06-06');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,4,'의자','사용불가','2014-03-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'의자','사용불가','2014-03-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','사용불가','2014-03-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','사용불가','2014-03-15');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','사용불가','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','사용불가','2018-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'의자','수리중','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'의자','수리중','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,1,'의자','수리중','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'의자','수리중','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,3,'의자','수리중','2018-05-25');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,5,'의자','수리중','2019-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','수리중','2019-11-14');
insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,6,'의자','수리중','2019-05-24');




--tblAbleSubject, 강의가능과목
--ableSubjectSeq(강의가능과목번호), teacherSeq(교사번호), subjectSeq(과목번호)

-- 교사1(과정1)
-- 공통과목

insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T1', 1);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T1', 2);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T1', 3);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T1', 4);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T1', 5);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T1', 6);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T1', 7);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T1', 8);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T1', 9);
-- 특별과목
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T1', 10);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T1', 11);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T1', 14);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T1', 32);

-- 교사2(과정4)
-- 공통과목
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T2', 1);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T2', 2);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T2', 3);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T2', 4);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T2', 5);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T2', 6);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T2', 7);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T2', 8);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T2', 9);
-- 특별과목
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T2', 19);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T2', 20);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T2', 21);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T2', 22);

-- 교사3(과정5, 과정11)
-- 공통과목
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T3', 1);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T3', 2);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T3', 3);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T3', 4);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T3', 5);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T3', 6);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T3', 7);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T3', 8);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T3', 9);
-- 특별과목
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T3', 20);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T3', 23);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T3', 24);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T3', 27);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T3', 29);


-- 교사4(과정2)
-- 공통과목
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T4', 1);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T4', 2);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T4', 3);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T4', 4);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T4', 5);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T4', 6);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T4', 7);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T4', 8);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T4', 9);
-- 특별과목
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T4', 12);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T4', 13);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T4', 15);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T4', 16);

-- 교사5(과정6, 과정12)
-- 공통과목
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T5', 1);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T5', 2);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T5', 3);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T5', 4);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T5', 5);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T5', 6);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T5', 7);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T5', 8);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T5', 9);
-- 특별과목
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T5', 30);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T5', 31);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T5', 33);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T5', 34);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T5', 35);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T5', 36);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T5', 37);

-- 교사6(과정3)
-- 공통과목
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T6', 1);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T6', 2);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T6', 3);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T6', 4);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T6', 5);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T6', 6);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T6', 7);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T6', 8);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T6', 9);
-- 특별과목
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T6', 16);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T6', 17);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T6', 28);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T6', 36);

-- 교사7(과정7)
-- 공통과목
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T7', 1);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T7', 2);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T7', 3);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T7', 4);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T7', 5);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T7', 6);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T7', 7);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T7', 8);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T7', 9);
-- 특별과목
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T7', 25);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T7', 26);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T7', 35);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T7', 37);

-- 교사8(과정8)
-- 공통과목
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T8', 1);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T8', 2);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T8', 3);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T8', 4);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T8', 5);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T8', 6);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T8', 7);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T8', 8);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T8', 9);
-- 특별과목
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T8', 38);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T8', 39);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T8', 40);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T8', 41);

-- 교사9(과정9)
-- 공통과목
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T9', 1);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T9', 2);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T9', 3);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T9', 4);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T9', 5);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T9', 6);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T9', 7);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T9', 8);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T9', 9);
-- 특별과목
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T9', 17);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T9', 18);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T9', 28);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T9', 32);

-- 교사10(과정10)
-- 공통과목
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T10', 1);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T10', 2);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T10', 3);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T10', 4);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T10', 5);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T10', 6);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T10', 7);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T10', 8);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T10', 9);
-- 특별과목
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T10', 10);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T10', 12);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T10', 13);
insert into tblAbleSubject (ableSubjectSeq, teacherSeq, subjectSeq) values(seqAbleSubject.nextVal, 'T10', 19);


commit;