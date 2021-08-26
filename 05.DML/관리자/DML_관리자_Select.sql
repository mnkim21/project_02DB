--DML_관리자.sql

-- 출력

/*
----------------------------
업무영역 - 기초정보관리
요구사항 ID - A001
요구사항 명 - 기초정보관리
----------------------------

- 과정번호가 입력, 출력, 수정, 삭제된다.
- 과정명이 입력, 출력, 수정, 삭제된다.
- 강의실명 (총 정원 포함)이 입력, 출력, 수정, 삭제된다.
- 과목번호가 입력, 출력, 수정, 삭제된다.
- 과목명이 입력, 출력, 수정, 삭제된다.
- 교재 명 (출판사 명 포함) 이 입력, 출력, 수정, 삭제된다
- 교사 번호가 입력, 출력, 수정, 삭제된다.
- 교사 이름이 입력, 출력, 수정, 삭제된다. 

*/


--[[출력]]
select 
    tblCurriculum.currSeq as "과정번호",
    tblCurriculum.currName as "과정명",
    tblClass.className as "강의실명",
    tblClass.classCount as "강의실인원",
    tblSubject.subjectSeq as "과목번호",
    tblSubject.subjectName as "과목명",
    tblBook.bookName as "교재명",
    tblBook.publisher as "출판사명",
    tblTeacher.teacherSeq as "교사번호",
    tblTeacher.teacherName as "교사명"
from tblCurriculum
    inner join tblOpenCurr
        on tblCurriculum.currSeq = tblOpenCurr.currSeq
            inner join tblClass
                on tblOpenCurr.classNum = tblClass.classNum
                    inner join tblOpenSubject
                        on tblOpenCurr.openCurrSeq = tblOpenSubject.openCurrSeq
                            inner join tblSubject
                                on tblOpenSubject.subjectSeq = tblSubject.subjectSeq
                                    inner join tblBook
                                        on tblSubject.subjectSeq=tblBook.subjectSeq
                                            inner join tblTeacher
                                               on tblOpenCurr.teacherSeq = tblTeacher.teacherSeq;
/*
-----------------------------
업무영역 - 교사 계정 관리
요구사항 ID - A002-01
요구사항 명 - 교사 계정관리
-----------------------------

- 교사 번호를 입력, 수정, 삭제, 출력할 수 있다.
- 교사 이름을 입력, 수정, 삭제, 출력할 수 있다.
- 교사의 주민번호 뒷자리를 입력, 수정, 삭제, 출력할 수 있다.
- 교사의 전화 번호를 입력, 수정, 삭제, 출력할 수 있다.
- 과목 번호를 입력, 수정, 삭제, 출력할 수 있다.
- 교사의 강의 가능 과목을 입력, 수정, 삭제, 출력할 수 있다.
- 교사의 입사 일자를 입력, 수정, 삭제, 출력할 수 있다.

*/

--[[출력]]
select
    tblTeacher.teacherSeq as "교사번호",                    
    tblTeacher.teacherName as "교사이름",                   
    tblTeacher.teacherSsn as "주민번호뒷자리",              
    tblTeacher.teacherTel as "전화번호",                    
    tblSubject.subjectSeq as "과목번호",                   
    tblSubject.subjectName as "과목명"   
from tblTeacher
    inner join tblAbleSubject 
        on tblTeacher.teacherSeq = tblAbleSubject.teacherSeq
            inner join tblSubject 
                on tblAbleSubject.subjectSeq = tblSubject.subjectSeq
                    order by tblTeacher.teacherSeq, tblSubject.subjectSeq;
/*
---------------------------------
업무영역 - 특정 교사 계정 관리
요구사항 ID - A002-02
요구사항 명 - 특정 교사 계정관리
---------------------------------

- 교사 번호를 입력, 삭제, 출력할 수 있다.
- 배정된 과목번호를 입력, 삭제, 출력할 수 있다.
- 배정된 과목명을 입력, 수정, 삭제, 출력할 수 있다.
- 배정된 과정번호를 입력, 삭제, 출력할 수 있다.
- 배정된 과정명을 입력, 수정, 삭제, 출력할 수 있다.
- 배정된 과정 기간을 입력, 수정, 삭제, 출력할 수 있다.
- 배정된 강의 과목기간(시작 및 종료 연월일)을 입력, 수정, 삭제, 출력할 수 있다.
- 배정된 교재명을 입력, 수정, 삭제, 출력할 수 있다.
- 배정된 강의실을 입력, 수정, 삭제, 출력할 수 있다.
- 배정된 강의 진행 여부(날짜 기준)을 입력, 수정, 삭제, 출력할 수 있다.

*/

