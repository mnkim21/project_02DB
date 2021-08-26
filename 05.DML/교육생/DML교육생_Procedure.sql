----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/*
-----------------------------
업무영역 - 교육생 계정
요구사항 ID - S001
요구사항 명 - 교육생 계정 관리
-----------------------------

- 교육생 번호를 출력할 수 있다.
- 교육생 이름을 출력할 수 있다.
- 비밀번호(주민번호 뒷자리)를 출력할 수 있다.
- 전화번호를  출력할 수 있다.
- 등록일을 출력할 수 있다.
- 수료일을 출력할 수 있다.
- 수료및탈락여부를 출력할 수 있다.
- 과정을 출력할수 있다.
- 성적을 출력할수 있다.
- 출결을 출력할 수 있다. 
- 과정 평가 점수를 출력 할 수 있다.
- 이력을 출력할 수 있다.

*/
---------------------------------------------         
--성적을 가져오기 위한 뷰
create or replace view vwCurrScore
as
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

create or replace view vwStudent
as
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

create or replace procedure procShowStudent(
    pstdseq varchar2,
    pcursor out sys_refcursor
)
is
begin
    open pcursor for
        select *
            from vwStudent
                where stdseq = pstdseq;    
end;

--실행
declare
    vcursor sys_refcursor;
    vrow vwStudent%rowtype;
begin
    procShowStudent('교육생 번호 입력',vcursor);
    dbms_output.put_line('교육생번호   이름       비밀번호         전화번호        등록일        수료일   수강상태                             과정명                                           과정기간      성적       출석률        과정평가점수    학력     희망취업분야     희망연봉');
    loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        dbms_output.put_line(lpad(vrow.stdSeq,7,' ') ||'    '|| lpad(vrow.stdName,7,' ') ||'    '|| lpad(vrow.stdssn,7,' ') ||'   '|| lpad(vrow.stdTel,14,' ') ||'  '|| lpad(vrow.stdregdate,10,' ') ||'   '|| lpad(vrow.currEnddate,10,' ') ||'      '|| lpad(vrow.completestatuspf,5,' ') ||'      '|| lpad(vrow.currname,70,' ') ||'    '|| lpad(vrow.currperiod,9,' ')||'일'||'    '|| lpad(vrow.resultscore,5,' ')||'점' ||'       '|| lpad(vrow.attendancePer,5,' ') ||'      '|| lpad(vrow.currsurvey,10,' ') ||'   '|| lpad(vrow.stdEdu,7,' ')||'      '|| lpad(vrow.wishfield,10,' ')||'      '|| lpad(vrow.wishsalary,5,' '));
    end loop;
end;
  
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/*
-----------------------------
업무영역 - 성적 조회
요구사항 ID - S002
요구사항 명 - 성적조회 관리
-----------------------------

- 교육생 번호가 출력된다.
- 이름이 출력된다.
- 과정 명이 출력된다.
- 과정기간이 출력된다.
- 강의실이 출력된다.
- 과목번호가 출력된다.
- 과목명이 출력된다.
- 과목기간이 출력된다.
- 교재 명이 출력된다.
- 교사 명이 출력된다.
- 과목별 배점정보 – 출결이 출력된다.
- 과목별 배점정보 – 필기가 출력된다.
- 과목별 배점정보 – 실기가 출력된다.
- 과목별 성적 정보 – 출결이 출력된다.
- 과목별 성적 정보 – 필기가 출력된다.
- 과목별 성적 정보 – 실기가 출력된다.
- 과목별 시험 날짜가 출력된다.
- 과목별 성적이 출력된다.
*/
---------------------------------------------    

create or replace view vwStdScore
as
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
                                                                                
create or replace procedure procStdScore(
    pstdSeq varchar2,
    pcursor out sys_refcursor
)
is
begin
    open pcursor for
        select
            *
        from vwStdScore
            where stdseq = pstdSeq;
end;
                                                                                
                                                                                
--실행
declare
    vcursor sys_refcursor;
    vrow vwStdScore%rowtype;
