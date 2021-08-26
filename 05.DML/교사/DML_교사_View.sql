/*
교사
-요구사항 T001- [강의스케쥴 조회]
*/
--===================================================================================== 
-- T001. 강의스케줄 조회
--===================================================================================== 
-- View
create or replace view vwSchedule
as
select
    t.teacherSeq as teacherSeq,
    c.currseq as currseq,
    c.currName as currName,
    fDate(oc.currStartDate, oc.currEndDate) as currDate,
    fnCurrStatus(oc.currStartDate, oc.currEndDate) as currStatus,
    oc.classNum || '강의실' as class,
    s.subjectName as subName,
    fDate(os.subjectStartDate, os.subjectEndDate) as subDate,
    b.bookName as bookName,
    (select count(*) from tblStudentClassReg scr where scr.openCurrSeq = oc.CurrSeq) as quota
from tblTeacher t
    inner join tblOpenCurr oc
    on t.teacherSeq = oc.teacherSeq
        inner join tblOpenSubject os
        on oc.openCurrSeq = os.openCurrSeq
            inner join tblSubject s
            on os.subjectSeq = s.subjectSeq
                inner join tblBook b
                on s.SubjectSeq = b.subjectSeq
                    inner join tblcurriculum c
                    on c.currseq = oc.currseq
                        order by c.currseq, os.SubjectSeq;

/*
교사
-요구사항 T001-1. [특정 과목별 교육생 조회]
*/
--=====================================================================================                    
--T001-1. 특정 과목별 교육생 조회
--===================================================================================== 
-- 뷰
create or replace view vwSubSchedule
as
select
    scr.openCurrSeq as openCurrSeq,
    os.subjectSeq as subSeq,
    sb.subjectName as subName,
    s.stdName as stdName,
    s.stdTel as stdTel,
    s.stdRegDate as stdRegDate,
    fnCompleteStatus(cs.completeStatusPf) as PorF
from tblStudentClassReg scr
    inner join tblStudent s
    on s.stdSeq = scr.stdSeq
        left outer join tblCompleteStatus cs
        on scr.classRegseq = cs.classRegSeq
            inner join tblopenSubject os
            on os.opencurrSeq = scr.opencurrSeq
                inner join tblSubject sb
                on sb.subjectSeq = os.subjectSeq
                    order by scr.openCurrSeq, os.subjectSeq;
 

/*
- 교사
- 요구사항 T002 - [배점 전반 입출력]
*/
--==================================================================================
-- 특정 과목번호 선택 시 출력 -> 출결, 필기, 실기 배점 + 시험날짜, 시험문제 입력하는 뷰:vwDistribution)
--===================================================================================
create or replace view vwDistribution
as
select  curr.currseq as currseq,
         curr.currName as opencurrName ,
         (opensub.subjectstartdate || ' ~ ' || opensub.subjectenddate)  as  currdate , 
         opensub.subjectSeq as subNum , 
         sub.subjectname as subName , 
         (opencurr.classNum || '강의실') as classRoomNum ,
         book.bookname as Book ,
         test.testregyn as testRegYN ,
         test.testdate as TestDate , 
         testpoint.writingPoint as writingPoint , 
         testpoint.performPoint as  performPoint,
         testpoint.attendPoint as  attendPoint     
         
         from tblCurriculum curr
             inner join tblOpenCurr opencurr
                 on curr.currseq = opencurr.currseq
                     inner join tblOpensubject opensub
                         on opencurr.opencurrseq = opensub.opencurrseq and opensub.openCurrSeq = opencurr.CurrSeq
                              inner join tblsubject sub
                                   on opensub.subjectseq = sub.subjectseq 
                                     inner join tblbook book
                                       on sub.subjectseq = book.subjectseq
                                         inner join tblTest test
                                            on opensub.opensubjectseq = test.opensubjectseq
                                                inner join tblTestPoint testpoint
                                                    on opensub.subjectSeq = testpoint.openSubjectSeq 
                                                        inner join tblTeacher t
                                                            on t.teacherseq = testpoint.teacherseq and opencurr.teacherSeq = t.teacherSeq
                                                                order by curr.currseq;




/*
-교사
-요구사항 T003 - [성적에 관련된 전반적인 정보 출력] 
*/

