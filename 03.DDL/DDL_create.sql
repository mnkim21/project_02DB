--1. 관리자 테이블 생성
create table tblAdmin(
    adminSeq number primary key,
    adminName varchar2(20) not null,
    adminPassword varchar2(20) not null
);
--1. 관리자 시퀀스 생성
create sequence seqadmin;





--2. 교사 테이블 생성
create table tblTeacher(
    
        teacherSeq varchar2(10) primary key,
        teacherName varchar2(20) not null,
        teacherSsn number unique check(length(teacherSsn)=7) not null ,
        teacherTel varchar2(20) unique not null

);
--2. 교사 시퀀스 생성
create sequence seqTeacher;





--3. 학생 테이블 생성
create table tblStudent(
    stdSeq varchar2(10) primary key,
    stdName varchar2(20) not null,
    stdTel varchar2(20) unique not null,
    stdSsn number unique check(length(stdSsn)=7) not null,
    stdRegDate date not null,
    stdCount number not null
);
--3. 학생 시퀀스 생성
create sequence seqstudent;






--4. 강의실 테이블 생성
create table tblClass(
    classNum number primary key,
    className varchar2(20) not null,
    classCount number not null
);
--4. 강의실 시퀀스 생성
create sequence seqclass;




--5. 시설 테이블 생성
create table tblEquip(
    equipSeq number primary key,
    classNum number not null references tblClass (classNum),
    equipName varchar2(20) not null,
    equipStatus varchar2(20) not null,
    equipBuyDate date not null
);
--5. 시설 시퀀스 생성
create sequence seqEquip;




--6. 교사이력 테이블 생성
create table tblTeacherHistory(
    teacherHistorySeq number primary key,
    teacherSeq varchar2(10) not null references tblTeacher(teacherSeq),
    teacherEdu varchar2(100) not null,
    teacherCareer number not null
);
--6. 교사이력 시퀀스 생성 
create sequence seqTeacherHistory;



--7. 교사출결 테이블 생성
create table tblTeacherAttend(
     teacherAttendSeq varchar2(10) primary key,
     teacherSeq varchar2(10) not null references tblTeacher(teacherSeq),
     teacherAttendStatus varchar2(20) not null,
     teacherInTime date not null,
     teacherOutTime date not null,
     teacherAttendDate date not null
);
--7. 교사출결 시퀀스 생성
create sequence seqTeacherAttend;





--8. 교육생이력 테이블 생성
create table tblStdCareer(
    stdCareerSeq number primary key,
    stdSeq varchar2(10) not null references tblStudent(stdSeq),
    stdEdu varchar2(20) not null,
    wishField varchar2(100) not null,
    wishSalary number not null
);
--8. 교육생이력 시퀀스 생성
create sequence seqStdCareer;





--9. 교육생 취업 정보 테이블 생성
create table tblStdJob(
    stdJobSeq number primary key,
    stdSeq varchar2(10) not null references tblStudent(stdSeq),
    stdField varchar2(20) not null,
    stdDate date not null,
    stdSalary number not null
);
--9. 교육생 취업 정보 시퀀스 생성
create sequence seqStdJob;





--10. 교육생 자격증 테이블 생성
create table tblStdLicense(
    licenseSeq number primary key,
    stdSeq varchar2(10) not null references tblStudent(stdSeq),
    licenseName varchar2(100) not null,
    licenseDate date not null
);
--10. 교육생 자격증 시퀀스 생성
create sequence seqStdLicense;





--11.  과정 테이블 생성
create table tblCurriculum(
    currSeq number primary key,
    currName varchar2(150) not null,
    currRegYN varchar2(1) not null,
    currPeriod number not null
);
--11. 과정 시퀀스 생성
create sequence seqCurriculum;





--12. 개설 과정 테이블 생성
create table tblOpenCurr(
    openCurrSeq number primary key,
    currSeq number not null references tblCurriculum(currSeq),
    classNum number not null references tblClass(classNum),
    teacherSeq varchar2(10) not null references tblTeacher(teacherSeq),
    currStartDate date not null,
    currEndDate date not null
);
--12. 개설 과정 시퀀스 생성
create sequence seqOpenCurr;