begin
    procStdScore('교육생 번호 입력',vcursor);
    dbms_output.put_line('교육생번호     이름                           과정명                                             과정기간                       과목명        강의실번호        과목기간                           교재                         담당교사           필기배점      실기배점      출석배점     시험일       필기점수      실기점수      출석점수       과목별총점');
    dbms_output.put_line('-----------------------------------------------------------------------------------');
    loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        dbms_output.put_line(lpad(vrow.stdSeq,7,' ') ||'    '|| lpad(vrow.stdName,7,' ') ||'    '|| lpad(vrow.currname,70,' ') ||'    '|| lpad(vrow.currperiod,12,' ') ||'  '|| lpad(vrow.subjectname,30,' ') ||'      '|| lpad(vrow.classnum,10,' ') ||'      '|| lpad(vrow.subjectperiod,5,' ') ||'      '|| lpad(vrow.bookname,45,' ') ||'          '|| lpad(vrow.teachername,9,' ') ||'           '|| lpad(vrow.writingPoint,5,' ') ||'      '|| lpad(vrow.performpoint,5,' ') ||'      '|| lpad(vrow.attendpoint,10,' ') ||'      '|| lpad(vrow.testdate,10,' ')||'      '|| lpad(vrow.writingScore,5,' ')||'      '|| lpad(vrow.performScore,5,' ')||'      '|| lpad(vrow.attendScore,5,' ')||'      '|| lpad(vrow.resultScore,5,' '));

end loop;
end;


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/*
-----------------------------
업무영역 - 출결 조회
요구사항 ID - S003
요구사항 명 - 출결 조회 관리
-----------------------------
- 본인의 출결 현황을 기간별(전체, 월, 일)로 조회할 수 있다.
- 학생번호가 출력된다.
- 수강한 과정번호가 출력된다.
- 수강한 과정 명이 출력된다.
- 과정의 기간이 출력된다.
- 입실시간이 출력된다.
- 퇴실시간이 출력된다.
- 입-퇴실 날짜가 출력된다.
- 근태 상태가 출력된다.
-입실시간을 기록할 수 있다.
-퇴실시간을 기록할 수 있다.
*/
---------------------------------------------    

--특정 교육생의 출결 리스트 보기                    
create or replace view vwStdAttend
as
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
--특정 교육생 출결상황보기 프로시저
create or replace procedure procStdAttend(
    pstdseq varchar2,
    pcursor out sys_refcursor
)
is
begin
    open pcursor for
        select
            *
        from vwStdAttend
            where stdSeq=pstdseq;
end;
declare
    vcursor sys_refcursor;
    vrow vwStdAttend%rowtype;
begin
    procStdAttend('특정교육생의번호입력(varchar2)',vcursor);
    dbms_output.put_line('교육생번호     이름     입실시간         퇴실시간         날짜        근태상황');
    dbms_output.put_line('-----------------------------------------------------------------------------------');
    loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        dbms_output.put_line(lpad(vrow.stdSeq,7,' ') ||'    '|| lpad(vrow.stdName,7,' ') ||' '|| lpad(to_char(vrow.intime,'hh24:mi:ss'),10,' ') ||'      '|| lpad(to_char(vrow.outtime,'hh24:mi:ss'),10,' ')||'   '|| lpad(vrow.attenddate,10,' ') ||' '|| lpad(vrow.studentattendstatus,15,' '));

    end loop;
    
end;


--특정 과정의 교육생들 출결 프로시저    
create or replace procedure procCurrStdAttend(
    pcurrseq varchar2,
    pcursor out sys_refcursor
)
is
begin
    open pcursor for
        select
            *
        from vwStdAttend
            where currseq=pcurrseq;
end;
--특정 과정의 교육생들 출결 실행
declare
    vcursor sys_refcursor;
    vrow vwStdAttend%rowtype;
begin
    procCurrStdAttend(특정과목의번호입력(number),vcursor);
    dbms_output.put_line('교육생번호     이름   과정번호                             과정명                               입실시간         퇴실시간         날짜        근태상황');
    dbms_output.put_line('-----------------------------------------------------------------------------------');
    loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        dbms_output.put_line(lpad(vrow.stdSeq,7,' ') ||'    '|| lpad(vrow.stdName,7,' ') ||'    '|| lpad(vrow.currSeq,7,' ') ||'    '|| lpad(vrow.currName,60,' ') ||'  '|| lpad(to_char(vrow.intime,'hh24:mi:ss'),10,' ') ||'      '|| lpad(to_char(vrow.outtime,'hh24:mi:ss'),10,' ')||'   '|| lpad(vrow.attenddate,10,' ') ||' '|| lpad(vrow.studentattendstatus,13,' '));

    end loop;
    