--[[출력]]
select 
    tblTeacher.teacherSeq as "교사번호", 
    tblCurriculum.currSeq as "배정과정번호",
    tblCurriculum.currName as "배정과정명",
    tblCurriculum.currPeriod || '일' as "과정기간",
    tblSubject.subjectSeq as "배정과목번호",
    tblSubject.subjectName as "배정과목명",
    tblOpenSubject.subjectStartDate||' ~ '|| tblOpenSubject.subjectEndDate as "과목기간",
    tblBook.bookName   as "교재명",
    tblClass.className as "강의실명",
    case
        when sysdate < tblOpenSubject.subjectStartDate then '강의예정'
        when tblOpenSubject.subjectStartDate <=sysdate and tblOpenSubject.subjectEndDate > sysdate then '강의중'    
        else '강의종료'
    end as "강의진행여부"
from tblTeacher
    inner join tblOpenCurr
        on tblTeacher.teacherSeq = tblOpenCurr.teacherSeq
            inner join tblCurriculum
                on tblOpenCurr.currSeq = tblCurriculum.currSeq
                    inner join tblOpenSubject
                        on tblOpenCurr.openCurrSeq = tblOpenSubject.openCurrSeq
                            inner join tblSubject
                                on tblOpenSubject.subjectSeq = tblSubject.subjectSeq
                                    inner join tblBook
                                        on tblSubject.subjectSeq = tblBook.subjectSeq
                                            inner join tblClass
                                                on tblOpenCurr.classNum=tblClass.classNum
                                                    order by tblCurriculum.currSeq, tblOpenSubject.subjectStartDate;

/*
---------------------------------
업무영역 - 교사 이력 관리
요구사항 ID - A002-03
요구사항 명 - 교사 이력관리
---------------------------------

- 교사번호를 입력, 삭제, 출력할 수 있다.
- 교사이름을 입력, 수정, 삭제, 출력할 수 있다.
- 학력을 입력, 수정, 삭제, 출력할 수 있다
- 경력사항을 입력, 수정, 삭제, 출력할 수 있다.

*/


select 
    tblTeacher.teacherSeq as "교사번호",
    tblTeacher.teacherName as "교사명",
    tblTeacherHistory.teacherEdu as "학력",
    tblTeacherHistory.teacherCareer as "경력사항"
from tblTeacher
    inner join tblTeacherHistory
    on tblTeacher.teacherSeq = tblTeacherHistory.teacherSeq;
    
/*
---------------------------------
업무영역 - 개설과정관리
요구사항 ID - A003 - 01
요구사항 명 - 개설과정관리
---------------------------------

- 교사번호를 입력, 삭제, 출력할 수 있다.
- 과정번호를 입력, 삭제, 출력할 수 있다.
- 과정명을 입력, 수정, 삭제, 출력할 수 있다.
- 과정기간(시작 연월일, 종료 연월일)을 입력, 수정, 삭제, 출력할 수 있다.
- 과목번호를 입력,수정,삭제,출력할 수 있다.
- 과목명을 입력,수정,삭제,출력할 수 있다.
- 과목기간을 입력,수정,삭제,출력할 수 있다,
- 교재명을 입력,수정,삭제,출력할 수 있다.
- 강의진행여부를 입력,수정,삭제,출려갈 수 있다.
- 강의실 정보를 입력, 수정, 삭제, 출력할 수 있다.
- 개설과목 등록여부를 입력, 수정, 삭제, 출력할 수 있다.
- 강의실 최대 인원을 출력할 수 있다.
- 교육생 등록인원을 입력, 수정, 삭제, 출력할 수 있다.


*/

