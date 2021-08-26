--DML_교사.sql
--T001 강의스케줄 조회
-- 담당교사, 과정번호, 과정명, 과정기간, 강의상태, 강의실, 과목명, 과목기간, 교재명, 등록인원(과정1~6, 8 인원o, 나머지는 0명)
select
    t.teacherSeq as 담당교사,
    c.currseq as 과정번호,
    c.currName as 과정명,
    oc.currStartDate || ' ~ '||oc.currEndDate as 과정기간,
    case
        when sysdate < oc.currStartDate then '강의예정'
        when sysdate >= oc.currStartDate and sysdate <= oc.currEndDate then '강의중'
        else '강의종료'
    end as 강의상태,
    oc.classNum || '강의실' as 강의실,
    s.subjectName as 과목명,
    os.subjectStartDate || ' ~ ' || os.subjectEndDate as 과목기간,
    b.bookName as 교재명,
    (select count(*) from tblStudentClassReg scr where scr.openCurrSeq = oc.CurrSeq) as 등록인원
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
--where t.teacherseq = 'T3'
order by c.currseq, os.SubjectSeq;


-------------------------------------------------------------------------------------------------


--T001-1 특정과목 -> 해당과정 수료생 조회 -> 교육생 정보(이름,전화번호, 등록일, 수료 또는 중도탈락)
--과정 8은 수료 및 중도탈락여부 나옴// 나머지는 강의중

-- 특정 과목별 교육생
select
    scr.openCurrSeq as 과정번호,
    os.subjectSeq as 과목번호,
    sb.subjectName as 과목명,
    s.stdName as 이름,
    s.stdTel as 전화번호,
    s.stdRegDate as 등록일,
    case
        when cs.completeStatusPf = 'P' then '수료'
        when cs.completeStatusPf = 'F' then '중도탈락'
        else '수강중'
    end as 수료또는중도탈락
from tblStudentClassReg scr
    inner join tblStudent s
    on s.stdSeq = scr.stdSeq
        left outer join tblCompleteStatus cs
        on scr.classRegseq = cs.classRegSeq
            inner join tblopenSubject os
            on os.opencurrSeq = scr.opencurrSeq
                inner join tblSubject sb
                on sb.subjectSeq = os.subjectSeq
where os.subjectSeq = 2
order by scr.openCurrSeq, os.subjectSeq;

-- 추가) 과정별 교육생 -> 요구사항에는 없음
select
    scr.openCurrSeq as 과정,
    s.stdName as 이름,
    s.stdTel as 전화번호,
    s.stdRegDate as 등록일,
    case
        when cs.completeStatusPf = 'P' then '수료'
        when cs.completeStatusPf = 'F' then '중도탈락'
        else '수강중'
    end as 수료또는중도탈락
from tblStudentClassReg scr
    inner join tblStudent s
    on s.stdSeq = scr.stdSeq
        left outer join tblCompleteStatus cs
        on scr.classRegseq = cs.classRegSeq
order by scr.openCurrSeq;



----------------------------------------------------------------------------------


--T002 배점 입출력 
--배점 전반을 입출력


select  curr.currseq,
         curr.currName as "개설과정" ,
         (opensub.subjectstartdate || ' ~ ' || opensub.subjectenddate)  as "과정 수업 기간" , 
         opensub.subjectSeq as "과목번호" , 
         sub.subjectname as "과목명" , 
         (opencurr.classNum || '강의실') as "강의실번호" ,
         book.bookname as "교재명" ,
         test.testregyn as "시험지등록여부",
         test.testdate as "시험일" , 
         testpoint.writingPoint as "필기시험배점", 
         testpoint.performPoint as "실기시험배점" ,
         testpoint.attendPoint as "출결점수배점"        
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
                                 


--------------------------------------------------------------------------------------------------


--T003 배점 입출력 
--성적에 관련된 전반 정보를 입출력


select  curr.currName as "개설과정명" ,
          (opensub.subjectstartdate || ' ~ ' || opensub.subjectenddate)  as "과정 진행 기간" , 
          (opencurr.classNum || '강의실') as "강의실번호" ,
          opensub.subjectSeq as "과목번호" , 
          sub.subjectname as "과목명" , 
          (opensub.subjectStartDate || ' ~ ' || opensub.subjectEndDate ) as "과목 진행 기간",
          book.bookname as "교재명" ,
          test.testregyn as "시험지등록여부",
          test.testdate as "시험일" , 
         (select round(avg(writingScore),1) from tblScore s where s.testseq = test.testseq group by s.testseq) as "필기평균점수",
         (select round(avg(performScore),1) from tblScore s where s.testseq = test.testseq group by s.testseq) as "실기평균점수",
         (select round(avg(attendScore),1) from tblScore s where s.testseq = test.testseq group by s.testseq) as "출석평균점수"

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
                                                --inner join tblScore score
                                                  -- on test.testSeq = score.testSeq 
                                                            where currStartDate between '2021-01-01' and sysdate;
                                                   


--T003-01 특정 과목 성적 입출력
--특정 과목 성적 전반을 입출력 


select opensub.subjectSeq as "과목번호",
        sub.subjectName as "과목명",
        (opensub.subjectStartDate || ' ~ ' || opensub. subjectEndDate ) as "과목기간",
        student.stdname as "교육생이름",
        student.stdtel as "교육생 전화번호" ,
        case
        when cs.completestatuspf = 'P' then '수료'
        when cs.completestatuspf = 'F' then '중도탈락'
        else '수강중'
        end as "수료및중도탈락여부",
        score.writingscore as "필기점수",
        score.performscore  as "실기점수",
        score.attendscore as "출석점수", 
        (score.writingscore  +  score.performscore +score.attendscore ) as "합계"
        
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
                                          order by  student.stdname asc, opensub.subjectStartDate asc;



----------------------------------------------------------------------------------------------------------

-- T004 출결관리 - 과정별
-- 과정별 출결조회 가능/ 과정번호, 과정명, 과정기간, 교육생번호, 교육생명, 출석상태, 출석날짜


select
    scr.openCurrSeq as 과정번호,
    c.currName as 과정명,
    oc.currStartDate || ' ~ ' || oc.currEndDate as 과정기간,
    s.stdSeq as 교육생번호,
    s.stdName as 교육생명,
    sa.attendDate as 출결날짜,
    sa.studentAttendStatus as 출결상태
from tblStudentClassReg scr
    inner join tblStudentAttend sa
    on scr.classRegSeq = sa.classRegSeq
        inner join tblOpenCurr oc
        on scr.openCurrSeq = oc.openCurrSeq
            inner join tblCurriculum c
            on oc.currSeq = c.currSeq
                inner join tblStudent s
                on scr.stdSeq = s.stdSeq;
--where scr.openCurrSeq = 8;


-- T004 출결관리 - 교육생별
select
    scr.openCurrSeq as 과정번호,
    c.currName as 과정명,
    oc.currStartDate || ' ~ ' || oc.currEndDate as 과정기간,
    s.stdSeq as 교육생번호,
    s.stdName as 교육생명,
    sa.attendDate as 출결날짜,
    sa.studentAttendStatus as 출결상태
from tblStudentClassReg scr
    inner join tblStudentAttend sa
    on scr.classRegSeq = sa.classRegSeq
        inner join tblOpenCurr oc
        on scr.openCurrSeq = oc.openCurrSeq
            inner join tblCurriculum c
            on oc.currSeq = c.currSeq
                inner join tblStudent s
                on scr.stdSeq = s.stdSeq
where s.stdSeq = 'S150';