end;


                            
--근태상황 구해주는 함수
create or replace function fnAttendStatus(
    fintime date,
    fouttime date
)return varchar2
is
begin
    return case
        when to_number(to_char(fintime,'hh24miss')) < to_number(to_char(to_date('01-01-01 09-10-00','yyyy-mm-dd hh24-mi-ss'),'hh24miss')) and
            to_number(to_char(fouttime,'hh24miss')) >= to_number(to_char(to_date('01-01-01 17-50-00','yyyy-mm-dd hh24-mi-ss'),'hh24miss'))then '정상'
            
        when to_number(to_char(fintime,'hh24miss')) > to_number(to_char(to_date('01-01-01 09-10-00','yyyy-mm-dd hh24-mi-ss'),'hh24miss')) and
            to_number(to_char(fintime,'hh24miss')) < to_number(to_char(to_date('01-01-01 09-50-00','yyyy-mm-dd hh24-mi-ss'),'hh24miss')) and
                to_number(to_char(fouttime,'hh24miss')) >= to_number(to_char(to_date('01-01-01 17-50-00','yyyy-mm-dd hh24-mi-ss'),'hh24miss'))then '지각'
        
        else '결석'
    end;
end;

--입실하기 프로시저
create or replace procedure procInsertStdAttend(
    pclassRegSeq varchar2
)
is
    vcnt number;
begin
    
    select count(*) into vcnt 
    from tblStudentAttend 
        where classregseq=pclassRegSeq and
            to_char(intime,'yyyy-mm-dd')=to_char(sysdate,'yyyy-mm-dd'); --오늘 입실한 데이터가 있나? 확인하는 쿼리
            
    if vcnt = 0 then
        insert into tblStudentAttend (attendSeq, classRegSeq, inTime,attendDate) values (seqStudentAttend.nextVal, 'SC1',sysdate,to_date(sysdate,'yyyy-mm-dd'));--'SC1'자리에는 어떤값을 넣을건지 프로시저로 받아야함
    else 
        dbms_output.put_line('오늘 입실한 데이터가 존재합니다');
    end if;
end;
--입실하기 실행
declare
    vclassRegSeq tblStudentAttend.classregseq%type;
begin
    select classRegSeq into vclassRegSeq 
    from tblstudentclassreg 
        where stdseq = '입실할 교육생 번호 입력';
        
    procInsertStdAttend(vclassRegSeq);
end;

--퇴실하기 프로시저
create or replace procedure procUpdateStdAttend(
        pclassRegSeq varchar2
)is
    vcnt number;
    intimeCk number;
begin
    select count(*) into intimeCk 
    from tblStudentAttend 
        where classregseq=pclassRegSeq and
            to_char(intime,'yyyy-mm-dd')=to_char(sysdate,'yyyy-mm-dd'); -- 오늘 입실한 데이터가 있나? 확인하는 쿼리    
            
    if intimeCk >0 then
        select count(*) into vcnt
        from tblStudentAttend 
            where classregseq=pclassRegSeq and
                to_char(outtime,'yyyy-mm-dd')=to_char(sysdate,'yyyy-mm-dd'); -- 오늘 퇴실한 데이터가 있나? 확인하는 쿼리
                
        if vcnt=0 then
            update tblStudentAttend 
                set outtime = sysdate 
                    where classregseq=pclassRegSeq and
                        to_date(sysdate,'yyyy-mm-dd')-to_date(attenddate,'yyyy-mm-dd')=0;-- 퇴실시간 업데이트
                        
            update tblStudentAttend 
                set studentAttendStatus = fnAttendStatus(intime,outtime)
                    where classregseq=pclassRegSeq and
                        to_date(sysdate,'yyyy-mm-dd')-to_date(attenddate,'yyyy-mm-dd')=0;-- 출결상태 업데이트
        else
            dbms_output.put_line('오늘 퇴실한 데이터가 존재합니다');
        end if;
    else
        dbms_output.put_line('오늘 입실한 데이터가 존재하지 않습니다.');
    end if;