select 
    tblTeacher.teacherSeq as "교사번호", 
    tblCurriculum.currSeq as "과정번호",
    tblCurriculum.currName as "과정명",
    tblCurriculum.currPeriod || '일' as "과정기간",
    tblSubject.subjectSeq as "과목번호",
    tblSubject.subjectName as "과목명",
    tblOpenSubject.subjectStartDate||' ~ '|| tblOpenSubject.subjectEndDate as "과목기간",
    tblBook.bookName   as "교재명",
    tblClass.classNum || '강의실' as "강의실명",    
    tblCurriculum.currRegYn as "개설과목등록여부",                                   
    tblClass.classCount as "교육생인원",    
    case
        when sysdate < tblOpenSubject.subjectStartDate then '강의예정'
        when tblOpenSubject.subjectStartDate <=sysdate and tblOpenSubject.subjectEndDate > sysdate then '강의중'    
        else '강의종료'
    end as "강의진행여부"
from tblTeacher
    inner join tblOpenCurr
        on tblTeacher.teacherSeq = tblOpenCurr.teacherSeq
            inner join tblCurriculum
                on tblOpenCurr.currSeq = tblCurriculum.currSeq
                    inner join tblOpenSubject
                        on tblOpenCurr.openCurrSeq = tblOpenSubject.openCurrSeq
                            inner join tblSubject
                                on tblOpenSubject.subjectSeq = tblSubject.subjectSeq
                                    inner join tblBook
                                        on tblSubject.subjectSeq = tblBook.subjectSeq
                                            inner join tblClass
                                                on tblOpenCurr.classNum=tblClass.classNum
                                                    order by tblCurriculum.currSeq, tblOpenSubject.subjectStartDate;


/* 
---------------------------------
업무영역 - 특정개설과정관리
요구사항 ID - A003 - 02
요구사항 명 - 특정개설과정관리
---------------------------------
*/

--[[출력]]
select 
    tblOpenSubject.openCurrSeq as "개설과정번호",
    tblOpenSubject.openSubjectSeq as "개설과목번호",
    tblSubject.subjectName as "과목명",
    tblOpenSubject.subjectStartDate||' ~ '|| tblOpenSubject.subjectEndDate as "과목기간",
    tblClass.classNum || '강의실' as "강의실명",
    tblTeacher.teacherseq as "교사번호",
    tblTeacher.teacherName as "교사명",
    tblCurriculum.currRegYN as "개설과목등록여부",
    tblBook.bookName as "교재명",
    tblStudent.stdName as "교육생이름",
    tblStudent.stdSsn as "교육생 주민번호 뒷자리",
    tblStudent.stdTel as "교육생 전화번호",
    tblStudent.stdRegDate as "교육생 등록일",
    tblCompleteStatus.completeStatusDate as "수료일",
    case
        when tblCompleteStatus.completeStatusPF = 'P' then '수료'
        when tblCompleteStatus.completeStatusPF = 'F' then '중도탈락'
        else '수강중'
    end as "수료및중도탈락여부"
from tblOpenCurr
    inner join tblOpenSubject
        on tblOpenCurr.openCurrSeq = tblOpenSubject.openCurrSeq
            inner join tblSubject
                on tblOpenSubject.subjectSeq = tblSubject.subjectSeq
                    inner join tblClass
                        on tblOpenCurr.classNum = tblClass.classNum
                            inner join tblCurriculum
                                on tblOpenCurr.currSeq = tblCurriculum.currSeq
                                    inner join tblBook
                                        on tblSubject.subjectSeq = tblBook.subjectSeq
                                            inner join tblStudentClassReg
                                                on tblOpenCurr.openCurrSeq =tblStudentClassReg.openCurrSeq
                                                    inner join tblStudent
                                                        on tblStudentClassReg.stdSeq = tblStudent.stdSeq
                                                            left outer join tblCompleteStatus
                                                                on tblStudentClassReg.classRegSeq = tblCompleteStatus.classRegSeq
                                                                    inner join tblTeacher
                                                                         on tblopencurr.teacherseq = tblteacher.teacherseq;
/*완료
---------------------------------
업무영역 - 개설 과목 관리
요구사항 ID - A004
요구사항 명 - 개설 과목 관리
---------------------------------
*/

