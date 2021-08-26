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

commit;