end;

--퇴실하기 실행
declare
    vclassRegSeq tblStudentAttend.classregseq%type;
begin
    select classRegSeq into vclassRegSeq 
    from tblstudentclassreg 
        where stdseq = '퇴실 하고자하는 교육생의 번호(varchar2)';
        
    procUpdateStdAttend(vclassRegSeq);
end;

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/*
-----------------------------
업무영역 - 과정 평가
요구사항 ID - S004
요구사항 명 - 과정 평가 관리
-----------------------------
- 교육생 번호가 출력된다
- 교육생 이름이 출력된다
- 수강한 과정번호가 출력된다.
- 수강한 과정 명이 출력된다.
- 과정기간이 출력된다.
- 교사 명이 출력된다.
- 평가점수가 출력된다..
- 교육생은 과정평가를 작성할 수 있다.
*/
---------------------------------------------   
--특정 교육생의 과정평가 보기
create or replace view vwCurrSurvey
as
select
    s.stdSeq as stdSeq,
    s.stdName as stdName,
    sc.classregseq as classregseq,
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


create or replace procedure procCurrSurvey(
    pstdseq varchar2,
    pcursor out sys_refcursor
)
is
begin
    open pcursor for
        select
            *
        from vwCurrSurvey
            where stdseq=pstdseq;
end;

declare
    vcursor sys_refcursor;
    vrow vwCurrSurvey%rowtype;
begin  
    
    procCurrSurvey('S1',vcursor);        ---------------여기에 원하는 학생정보 넣으면 됨
    dbms_output.put_line('교육생번호    이름    과정번호                                 과정명                                  과정기간    담당교사명  과정평가점수');
    dbms_output.put_line('-----------------------------------------------------------------------');
    loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        dbms_output.put_line(lpad(vrow.stdSeq,7,' ') ||'    '|| lpad(vrow.stdName,7,' ') ||'  '|| lpad(vrow.currSeq,7,' ') ||'   '|| lpad(vrow.currName,70,' ') ||'      '|| lpad(vrow.currPeriod,5,' ') ||'일'||'   '|| lpad(vrow.teacherName,10,' ') ||'      '|| lpad(vrow.avgSurvey,5,' '));

    end loop;
end;



--과정평가 작성하기

create or replace procedure procInsertCurrSurvey(
    pclassRegSeq varchar2,
    psotong number,
    pjundal number,
    pjukjul number,
    pyului number,
    puiksung number
)

is
    vcnt number;
    statusCk number;
begin
    select count(*) into vcnt from tblCurrSurvey where classRegSeq = pclassRegSeq; --이미 평가를 했는지 체크하는 쿼리
    select count(*) into statusCk from vwcompletestatus where classRegSeq=pclassRegSeq and completestatuspf='수료'; --수료한 상태인지 아닌지 확인하는 쿼리
    if vcnt=0 then
        if statusCk>0 then
            if psotong between 1 and 5 and
                pjundal between 1 and 5 and
                pjukjul between 1 and 5 and
                pyului between 1 and 5 and
                puiksung between 1 and 5 then
                insert into tblCurrSurvey (currSurveySeq,classRegSeq,sotong,jundal,jukjul,yului,yuiksung) values (seqCurrSurvey.nextval,pclassRegSeq,psotong,pjundal,pjukjul,pyului,puiksung);
            else
                dbms_output.put_line('평가점수는 1(매우 불만족), 2(불만족), 3(보통), 4(만족), 5(매우 만족)로 구성됩니다.');
            end if;
        else
            dbms_output.put_line('과정을 수료해야 과정평가가 가능합니다.');
        end if;
    else
        dbms_output.put_line('이전에 과정평가를 한 결과가 존재합니다.');
    end if;
end;

declare
    vclassRegSeq tblStudentCalssReg.classRegSeq%type;
begin
    select classRegSeq into vclassRegSeq
    from tblStudent s
        inner join tblStudentClassReg sc
            on s.stdseq = sc.stdseq 
                where s.stdseq ='과정평가할 교육생의번호 입력(varchar2)';
    procInsertStdLicense(vclassRegSeq,소통점수(number),전달력점수(number),적절점수(number),열의점수(number),유익성점수(number)); -------------------------실행
end;