-- [[출력]]
select 
    tblOpencurr.currSeq as "개설과정번호",             
    tblOpenSubject.SubjectSeq as "개설과목번호",
    tblSubject.subjectName as "개설과목명",            
    tblOpenSubject.subjectStartDate||'~'||tblOpenSubject.subjectEndDate as "과목기간",  
    case
        when tblOpenSubject.subjectEndDate < sysdate then '강의종료'
        else '강의중'
    end as "강의진행상태",
    tblBook.bookName as "교재명",                      
    tblTeacher.teacherSeq as "교사번호",               
    tblTeacher.teacherName as "교사명"                 
from tblOpencurr 
    inner join tblOpenSubject 
        on tblOpencurr.openCurrSeq = tblOpenSubject.openCurrSeq
            inner join tblSubject
                on tblOpenSubject.subjectSeq = tblSubject.subjectSeq
                    inner join tblBook
                        on tblSubject.subjectSeq = tblBook.subjectSeq
                            inner join tblTeacher
                                on tblOpencurr.teacherSeq=tblTeacher.teacherSeq
                                    where tblOpenSubject.subjectStartDate between '2020-08-01' and sysdate
                                        order by tblOpencurr.currSeq, tblOpenSubject.subjectStartDate;
                                        


/*
1.
업무 영역 - 교육생 관리
요구사항 ID - A005-01
요구사항 명 - 교육생 관리
개요 - 관리자는 여러 명의 교육생 정보를 등록 및 관리할 수 있다.
요구사항내역
상세설명
- 교육생 번호를 입력, 수정, 삭제, 출력할 수 있다.
- 교육생 이름을 입력, 수정, 삭제, 출력할 수 있다.
- 주민번호 뒷자리를 입력, 수정, 삭제, 출력할 수 있다.
- 전화번호를 입력, 수정, 삭제, 출력할 수 있다.
- 교육생의 등록일을 출력할 수 있다.
- 수강신청횟수를 출력할 수 있다.
- 수료 및 중도 탈락 여부를 입력, 수정, 삭제, 출력할 수 있다.
- 수료 및 중도 탈락 일자를 입력, 수정, 삭제, 출력할 수 있다.
제약사항
- 교육생의 등록일은 자동으로 입력된다.
- 교육생에 대한 수료 및 중도 탈락 처리를 할 수 있어야 한다.
*/

--교육생 조회
select * from tblStudent;

select
    s.stdSeq as "교육생번호",
    s.stdName as "교육생이름",
    s.stdSsn as "교육생주민번호뒷자리",
    s.stdTel as "교육생전화번호",
    s.stdRegDate as "교육생등록일",
    s.stdCount as "교육생수강신청횟수",
    case
        when cs.completeStatusPF = 'P' then '수료'
        when cs.completeStatusPF = 'F' then '중도탈락'
        else '수강중'
    end as "수료및중도탈락여부",
    cs.completeStatusDate as "수료및중도탈락날짜"
from tblStudent s
    inner join tblStudentClassReg scr
        on s.stdSeq = scr.stdSeq
            left outer join tblCompleteStatus cs
                on scr.classRegSeq = cs.classregseq;

-------------------------------------------------------------------------------------------------------------------------        
                
/*
2.
업무 영역 - 특정 교육생 관리
요구사항 ID - A005-02
요구사항 명 - 특정 교육생 관리
개요 - 특정 교육생 정보를 등록 및 관리할 수 있다.
요구사항내역
상세설명
- 교육생 번호를 입력, 수정, 삭제, 출력할 수 있다.
- 교육생 이름을 입력, 수정, 삭제, 출력할 수 있다.
- 주민번호 뒷자리를 입력, 수정, 삭제, 출력할 수 있다.
- 전화번호를 입력, 수정, 삭제, 출력할 수 있다.
- 교육생의 등록일을 입력, 수정, 삭제, 출력할 수 있다.
- 교육생의 강의실을 입력, 수정, 삭제, 출력할 수 있다.
- 교육생이 수강하는 과정의 기간을 입력, 수정, 삭제, 출력할 수 있다.
- 수료 및 중도 탈락 여부를 입력, 수정, 삭제, 출력할 수 있다.
- 수료 및 중도 탈락 일자를 입력, 수정, 삭제, 출력할 수 있다.
제약사항
- 교육생의 등록일은 자동으로 입력된다.
- 교육생에 대한 수료 및 중도 탈락 처리를 할 수 있어야 한다.
*/    

