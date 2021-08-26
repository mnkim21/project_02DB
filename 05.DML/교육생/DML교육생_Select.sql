/*
-----------------------------
업무영역 - 교육생 계정
요구사항 ID - S001
요구사항 명 - 교육생 계정 관리
-----------------------------
*/
select 
    s.classRegSeq,
    round(sum(s.writingScore)/(select count(*) from tblopensubject where opencurrseq =
        (select opencurrseq from tblopencurr where opencurrseq =
            (select opencurrseq from tblStudentclassreg where classregseq = s.classregseq))),1) as sumWriting,
            
    round(sum(s.performScore)/(select count(*) from tblopensubject where opencurrseq =
        (select opencurrseq from tblopencurr where opencurrseq =
            (select opencurrseq from tblStudentclassreg where classregseq = s.classregseq))),1) as sumPerform,
            
    round(sum(s. attendScore)/(select count(*) from tblopensubject where opencurrseq =
        (select opencurrseq from tblopencurr where opencurrseq =
            (select opencurrseq from tblStudentclassreg where classregseq = s.classregseq))),1) as sumAttend,
    round((round(sum(s.writingScore)/(select count(*) from tblopensubject where opencurrseq =
        (select opencurrseq from tblopencurr where opencurrseq =
            (select opencurrseq from tblStudentclassreg where classregseq = s.classregseq))),1) +
    round(sum(s.performScore)/(select count(*) from tblopensubject where opencurrseq =
        (select opencurrseq from tblopencurr where opencurrseq =
            (select opencurrseq from tblStudentclassreg where classregseq = s.classregseq))),1) +
    round(sum(s. attendScore)/(select count(*) from tblopensubject where opencurrseq =
        (select opencurrseq from tblopencurr where opencurrseq =
            (select opencurrseq from tblStudentclassreg where classregseq = s.classregseq))),1)),1) as sumresult
from tblScore s group by classregseq;

select
    s.stdseq as stdseq,
    s.stdname as stdname,
    s.stdssn as stdssn,
    s.stdTel as stdTel,
    s.stdregdate as stdregdate,
    oc.currEnddate+2 as currEnddate,
    fnCompleteStatus(cs.completestatuspf) as completestatuspf, 
    c.currname as currname,
    c.currperiod as currperiod,
    case
        when score.classRegSeq = sc.classregseq then score.sumresult||'점'
        else '미정'
    end as resultscore,
    round((select count(*) from tblStudentAttend where tblStudentAttend.studentAttendStatus='정상' and tblStudentAttend.classregseq =
        (select classregseq from tblStudentClassReg where tblStudentClassReg.stdseq=s.stdSeq))/c.currPeriod*100,1)||'%' as attendancePer,
    round((survey.sotong+survey.jundal+survey.jukjul+survey.yului+survey.yuiksung)/5,1) as currsurvey,
    career.stdEdu as stdEdu,
    career.wishfield as wishfield,
    career.wishsalary as wishsalary
from tblStudent s
    inner join tblStdCareer career
        on s.stdseq = career.stdseq
            inner join tblStudentClassReg sc
                on s.stdseq = sc.stdseq
                    left outer join tblCompleteStatus cs
                        on sc.classregseq = cs.classregseq
                            left outer join tblCurrsurvey survey
                                on sc.classregseq = survey.classregseq
                                        inner join tblOpenCurr oc
                                            on sc.openCurrseq = oc.openCurrseq
                                                inner join tblCurriculum c
                                                    on oc.currseq = c.currseq
                                                        left outer join vwCurrScore score
                                                            on sc.classregseq = score.classregseq; 


/*
-----------------------------
업무영역 - 성적 조회
요구사항 ID - S002
요구사항 명 - 성적조회 관리
-----------------------------
*/
select
    s.stdseq as stdseq,
    s.stdname as stdname,
    c.currname as currname,
    c.currperiod || '일' as currperiod,
    s.subjectname as subjectname,
    oc.classnum ||'강의실' as classnum,
    os.subjectenddate-os.subjectstartdate || '일' as subjectperiod,
    b.bookname as bookname,
    teacher.teachername as teachername,
    tp.writingPoint as writingPoint,
    tp.performpoint as performpoint,
    tp.attendpoint as attendpoint,
    test.testdate as testdate,
    score.writingScore as writingScore,
    score.performScore as performScore,
    score.attendScore as attendScore,
    (score.writingScore+score.performScore+score.attendScore) as resultScore
from tblStudent s
    inner join tblstudentclassreg sc
        on s.stdseq = sc.stdseq
            inner join tblopencurr oc
                on sc.opencurrseq = oc.opencurrseq
                    inner join tblcurriculum c
                        on oc.currseq = c.currseq
                            inner join tblopensubject os
                                on oc.opencurrseq = os.opencurrseq
                                    inner join tblsubject s
                                        on os.subjectseq = s.subjectseq
                                            inner join tblBook b
                                                on s.subjectseq = b.subjectseq
                                                    inner join tblTeacher teacher
                                                        on oc.teacherseq = teacher.teacherseq
                                                            inner join tblTestPoint tp
                                                                on (teacher.teacherseq = tp.teacherseq and s.subjectseq = tp.opensubjectseq )
                                                                    inner join tblTest test
                                                                        on test.opensubjectseq =os.opensubjectseq
                                                                            inner join tblScore score
                                                                                on (score.classregseq = sc.classregseq and score.testseq = test.testseq);