----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/*
-----------------------------
업무영역 - 교육생 이력
요구사항 ID - S005
요구사항 명 - 교육생 이력 관리
-----------------------------
[교육생 이력 조회]
- 교육생 이력번호가 출력된다.
- 교육생 번호가 출력된다.
- 교육생 이름이 출력된다.
- 교육생 학력이 출력된다
- 교육생 취업희망분야가 출력된다.
- 교육생 희망연봉이 출력된다.
[교육생 이력 수정]
- 교육생 학력을 수청 할 수 있다.
- 교육생 취업희망분야를 수정 할 수 있다.
- 교육생 희망연봉을 수정할 수 있다.

*/
---------------------------------------------   

--특정 교육생의 이력정보 열어보기 뷰->프로시저->실행 
--교육생 뷰
create or replace view vwStdCareer
as
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

--프로시저
create or replace procedure procStdCareer(
    pstdSeq varchar2,
    pcursor out sys_refcursor
)
is
begin
    open pcursor for
        select 
            *
        from vwStdCareer
            where stdseq=pstdSeq;
end;

--실행
declare
    vcursor sys_refcursor;
    vrow vwStdCareer%rowtype;
begin  
    procStdCareer('교육생 번호 입력',vcursor);        ---------------여기에 원하는 학생정보 넣으면 됨
    loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        dbms_output.put_line('이력번호    교육생번호           이름     학력    희망취업분야    희망연봉   ');
        dbms_output.put_line('-----------------------------------------------------------------------');
        dbms_output.put_line(lpad(vrow.stdCareerSeq,6,' ') ||'      '|| lpad(vrow.stdSeq,7,' ') ||'     '|| lpad(vrow.stdName,10,' ') ||'     '|| vrow.stdedu ||'     '|| lpad(vrow.wishfield,10,' ') ||'        '|| vrow.wishsalary);

    end loop;
end;

--교육생 이력 수정
create or replace procedure procUpdateStdCareer(
    pstdSeq varchar2,
    pstdEdu varchar2,
    pWishField varchar2,
    pWishSalary number
)
is
    vcnt number;
begin
    select count(*) into vcnt from tblStdJob where stdseq=pstdSeq;
    if vcnt >0 then
        update tblStdCareer set stdEdu = pstdEdu,wishField = pWishField,wishSalary = pWishSalary where stdSeq = pstdSeq ;
    else
        dbms_output.put_line('해당 정보가 존해하지 않습니다');
    end if;       
end;

--실행
begin
    procUpdateStdCareer(업데이트할 교육생의번호(varchar2), 학력(varchar2),희망분야(varchar2),희망연봉(number)); -------------------------실행
end;

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/*
-----------------------------
업무영역 - 교육생 자격증 관리
요구사항 ID - S006
요구사항 명 - 교육생 자격증 관리
-----------------------------
[교육생 자격증 조회]
    - 자격증 번호가 출력된다.
    - 교육생 번호가 출력된다.
    - 교육생 이름이 출력된다.
    - 자격증 이름이 출력된다.
    - 취득날짜가 출력된다.

[교육생 자격증 입력, 수정, 삭제]
    - 교육생 번호를 입력, 수정, 삭제할 수 있다.
    - 자격증 이름을 입력, 수정, 삭제할 수 있다.
    - 취득날짜를 입력, 수정, 삭제할 수 있다.
*/
---------------------------------------------      

--특정 교육생 자격증 보기
create or replace view vwStdLicense
as
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
--프로시저
create or replace procedure procStdLicense(
    pstdSeq varchar2,
    pcursor out sys_refcursor
)
is
begin
    open pcursor for
        select 
            *
        from vwStdLicense
            where stdseq=pstdSeq;
end;

--실행
declare
    vcursor sys_refcursor;
    vrow vwStdLicense%rowtype;
begin  
    
    procStdLicense('S3',vcursor);        ---------------여기에 원하는 학생정보 넣으면 됨
    dbms_output.put_line('자격증번호    교육생번호      이름             자격증명             취득일');
    dbms_output.put_line('-----------------------------------------------------------------------');
    loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        
        dbms_output.put_line(lpad(vrow.licenseseq,7,' ') ||'    '|| lpad(vrow.stdSeq,7,' ') ||'     '|| lpad(vrow.stdName,10,' ') ||'        '|| rpad(vrow.licensename,20,' ') ||'  '|| vrow.licensedate);

    end loop;