--특정 교육생 조회

select
    s.stdSeq as "교육생번호",
    s.stdName as "교육생이름",
    s.stdSsn as "교육생주민번호뒷자리",
    s.stdTel as "교육생전화번호",
    s.stdRegDate as "교육생등록일",
    s.stdCount as "교육생수강신청횟수",
    case
        when cs.completeStatusPF = 'P' then '수료'
        when cs.completeStatusPF = 'F' then '중도탈락'
        else '수강중'
    end as "수료및중도탈락여부",
    cs.completeStatusDate as "수료및중도탈락날짜"
from tblStudent s
    inner join tblStudentClassReg scr
        on s.stdSeq = scr.stdSeq
            left outer join tblCompleteStatus cs
                on scr.classRegSeq = cs.classregseq
                    where s.stdSeq = 'S4';

-------------------------------------------------------------------------------------------------------------------------                

/*
3. ***
업무 영역 - 특정개설과정 선택 시 시험 관리 및 성적 조회
요구사항 ID	- A006-01	
요구사항 명 - 시험 관리 및 성적 조회
개요 - 관리자는 교육생의 시험전반을 관리하고 성적을 조회할 수 있다.
요구사항내역	
상세설명	
- 개설과목 번호를 입력, 수정, 삭제, 출력할 수 있다.
- 개설과목명을 입력, 수정, 삭제, 출력할 수 있다.
- 개설 과목기간을 입력, 수정, 삭제, 출력할 수 있다.
- 교재 명을 입력, 수정, 삭제, 출력할 수 있다.
- 교사 명을 입력, 수정, 삭제, 출력할 수 있다.
- 성적등록 여부를 입력, 수정, 삭제, 출력할 수 있다.
- 시험 문제 파일 등록여부를 입력, 수정, 삭제, 출력할 수 있다.
제약사항	- 모든 시험은 오프라인으로 진행하고, 실행과 결과만을 시스템으로 관리한다.
*/

select
    os.opensubjectSeq as "개설과목번호",
    su.subjectName as "개설과목명",
    su.subjectPeriod || '일' as "개설과목기간",
    b.bookName as "교재명",
    t.teacherName as "교사명",
    te.testRegYN as "시험지등록여부",
    case
      when sco.scoreSeq is not null then 'Y'
      when sco.scoreSeq is null then 'N'
     end as "성적등록여부"
from tblOpenSubject os
    inner join tblSubject su
        on os.subjectSeq = su.subjectSeq
            inner join tblBook b
                on os.subjectSeq = b.subjectSeq
                    inner join tblOpenCurr oc
                        on os.openCurrSeq = oc.openCurrSeq
                            inner join tblTeacher t
                                on oc.teacherSeq = t.teacherSeq
                                    inner join tblTest te
                                        on os.openSubjectSeq = te.openSubjectSeq
                                            left outer join tblScore sco
                                                on te.testSeq = sco.testSeq
                                                    where os.openCurrSeq = 1
                                                        order by os.openSubjectSeq;

                                
-------------------------------------------------------------------------------------------------------------------------

/*
4. ***
업무 영역 - 과목 별 출력 시 시험관리 및 성적 조회
요구사항 ID - A006-02
요구사항 명 - 시험 관리 및 성적 조회
개요 - 관리자는 교육생의 시험전반을 관리하고 성적을 조회할 수 있다.
요구사항내역
상세설명
- 개설 과정 명을 입력, 수정, 삭제, 출력할 수 있다.
- 개설 과정 기간을 입력, 수정, 삭제, 출력할 수 있다.
- 개설 강의실명을 입력, 수정, 삭제, 출력할 수 있다.
- 교사 명을 입력, 수정, 삭제, 출력할 수 있다.0
- 개설과목 번호를 입력, 수정, 삭제, 출력할 수 있다.
- 개설과목 명을 입력, 수정, 삭제, 출력할 수 있다.
- 수강한 모든 교육생의 이름을 입력, 수정, 삭제, 출력할 수 있다.
- 수강한 모든 교육생의 주민번호 뒷자리를 입력, 수정, 삭제, 출력할 수 있다.
- 수강한 모든 교육생의 필기점수를 입력, 수정, 삭제, 출력할 수 있다.
- 수강한 모든 교육생의 실기점수를 입력, 수정, 삭제, 출력할 수 있다.
- 수강한 모든 교육생들의 출석점수를 입력, 수정, 삭제, 출력할 수 있다.
제약사항
- 모든 시험은 오프라인으로 진행하고, 실행과 결과만을 시스템으로 관리한다.
*/