--13. 과목 테이블 생성
create table tblSubject(
    subjectSeq number primary key,
    subjectName varchar2(100) not null,
    subjectPeriod number not null
);
--13. 과목 시퀀스 생성
create sequence seqSubject;



--14. 개설 과목 테이블 생성
create table tblOpenSubject(
    openSubjectSeq number primary key,
    subjectSeq number not null references tblSubject(subjectSeq),
    openCurrSeq number not null references tblOpenCurr(openCurrSeq),
    subjectStartDate date not null,
    subjectEndDate date not null
);
--14. 개설 과목 시퀀스 생성
create sequence seqOpenSubject;







--15. 교재 테이블 생성
create table tblbook(
    bookSeq number primary key,
    SubjectSeq number not null references tblSubject(SubjectSeq),
    bookName varchar2(150) not null,
    publisher varchar2(70) not null

);
--15. 교재 시퀀스 생성
create sequence seqBook;






--16. 배점 테이블 생성
create table tblTestPoint(
    testPointSeq number primary key,
    teacherSeq varchar2(10) not null references tblTeacher(teacherSeq),
    openSubjectSeq number not null references tblOpenSubject(openSubjectSeq),
    writingPoint number,
    performPoint number,
    attendPoint number not null
);
--16. 배점 시퀀스 생성
create sequence seqTestPoint;






--17. 강의가능과목 테이블 생성
create table tblAbleSubject(
    ableSubjectSeq number primary key,
    teacherSeq varchar2(10) not null references tblTeacher(teacherSeq),
    subjectSeq number not null references tblSubject(subjectSeq)
);
--17. 강의가능과목 시퀀스 생성
create sequence seqAbleSubject;





--18. 시험 테이블 생성
create table tblTest(
    testSeq number primary key,
    openSubjectSeq number not null references tblOpenSubject(openSubjectSeq),
    testRegYN varchar2(1) not null,
    testDate date not null
);
--18. 시험 시퀀스 생성
create sequence seqTest;





--19. 교육생수강정보 테이블 생성
create table tblStudentClassReg(
    classRegSeq varchar2(10) primary key,
    stdSeq varchar2(10) not null references tblStudent(stdSeq),
    opencurrSeq number not null references tblOpenCurr(openCurrSeq)
);
--19. 교육생수강정보 시퀀스 생성
create sequence seqStudentClassReg;





--20. 성적 테이블 생성
create table tblScore(
    scoreSeq varchar2(10) primary key,
    testSeq number not null references tblTest(testSeq),
    classRegSeq varchar2(10) not null references tblStudentClassReg(classRegSeq),
    writingScore number not null,
    performScore number not null,
    attendScore number not null
);
--20. 성적 시퀀스 생성
create sequence seqScore;



--21. 교육생 출결 테이블 생성
create table tblStudentAttend(
    attendSeq number primary key,
    classRegSeq varchar2(10) not null references tblStudentClassReg(classRegSeq),
    intime date,
    outTime date,
    attendDate date not null,
    studentAttendStatus varchar2(20)
);
--21. 교육생 출결 시퀀스 생성
create sequence seqStudentAttend;








--22. 과정 평가 테이블 생성
create table tblCurrSurvey(
    currSurveySeq number primary key,
    classRegSeq varchar2(10) not null references tblStudentClassReg(classRegSeq),
    sotong number not null,
    jundal number not null,
    jukjul number not null,
    yului number not null,
    yuiksung number not null
);
--22. 과정 평가 시퀀스 생성
create sequence seqCurrSurvey;






--23. 교육생 수료 및 중도 탈락 테이블 생성
create table tblCompleteStatus(
    completeStatusSeq number primary key,
    classRegSeq varchar2(10) not null references tblStudentClassReg(classRegSeq),
    completeStatusDate date not null,
    completeStatusPF varchar2(1) not null
);
--23. 교육생 수료 및 중도 탈락 시퀀스 생성
create sequence seqCompleteStatus
increment by 1
start with 1000;