end;


--------특정교육생 자격증정보 삭제
create or replace procedure procDeleteStdLicense(
    plicenseSeq number
)
is
    vcnt number;
begin

    select count(*) into vcnt from tblStdLicense where licenseseq=plicenseSeq;
    if vcnt >0 then
        delete from tblStdLicense where licenseseq=plicenseSeq;
    else
        dbms_output.put_line('해당 정보가 존해하지 않습니다');
    end if;
end;

begin
    procDeleteStdLicense('삭제할자격증번호입력'); -------------------------실행
end;


--------특정 교육생 자격증정보 수정
create or replace procedure procUpdateStdLicense(
    plicenseSeq number,
    pstdSeq varchar2,
    plicenseName varchar2,
    plicenseDate date
)
is
    vcnt number;
    dupCk number;
begin
    select count(*) into vcnt from tblStdLicense where licenseseq=plicenseSeq;
    select count(*) into dupCk from tblstdLicense where stdseq=pstdSeq and licensename=plicenseName;


    if vcnt > 0 then
        if dupCk=0 then
            update tblStdLicense set licenseName = plicenseName,licenseDate = plicenseDate where licenseSeq = plicenseSeq ;
        else
            dbms_output.put_line('해당 자격증정보가 이미 존재합니다.');
        end if;
    else
        dbms_output.put_line('해당 정보가 존해하지 않습니다');
    end if;
end;

--실행
begin
    procUpdateStdLicense(수정할 자격증번호(varchar2),학생번호(varchar2),자격증명(varchar2), 취득일(date)); -------------------------실행
end;


--------특정 교육생 자격증정보 삽입
create or replace procedure procInsertStdLicense(
    pstdSeq varchar2,
    plicenseName varchar2,
    plicenseDate date
)
is
    vcnt number;
begin
    select count(*) into vcnt from tblstdLicense where stdseq=pstdSeq and licensename=plicenseName;
    if vcnt=0 then
    insert into tblStdLicense(licenseSeq,stdSeq,licenseName,licenseDate) values(seqStdLicense.nextVal,pstdSeq,plicenseName,plicenseDate);
    else
        dbms_output.put_line('해당 교육생의 자격증정보가 이미 존재합니다');
    end if;
end;
--실행
begin
    procInsertStdLicense(교육생의번호(varchar2),자격증명(varchar2), 취득일(date)); -------------------------실행
end;




select * from vwstdlicense;

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/*
-----------------------------
업무영역 - 교육생 취업정보
요구사항 ID - S007
요구사항 명 - 교육생 취업 지원관리
-----------------------------
[교육생 취업정보 조회]
    - 교육생 취업정보 번호가 출력된다. 
    - 교육생 번호가 출력된다. 
    - 교육생 이름이 출력된다. 
    - 교육생 전화번호가 출력된다. 
    - 교육생 취업분야가 출력된다. 
    - 교육생 연봉(단위:만원)이 출력된다. 
    - 교육생 취업일이 출력된다.

[교육생 취업정보 입력, 수정, 삭제]
    - 취업분야를 입력, 수정, 삭제 할 수 있다.
    - 취업날짜를 입력, 수정, 삭제 할 수 있다.
    - 취업연봉을 입력, 수정, 삭제 할 수 있다.
*/
---------------------------------------------  

--특정 교육생의 취업정보 열어보기 뷰->프로시저->실행 
--뷰
create or replace view vwStdJob
as
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
                

--프로시저
create or replace procedure procStdJob(
    pstdSeq varchar2,
    pcursor out sys_refcursor
)
is
begin
    open pcursor for
        select 
            *
        from vwStdJob
            where stdseq=pstdSeq;
end;

--실행
declare
    vcursor sys_refcursor;
    vrow vwStdJob%rowtype;