select
    c.currName as "개설과정명",
    c.currPeriod || '일' as "개설과정기간",
    cl.className as "강의실명",
    t.teacherName as "교사명",
    su.SubjectSeq as "개설과목번호",
    su.subjectName as "개설과목명",
    s.stdName as "교육생명",
    s.stdSsn as "교육생주민뒷자리",
    sco.writingScore as "교육생필기점수",
    sco.performScore as "교육생실기점수",
    sco.attendScore as "교육생출결점수"
from tblStudent s
    inner join tblStudentClassReg scr
        on s.stdSeq = scr.stdSeq
            inner join tblOpenCurr oc
                on scr.openCurrSeq = oc.openCurrSeq
                    inner join tblCurriculum c
                        on oc.currSeq = c.currSeq
                            inner join tblClass cl
                                on cl.classNum = oc.classNum
                                    inner join tblOpenSubject os
                                        on oc.openCurrSeq = os.openCurrSeq
                                            inner join tblSubject su
                                                on os.subjectSeq = su.subjectSeq
                                                    inner join tblTeacher t
                                                        on oc.teacherSeq = t.teacherSeq
                                                            inner join tblTest te
                                                                on os.openSubjectSeq = te.openSubjectSeq
                                                                    inner join tblScore sco
                                                                        on (sco.classRegSeq = scr.classRegSeq and sco.testSeq = te.testSeq)
                                                                            order by s.stdName, su.SubjectSeq;

-------------------------------------------------------------------------------------------------------------------------
/*
5.
업무 영역 - 교육생 개인별 출력 시 시험관리 및 성적조회
요구사항 ID - A006-03
요구사항 명 - 시험 관리 및 성적 조회
개요 - 관리자는 교육생의 시험전반을 관리하고 성적을 조회할 수 있다.
요구사항내역
상세설명
- 교육생 이름을 입력, 수정, 삭제, 출력할 수 있다.
- 주민번호 뒷자리를 입력, 수정, 삭제, 출력할 수 있다.
- 개설 과정 명을 입력, 수정, 삭제, 출력할 수 있다.
- 개설 과정기간을 입력, 수정, 삭제, 출력할 수 있다.
- 강의실명을 입력, 수정, 삭제. 출력할 수 있다.
- 개설과목 번호를 입력, 수정, 삭제, 출력할 수 있다.
- 개설과목 명을 입력, 수정, 삭제, 출력할 수 있다.
- 개설 과목 기간을 입력, 수정, 삭제, 출력할 수 있다.
- 교사 명을 입력, 수정, 삭제, 출력할 수 있다.
- 교육생의 필기점수를 입력, 수정, 삭제, 출력할 수 있다.
- 교육생의 실기점수를 입력, 수정, 삭제, 출력할 수 있다.
- 교육생들의 출석점수를 입력, 수정, 삭제, 출력할 수 있다. 
제약사항
- 모든 시험은 오프라인으로 진행하고, 실행과 결과만을 시스템으로 관리한다.
- 출석점수는 출석률이 90% 이상 출석일 경우 20점을 부여한다
  출석 점수는 출석률이 70%~90% 출석일 경우 15점을 부여한다.
  출석 점수는 출석률이 70% 미만 출석일 경우 10점을 부여한다.
- 총 점수 = 필기 40점 + 실기 40점 + 출석 20점
*/

select
    s.stdName as "교육생명",
    s.stdSsn as "교육생주민뒷자리",
    c.currName as "개설과정명",
    c.currPeriod || '일' as "개설과정기간",
    cl.className as "강의실명",
    su.SubjectSeq as "개설과목번호",
    su.subjectName as "개설과목명",
    su.subjectPeriod || '일' as "개설과목기간",
    t.teacherName as "교사명",
    sco.writingScore as "교육생필기점수",
    sco.performScore as "교육생실기점수",
    sco.attendScore as "교육생출결점수"
