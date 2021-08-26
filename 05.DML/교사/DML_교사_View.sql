/*
����
-�䱸���� T001- [���ǽ����� ��ȸ]
*/
--===================================================================================== 
-- T001. ���ǽ����� ��ȸ
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
    oc.classNum || '���ǽ�' as class,
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
����
-�䱸���� T001-1. [Ư�� ���� ������ ��ȸ]
*/
--=====================================================================================                    
--T001-1. Ư�� ���� ������ ��ȸ
--===================================================================================== 
-- ��
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
- ����
- �䱸���� T002 - [���� ���� �����]
*/
--==================================================================================
-- Ư�� �����ȣ ���� �� ��� -> ���, �ʱ�, �Ǳ� ���� + ���賯¥, ���蹮�� �Է��ϴ� ��:vwDistribution)
--===================================================================================
create or replace view vwDistribution
as
select  curr.currseq as currseq,
         curr.currName as opencurrName ,
         (opensub.subjectstartdate || ' ~ ' || opensub.subjectenddate)  as  currdate , 
         opensub.subjectSeq as subNum , 
         sub.subjectname as subName , 
         (opencurr.classNum || '���ǽ�') as classRoomNum ,
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
-����
-�䱸���� T003 - [������ ���õ� �������� ���� ���] 
*/

--==============================================================
-- �������� ��ü ���� ������ȸ ����� �� ����: vwScoreInoutPut
--==============================================================
create or replace view vwScoreInoutPut
as
select 
        --teacher.teacherSeq as "teacherNum",
        opensub.subjectSeq as subjectNum , 
        curr.currName as openCurrName ,
        (opensub.subjectstartdate || ' ~ ' || opensub.subjectenddate)  as currDate , 
        (opencurr.classNum || '���ǽ�') as ClassroomNum ,
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
--���� ����� �� ����: vwScoreInoutPut
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
                                             -- where student.stdname = '������'
                                                order by  student.stdname asc, opensub.subjectStartDate asc;



/*
-����
-�䱸����T004 - [�����ȸ] 
*/

--=====================================================================================
-- T004 - �����ȸ View 
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
  