begin  
    procStdJob('S1',vcursor);        ---------------여기에 원하는 학생정보 넣으면 됨
    loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        dbms_output.put_line('취업정보번호   교육생번호      이름       전화번호         취업분야    연봉(단위:만원)     취업일');
        dbms_output.put_line('------------------------------------------------------------------------------------------');
        dbms_output.put_line(lpad(vrow.stdJobSeq,10,' ') ||'      '|| lpad(vrow.stdSeq,6,' ') ||'     '|| lpad(vrow.stdName,7,' ') ||'     '|| vrow.stdTel ||'     '|| lpad(vrow.stdField,5,' ') ||'     '|| vrow.stdSalary ||'     '|| lpad(vrow.stdDate,15,' '));

    end loop;
end;

--------특정교육생 취업정보 삭제
create or replace procedure procdeleteStdJob(
    pstdSeq varchar2
)
is
    vcnt number;
begin

    select count(*) into vcnt from tblStdJob where stdseq=pstdSeq;
    if vcnt >0 then
        delete from tblStdjob where stdseq=pstdSeq;
    else
        dbms_output.put_line('해당 정보가 존해하지 않습니다');
    end if;      
end;

--실행
begin
    procdeleteStdJob('삭제할교육생의번호입력'); -------------------------실행
end;

--------특정 교육생 취업정보 수정
create or replace procedure procupdateStdJob(
    pstdSeq varchar2,
    pstdField varchar2,
    pstdDate date,
    pstdSalary number
)
is
    vcnt number;
begin
    select count(*) into vcnt from tblStdJob where stdseq=pstdSeq;
    if vcnt >0 then
        update tblStdjob set stdField = pstdField,stdDate = pstdDate,stdSalary = pstdSalary where stdSeq = pstdSeq ;
    else
        dbms_output.put_line('해당 정보가 존해하지 않습니다');
    end if;
end;
--실행
begin
    procupdateStdJob(업데이트할 교육생의번호(varchar2), 분야(varchar2), 취업일(date), 연봉(number)); -------------------------실행
end;


--------특정 교육생 취업정보 삽입
create or replace procedure procinsertStdJob(
    pstdSeq varchar2,
    pstdField varchar2,
    pstdDate date,
    pstdSalary number
)
is
    vcnt number;
begin
    select count(*) into vcnt from tblStdJob where stdseq=pstdSeq;
    if vcnt=0 then
    insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,pstdSeq,pstdField,pstdDate,pstdSalary);
    else
        dbms_output.put_line('해당 교육생의 취업정보가 이미 존재합니다');
    end if;
end;
--실행
begin
    procinsertStdJob(삽입할 교육생의번호(varchar2), 분야(varchar2), 취업일(date), 연봉(number)); -------------------------실행
end;


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/*
-----------------------------
업무영역 - 교육생 수료,중도탈락 및  수강상태 확인
요구사항 ID - S008
요구사항 명 - 교육생의 수강상태 확인
-----------------------------
[교육생 수강상태 조회]
    - 교육생 번호가 출력된다. 
    - 교육생 이름이 출력된다. 
    - 교육생 전화번호가 출력된다. 
    - 교육생 등록일이 출력된다.
    - 교육생의 수강상태가 출력된다.
*/
---------------------------------------------  
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

create or replace view vwCompleteStatus
as
select
    s.stdSeq as stdSeq,
    s.stdName as stdName,
    s.stdTel as stdTel,
    sc.classregseq as classregseq,
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
                                
--특정 교육생 수강상태 확인 프로시저
create or replace procedure procCompleteStatus(
    pstdseq varchar2,
    pcursor out sys_refcursor
)
is
begin
    open pcursor for
        select *
            from vwCompleteStatus
                where stdSeq = pstdSeq;
end;

--실행
declare
    vcursor sys_refcursor;
    vrow vwCompleteStatus%rowtype;
begin
    procCompleteStatus('특정교육생번호 입력',vcursor);
    dbms_output.put_line('교육생번호     이름     전화번호                                   과정명                                    과정종료일   수료및탈락');
    dbms_output.put_line('-----------------------------------------------------------------------------------');
    loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        dbms_output.put_line(lpad(vrow.stdSeq,7,' ') ||'    '|| lpad(vrow.stdName,7,' ') ||'    '|| lpad(vrow.stdTel,13,' ') ||'    '|| lpad(vrow.currName,70,' ') ||'  '|| lpad(vrow.currendDate,10,' ') ||'      '|| lpad(vrow.completestatuspf,5,' '));
--stdSeq stdName stdTel currName currendDate completestatuspf
end loop;
end;