from tblStudent s
    inner join tblStudentClassReg scr
        on s.stdSeq = scr.stdSeq
            inner join tblOpenCurr oc
                on scr.openCurrSeq = oc.openCurrSeq
                    inner join tblCurriculum c
                        on oc.currSeq = c.currSeq
                            inner join tblClass cl
                                on cl.classNum = oc.classNum
                                    inner join tblOpenSubject os
                                        on oc.openCurrSeq = os.openCurrSeq
                                            inner join tblSubject su
                                                on os.subjectSeq = su.subjectSeq
                                                    inner join tblTeacher t
                                                        on oc.teacherSeq = t.teacherSeq
                                                            inner join tblTest te
                                                                on os.openSubjectSeq = te.openSubjectSeq
                                                                    inner join tblScore sco
                                                                        on (sco.classRegSeq = scr.classRegSeq and sco.testSeq = te.testSeq)
                                                                            order by s.stdname, su.subjectSeq;
                                                                            
-------------------------------------------------------------------------------------------------------------------------                                                                           

/* 
6. ***
업무 영역 - 출결 관리 및 출결 조회
요구사항 ID - A007
요구사항 명 - 출결 관리 및 출결 조회
개요 - 관리자는 출결 전반을 관리하고 조회할 수 있다.
요구사항내역
상세설명
- 특정 과정 번호를 조회할 수 있다.
- 특정 과정 명을 조회할 수 있다.
- 특정 과정 기간을 조회할 수 있다.
- 특정 학생 번호를 조회할 수 있다.
- 특정 학생 명을 조회할 수 있다.
- 특정 교사 번호를 조회할 수 있다.
- 특정 교사 명을 조회할 수 있다.
- 출결 현황을 조회할 수 있다.
- 출결 일자를 조회할 수 있다.
제약사항
- 모든 출결 조회는 근태 상황을 구분할 수 있어야 한다. (정상, 지각, 조퇴, 외출, 병가, 기타)
- 출결 현황을 기간별(년, 월, 일) 조회할 수 있다.
- 특정(특정 과정, 특정 인원) 출결 현황을 조회할 수 있어야 한다.
*/

select
    c.currSeq as "과정번호",
    c.currName as "과정명",
    c.currPeriod as "과정기간",
    s.stdSeq as "학생번호",
    s.stdName as "학생명",
    t.teacherSeq as "교사번호",
    t.teacherName as "교사명",
    sa.studentAttendStatus as "출결현황",
    sa.attendDate as "출결일자"
from tblOpenCurr oc
    inner join tblCurriculum c
        on oc.currSeq = c.currSeq
            inner join tblStudentClassReg scr
                on oc.opencurrseq = scr.opencurrseq
                    inner join tblStudent s
                        on scr.stdSeq = s.stdSeq
                            inner join tblTeacher t
                                on oc.teacherSeq = t.teacherSeq
                                    inner join tblStudentAttend sa
                                        on scr.classregseq = sa.classregseq
                                            where c.currseq = 8;
                                                                   
-------------------------------------------------------------------------------------------------------------------------                                                                            

/*
7.
업무 영역 - 시설 관리
요구사항 ID - A008
요구사항 명 - 시설관리
개요 - 관리자는 학원 시설 전반을 관리할 수 있다.
요구사항내역
상세설명
- 컴퓨터 – 시설번호, 강의실 번호, 제품명, 상태, 구입일
- 빔 – 시설번호, 강의실 번호, 제품명, 상태, 구입일,
- 책상 – 시설번호, 강의실 번호, 제품명, 상태, 구입일  
- 의자 - 시설번호, 강의실 번호, 제품명, 상태, 구입일
- 에어컨 – 시설번호, 강의실 번호, 제품명, 상태, 구입일 
제약사항
- 관리자는 학원의 모든 시설 현황을 관리할 수 있어야 한다.
- 빔, 에어컨은 교실마다 1대가 있어야 한다.
*/

select 
    equipSeq as "시설번호",
    classNum as "강의실번호",
    equipName as "제품명",
    equipStatus as "상태",
    equipBuyDate as "구입일" 
from tblEquip
    where classNum = 6;
