--==============================================================
-- 진행중인 전체 과목별 성적조회 입출력 뷰 생성: vwScoreInoutPut
--==============================================================
create or replace view vwScoreInoutPut
as
select 
        --teacher.teacherSeq as "teacherNum",
        opensub.subjectSeq as subjectNum , 
        curr.currName as openCurrName ,
        (opensub.subjectstartdate || ' ~ ' || opensub.subjectenddate)  as currDate , 
        (opencurr.classNum || '강의실') as ClassroomNum ,
        sub.subjectname as subjectName , 
        (opensub.subjectStartDate || ' ~ ' || opensub.subjectEndDate ) as subjectDate,
        book.bookname as Book,
         (select round(avg(attendScore),1) from tblScore s where s.testseq = test.testseq group by s.testseq) as avgattendScore,
         (select round(avg(writingScore),1) from tblScore s where s.testseq = test.testseq group by s.testseq) as avgwritingScore,
         (select round(avg(performScore),1) from tblScore s where s.testseq = test.testseq group by s.testseq) as avgperformScore,
         test.testregyn as testReg, 
         test.testdate as TestScoreset
       
        
         from tblCurriculum curr
         inner join tblOpenCurr opencurr
            on curr.currseq = opencurr.currseq
                inner join tblOpensubject opensub
                    on opencurr.opencurrseq = opensub.opencurrseq
                        inner join tblsubject sub
                            on opensub.subjectseq = sub.subjectseq 
                                inner join tblbook book
                                    on sub.subjectseq = book.subjectseq
                                    inner join tblTest test
                                        on opensub.opensubjectseq = test.opensubjectseq
                                         --inner join tblTeacher teacher 
                                            --on opencurr.teacherSeq = teacher.teacherSeq
                                                            where currStartDate between '2021-01-01' and sysdate;
                                                               -- order by opencurr.classNum asc;


--===============================================================================
--성적 입출력 뷰 생성: vwScoreInoutPut
--===============================================================================

create or replace view vwScoreInoutPut
as
select 
        opensub.subjectSeq as subjectseq,
        sub.subjectName as subjectName,
        (opensub.subjectStartDate || ' ~ ' || opensub. subjectEndDate ) as subjectDate,
        --score.classRegSeq as subjectNum,
        student.stdSeq as studentSeq,
        student.stdname as studentName,
        student.stdtel  as studentTel,
        fnCompleteStatus(cs.completestatuspf) as status,
        score.writingscore as WritingScore,
        score.performscore as PerformeanceScore  ,
        score.attendscore as AttendScore, 
        (score.writingscore + score.performscore + score.attendscore ) as totalScore
        
        from tblSubject sub
            inner join tblOpenSubject opensub
                on sub.subjectSeq = opensub.subjectSeq
                  inner join tblTest test
                    on opensub.openSubjectSeq = test.openSubjectSeq
                      inner join tblOpenCurr opencurr
                        on opensub.openCurrSeq = opencurr.openCurrSeq
                           inner join tblStudentClassReg stdCR
                              on opencurr.openCurrSeq = stdCR.openCurrSeq 
                                 left outer join tblStudent student
                                  on stdCR.stdSeq =student.stdSeq
                                   left outer join tblCompleteStatus CS
                                     on stdCR.classRegSeq = CS.classRegSeq
                                       inner join tblScore score
                                        on (score.classRegSeq = stdCR.classRegSeq and score.testSeq = test.testSeq)
                                             -- where student.stdname = '강다은'
                                                order by  student.stdname asc, opensub.subjectStartDate asc;



/*
-교사
-요구사항T004 - [출결조회] 
*/

--=====================================================================================
-- T004 - 출결조회 View 
--=====================================================================================

create or replace view vwAttend
as
select
    scr.openCurrSeq as openCurrSeq,
    c.currName as currName,
    fDate(oc.currStartDate, oc.currEndDate) as currDate,
    s.stdSeq as stdSeq,
    s.stdName as stdName,
    sa.attendDate as attendDate,
    sa.studentAttendStatus as stdAttendStatus
from tblStudentClassReg scr
    inner join tblStudentAttend sa
    on scr.classRegSeq = sa.classRegSeq
        inner join tblOpenCurr oc
        on scr.openCurrSeq = oc.openCurrSeq
            inner join tblCurriculum c
            on oc.currSeq = c.currSeq
                inner join tblStudent s
                on scr.stdSeq = s.stdSeq;
  