/*
-----------------------------
업무영역 - 출결 조회
요구사항 ID - S003
요구사항 명 - 출결 조회 관리
-----------------------------
*/
select
    s.stdSeq as stdSeq,
    s.stdName as stdName,
    curr.currSeq as currSeq,
    curr.currName as currName,
    curr.currPeriod as currPeriod,
    sa.intime as intime,
    sa.outtime as outtime,
    sa.attenddate as attenddate,
    sa.studentattendstatus as studentattendstatus
from tblStudent s
    inner join tblStudentClassReg sc
        on s.stdSeq = sc.stdSeq
            inner join tblOpenCurr openCurr
                on sc.opencurrseq = openCurr.opencurrseq
                    inner join tblcurriculum curr
                        on opencurr.currseq = curr.currseq
                             inner join tblStudentAttend sa
                                on sc.classregseq = sa.classregseq;                                                                                


/*
-----------------------------
업무영역 - 과정 평가
요구사항 ID - S004
요구사항 명 - 과정 평가 관리
-----------------------------
*/
select
    s.stdSeq as stdSeq,
    s.stdName as stdName,
    curr.currSeq as currSeq,
    curr.currName as currName,
    curr.currPeriod as currPeriod,
    teacher.teacherName as teacherName,
    round((currsurvey.sotong+currsurvey.jundal+currsurvey.jukjul+currsurvey.yului+currsurvey.yuiksung)/5,1) as avgSurvey
from tblStudent s
    inner join tblStudentClassReg sc
        on s.stdSeq = sc.stdSeq
            inner join tblOpenCurr openCurr
                on sc.opencurrseq = openCurr.opencurrseq
                    inner join tblcurriculum curr
                        on opencurr.currseq = curr.currseq
                            inner join tblTeacher teacher
                                on openCurr.teacherseq = teacher.teacherseq
                                    inner join tblCurrSurvey currSurvey
                                        on sc.classregseq = currsurvey.classregseq;
                                        
                                  
                                  
                                        
/*
-----------------------------
업무영역 - 교육생 이력
요구사항 ID - S005
요구사항 명 - 교육생 이력 관리
-----------------------------
*/
select
    career.stdCareerSeq as stdCareerSeq,
    s.stdSeq as stdSeq,
    s.stdName as stdName,
    career.stdedu as stdedu,
    career.wishfield as wishfield,
    career.wishsalary as wishsalary
from tblStudent s  
    inner join tblstdcareer career
        on s.stdseq = career.stdseq;                                        
                                        




/*
-----------------------------
업무영역 - 교육생 자격증 관리
요구사항 ID - S006
요구사항 명 - 교육생 자격증 관리
-----------------------------
*/
select
    license.licenseseq as licenseseq,
    s.stdSeq as stdSeq,
    s.stdName as stdName,
    license.licensename as licensename,
    license.licensedate as licensedate
from tblStudent s  
    inner join tblStdLicense license
        on s.stdseq = license.stdseq
            order by to_number(substr(s.stdseq,2)) asc;                                        
                                        
                                        
                                        
                                        
                                        


/*
-----------------------------
업무영역 - 교육생 취업정보
요구사항 ID - S007
요구사항 명 - 교육생 취업 지원관리
-----------------------------
*/
select 
    sj.stdJobSeq as stdJobSeq,
    s.stdseq as stdseq,
    s.stdName as stdName,
    s.stdTel as stdTel,
    sj.stdField as stdField,
    sj.stdSalary as stdSalary,
    sj.stdDate as stdDate
from tblStudent s
    inner join tblStdjob sj
        on s.stdseq = sj.stdseq;                                        






/*
-----------------------------
업무영역 - 교육생 수료,중도탈락 및  수강상태 확인
요구사항 ID - S008
요구사항 명 - 교육생의 수강상태 확인
-----------------------------
*/
create or replace function fnCompleteStatus(
    fCompleteStatusPF varchar2
)return varchar2
is
begin
    return case
        when fCompleteStatusPF ='P' then '수료'
        when fCompleteStatusPF ='F' then '중도탈락'
        when fCompleteStatusPF is null then '수강중'
    end;
end;
-- 위에거 먼저 실행 후 아래 실행
select
    s.stdSeq as stdSeq,
    s.stdName as stdName,
    s.stdTel as stdTel,
    c.currName as currName,
    oc.currendDate as currendDate,
    fnCompleteStatus(cs.completestatuspf) as completestatuspf
from tblStudent s  
    inner join tblstudentclassreg sc
        on s.stdseq=sc.stdseq
            left outer join tblcompletestatus cs
                on sc.classregseq = cs.classregseq
                    inner join tblOpencurr oc
                        on sc.opencurrseq = oc.opencurrseq
                            inner join tblcurriculum c
                                on oc.currseq = c.currseq;





                                        
                                        
                                        