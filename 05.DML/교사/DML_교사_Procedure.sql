/*
-교사
-요구사항 T001 - 강의 스케쥴 조회 
*/

--=====================================================================================
-- T001. 강의스케줄 조회
--=====================================================================================
create or replace procedure procSchedule(

    pteacherSeq in varchar2,
    pcursor out sys_refcursor
)
is
begin
    open pcursor for select * from vwSchedule where teacherSeq = pteacherSeq;
end;





-- 실행
--=====================================================================================
-- T001. 강의스케줄 조회 -- 전체 스케줄 조회
--=====================================================================================
declare
    cursor vcursor is select * from vwSchedule;
begin  
    dbms_output.put_line('담당교사     과정번호      과정명                                                                    과정기간                강의상태     강의실       과목명                                      과목기간                교재명                                     등록인원');
    dbms_output.put_line('-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');  
    for vrow in vcursor loop
        dbms_output.put_line(rpad(vrow.teacherseq,7,' ')||'      '||rpad(vrow.currseq,7,' ')||'     '|| rpad(vrow.currName,72,' ') ||'     '|| rpad(vrow.currDate,19,' ') ||'     '|| rpad(vrow.currStatus,8,' ') ||'     '|| rpad(vrow.class,8,' ') ||'     '|| rpad(vrow.subName,39,' ') || '     ' || rpad(vrow.subDate,19,' ') || '     ' ||rpad(vrow.bookName,40,' ') || '     ' || vrow.quota);
    end loop;
end;


--=====================================================================================
-- T001. 강의스케줄 조회 - 교사별 스케줄 조회
--=====================================================================================
declare
    vcursor sys_refcursor;
    vrow vwSchedule%rowtype;
begin
    procSchedule('T5', vcursor); ------- 검색하고자하는 교사번호(문자) 입력
    
    dbms_output.put_line('담당교사     과정번호      과정명                                                                    과정기간                강의상태     강의실       과목명                                      과목기간                교재명                                     등록인원');
    dbms_output.put_line('-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');  
    loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        dbms_output.put_line(rpad(vrow.teacherseq,7,' ')||'      '||rpad(vrow.currseq,7,' ')||'     '|| rpad(vrow.currName,72,' ') ||'     '|| rpad(vrow.currDate,19,' ') ||'     '|| rpad(vrow.currStatus,8,' ') ||'     '|| rpad(vrow.class,8,' ') ||'     '|| rpad(vrow.subName,39,' ') || '     ' || rpad(vrow.subDate,19,' ') || '     ' ||rpad(vrow.bookName,40,' ') || '     ' || vrow.pNum);
    end loop;
end;
 

                        
--=====================================================================================                         
--T001-1. 특정 과목별 교육생 - 뷰, 프로시저, 실행
--===================================================================================== 
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
 


 -- Procedure
--=====================================================================================
 --T001-1. 특정 과목별 교육생
--=====================================================================================
create or replace procedure procSubSchedule(

    psubSeq in number,
    pcursor out sys_refcursor
)
is
begin
    open pcursor for select * from vwSubSchedule where subSeq = psubSeq;
end;
       
          
   
-- 실행
--=====================================================================================
--T001-1. 특정 과목별 교육생
--=====================================================================================
declare
    vcursor sys_refcursor;
    vrow vwSubSchedule%rowtype;
begin
    procSubSchedule(1, vcursor); ------- 검색하고자하는 과목 번호 입력
    
    dbms_output.put_line('과정번호     과목번호     과목명                                     이름          전화번호          등록일       수료또는중도탈락     ');
    dbms_output.put_line('---------------------------------------------------------------------------------------------------------------------------------------------');  
    loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        dbms_output.put_line(rpad(vrow.openCurrSeq,7,' ')||'      '||rpad(vrow.subSeq,7,' ')||'     '|| rpad(vrow.subName,39,' ') ||'     '|| rpad(vrow.stdName,9,' ') ||'     '|| rpad(vrow.stdTel,13,' ') ||'     '|| rpad(vrow.stdRegDate,8,' ') ||'     '|| rpad(vrow.PorF,40,' '));
    end loop;
end;

                       






/*
- 교사
- 요구사항T002 - [배점 전반 입출력]
*/
--=========================================================
-- 특정 과목번호로 선택시 정보 출력 프로시저
--=========================================================
create or replace procedure procDistribution(
     popensubseq number ,
     pcursor out sys_refcursor
)
is
begin
    open pcursor for
        select
            *
        from vwDistribution
            where subNum=popensubseq;
end;


--실행
--=====================================================================================
--특정 과목 번호로 선택시 정보 출력 
--=====================================================================================
declare
    vcursor sys_refcursor;
    vrow vwDistribution%rowtype;
    
begin  
    procDistribution( 1 , vcursor);        -- 교사가 원하는 특정 과목 번호 입력 
    
        dbms_output.put_line(' 과목번호      과목명                      출결배점      필기배점      실기배점          시험날짜                  시험문제    ');
        dbms_output.put_line('---------------------------------------------------------------------------------------------------------');
           
    
    loop
        fetch vcursor into vrow;
        dbms_output.put_line(  lpad(vrow.subNum,7,' ')   ||'   '|| lpad(vrow.subname,25 ,'       ')   ||  '       '  ||  lpad(vrow.attendPoint,7,' ') ||'    '|| lpad(vrow.writingpoint,7,' ') ||'     '|| lpad(vrow.performpoint,7,' ') || '          ' || lpad(vrow.testdate,12,' ') || '                 ' ||  lpad(vrow.testregyn,5,' '));

        exit when vcursor%notfound;
           
    end loop;
    
end;



 -- 프로시저
--=============================================================================================
--특정 과목 배점 입력, 수정하는 프로시저 -> 수정 시 출결 점수가 20점이 넘거나,  총 합이 100점 이상이면 안 됨
--=============================================================================================
create or replace procedure procInsertDistribution(
          
           ptestpointSeq number,          --배점번호
           pteacherSeq  varchar2 ,        --교사번호
           popenSubjectSeq  number ,     --개설과목번호
           pwritingPoint number,           --필기배점
           pperformPoint number,         --실기배점
           pattendPoint number           --출석배점
) 
is          
begin
            
       if pattendPoint <= 20 and add_score(pwritingPoint,pperformPoint,pattendPoint) =  100 then
     
        insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
        
         values(seqtestPoint.nextval, pteacherSeq,popenSubjectSeq,pwritingPoint,pperformPoint,pattendPoint);
      
         else
            
        dbms_output.put_line('출결 점수는 20점 이상일 수 없습니다.');
            
            
        end if;

        
end procInsertDistribution;                
 
            
select * from tblTestPoint;




-- 입력
--=============================================================================================
  --배점번호, 교사번호, 개설과목번호, 필기, 실기, 출석 배점
--=============================================================================================
      exec procUpdDistribution('T1',1,50,30,20);




--출력
--=============================================================================================
declare
    vcursor sys_refcursor;
    vrow vwDistribution%rowtype;
    
begin  
    procInsertDistribution( 'T1' , vcursor);        -- 교사 번호 입력
    
        dbms_output.put_line(' 과목번호      과목명                      출결배점      필기배점      실기배점          시험날짜                  시험문제    ');
        dbms_output.put_line('---------------------------------------------------------------------------------------------------------');
           
    
    loop
        fetch vcursor into vrow;
       dbms_output.put_line( lpad(vrow.subNum,7,' ')   ||'   '|| lpad(vrow.subname,25 ,'       ')   ||  '       '  ||  lpad(vrow.attendPoint,7,' ') ||'    '|| lpad(vrow.writingpoint,7,' ') ||'     '|| lpad(vrow.performpoint,7,' ') || '          ' || lpad(vrow.testdate,12,' '));

        exit when vcursor%notfound;
           
    end loop;
end;
 


--=============================================================================================
-- 배점을 수정하는 프로시저  -> 수정 시 출결 점수가 20점이 넘거나,  총 합이 100점 이상이면 안 됨 
--=============================================================================================
create or replace procedure procUpdDistribution(
    pteacherSeq varchar2,
    popenSubjectSeq number,
    pwritingPoint number,
    pperformPoint number,
    pattendPoint number
)
is
begin
        
    if pattendPoint <= 20 and add_score(pwritingPoint,pperformPoint,pattendPoint) =  100 then
        update tblTestPoint set writingPoint = pwritingPoint, performPoint = pperformPoint, attendPoint = pattendPoint where teacherSeq = pteacherSeq and openSubjectSeq = popenSubjectSeq;
    else
    dbms_output.put_line('입력한 점수를 재확인 해주세요');
    end if;
exception 
    when others then dbms_output.put_line('다시입력필요');
end;



-- 출력
--=============================================================================================
begin
        -- 배점번호, 개설과목번호,  입력할 필기 배점 , 실기 배점, 출석배점 
         
    exec procUpdDistribution('T1',1,50,30,20);
end;




-프로시저
--=====================================================================================
--특정 과목 시험지 등록 여부, 시험날짜 수정하는 프로시저
--=====================================================================================+
create or replace procedure procUpdateTest(

    popenSubjectSeq number,
    ptestdate date
)
is
    vsubjectEndDate date;
begin
    
    select subjectEndDate into vsubjectEndDate from tblopensubject where openSubjectSeq = popenSubjectSeq;
    
    if vsubjectEndDate < '2021-06-30' then
        insert into tblTest(testSeq, openSubjectSeq, testRegYN, testdate) values (seqTest.nextVal, popenSubjectSeq,'Y', ptestdate);
    else
        dbms_output.put_line( '시험날짜를 확인해주세요.' );
    end if;
    
end;



--실행
--=============================================================================================
exec procUpdateTest(10, '2021-06-15');





/*
-교사
-요구사항T003 - [성적에 관련된 전반적인 정보 출력] 
*/
--==============================================================================
--  진행중인 전체 과목별로 성적을 조회하는 프로시저: procScoreInoutPut
--==============================================================================
create or replace procedure procScoreInoutPut(
            pcursor out sys_refcursor,
            psubjectNum number
)
is
begin     open pcursor for  
                                                    --개설과목번호 
            select * from vwScoreInoutPut where subjectNum = psubjectNum ;
end ; 



--실행
--=============================================================================================
declare
        vcursor sys_refcursor;
        vrow vwScoreInoutPut%rowtype;
begin  
    procScoreInoutPut(1 , vcursor);        --- 원하는 개설과목번호입력
    
    loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
       -- dbms_output.put_line('취업정보번호   교육생번호      이름       전화번호         취업분야    연봉(단위:만원)     취업일');
        --dbms_output.put_line('------------------------------------------------------------------------------------------');
        --dbms_output.put_line(lpad(vrow.stdJobSeq,10,' ') ||'      '|| lpad(vrow.stdSeq,6,' ') ||'     '|| lpad(vrow.stdName,7,' ') ||'     '|| vrow.stdTel ||'     '|| lpad(vrow.stdField,5,' ') ||'     '|| vrow.stdSalary ||'     '|| lpad(vrow.stdDate,15,' '));
         -- dbms_output.put_line(vrow.subjectNum);
         
    end loop;
end;




/*
-교사
-요구사항T003-01 - [특정 과목 성적 입출력]
*/

--=====================================================================================
-- 특정 과목번호로 선택시 정보 출력
--=====================================================================================

create or replace procedure procScoreInoutPut(

        psubjectSeq number,             -- 선택한 과목번호입력
       
        pcursor out sys_refcursor    --교육생 정보+성적정보 반환
)
is 
begin
        --교육생정보+성적정보 반환
        open pcursor for
        select * from vwScoreInoutPut where subjectseq = psubjectSeq;
end procScoreInoutPut;



--============================================================================
-- 특정 과목번호를 기준으로 수강정보 , 시험점수 정보 출력
--============================================================================

declare
        vrow vwScoreInoutPut%rowtype;
        vcursor sys_refcursor;
begin
        procScoreInoutPut(1, vcursor);  -- 원하는 과목번호 넣기
          
        dbms_output.put_line('과목번호     과목명                                   과목기간           교육생번호          교육생명           교육생전화번호     수료상태     필기점수     실기점수     출석점수     합계');
        dbms_output.put_line('-------------------------------------------------------------------------------------------------------------------------------------------------------');
        dbms_output.put_line(' ');
        
        loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        
        dbms_output.put_line(rpad(vrow.subjectseq,9,' ') || '  ' || rpad(vrow.subjectName,25,' ') || '  ' || lpad(vrow.subjectDate,30, ' ') || '       ' ||  lpad(vrow.studentSeq,7,' ') || '    ' || lpad(vrow.studentName,7,' ') || '      ' || lpad(vrow.studentTel,15,' ') || '    ' || lpad(vrow.status,7,' ') || '      ' || lpad(vrow.WritingScore,7, ' ') || '    ' ||  lpad(vrow.PerformeanceScore,7,' ') || '    ' || lpad(vrow.AttendScore,7,' ') || '          ' || vrow.totalScore);
                       
        end loop;
end;




--==================================================================================================
-- 특정 과목선택 > 특정 교육생(교육생번호로) 선택 >  과목 시험점수 수정하는 프로시저 (실,필,출석) 
--==================================================================================================
create or replace procedure procScoreInoutPut(

        psubjectSeq number,             -- 선택한 과목번호입력
        
        pstudentSeq varchar2,            -- 선택한 교육생번호 입력 = 수강번호랑 같음(=classregseq)
        pcursor out sys_refcursor       --교육생 정보+성적정보 반환
)

is 
begin

        --교육생정보+성적정보 반환
        
        open pcursor for
        select * from vwScoreInoutPut where subjectseq = psubjectSeq and  studentSeq = pstudentSeq;

end procScoreInoutPut;



--==================================================================================================
--특정 과목선택 > 특정 교육생(교육생번호로) 선택 >  과목 시험점수 출력
--==================================================================================================

declare
        vrow vwScoreInoutPut%rowtype;
        vcursor sys_refcursor;
begin
        procScoreInoutPut(1, 'SC1', vcursor);  -- 원하는 과목번호, 교육생 번호 넣기
          
        dbms_output.put_line('과목번호     과목명                                   과목기간           교육생번호          교육생명           교육생전화번호     수료상태     필기점수     실기점수     출석점수     합계');
        dbms_output.put_line('--------------------------------------------------------------------------------------------------------------------------------------');
        dbms_output.put_line(' ');
        
        
        loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        
        dbms_output.put_line(rpad(vrow.subjectseq,9,' ') || '  ' || rpad(vrow.subjectName,25,' ') || '  ' || lpad(vrow.subjectDate,30, ' ') || '    ' ||  lpad(vrow.studentSeq,7,' ') || '         ' || lpad(vrow.studentName,7,' ') || '            ' || lpad(vrow.studentTel,15,' ') || '    ' || lpad(vrow.status,7,' ') || '      ' || lpad(vrow.WritingScore,7, ' ') || '    ' ||  lpad(vrow.PerformeanceScore,7,' ') || '    ' || lpad(vrow.AttendScore,7,' ') || '          ' || vrow.totalScore);
      
        end loop;
end;




--======================================================================================================
-- 특정 과목번호로 선택시 정보 출력 프로시저
--======================================================================================================

create or replace procedure procScoreInoutPut(

        psubjectSeq number,             -- 선택한 과목번호입력
       
        pcursor out sys_refcursor    --교육생 정보+성적정보 반환
)
is 
begin
        --교육생정보+성적정보 반환
        open pcursor for
        select * from vwScoreInoutPut where subjectseq = psubjectSeq;
        end procScoreInoutPut;
	


--============================================================================
-- 특정 과목번호를 기준으로 수강정보 , 시험점수 정보 출력
--============================================================================

declare
        vrow vwScoreInoutPut%rowtype;
        vcursor sys_refcursor;
begin
        procScoreInoutPut(1, vcursor);  -- 원하는 과목번호 넣기
          
        dbms_output.put_line('과목번호     과목명                                   과목기간           교육생번호          교육생명           교육생전화번호     수료상태     필기점수     실기점수     출석점수     합계');
        dbms_output.put_line('-------------------------------------------------------------------------------------------------------------------------------------------------------');
        dbms_output.put_line(' ');
        
        loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        
        dbms_output.put_line(rpad(vrow.subjectseq,9,' ') || '  ' || rpad(vrow.subjectName,25,' ') || '  ' || lpad(vrow.subjectDate,30, ' ') || '       ' ||  lpad(vrow.studentSeq,7,' ') || '    ' || lpad(vrow.studentName,7,' ') || '      ' || lpad(vrow.studentTel,15,' ') || '    ' || lpad(vrow.status,7,' ') || '      ' || lpad(vrow.WritingScore,7, ' ') || '    ' ||  lpad(vrow.PerformeanceScore,7,' ') || '    ' || lpad(vrow.AttendScore,7,' ') || '          ' || vrow.totalScore);
                       
        end loop;
end;



--==================================================================================
-- 특정 과목선택 > 특정 교육생(교육생번호로) 선택 >  과목 시험점수 수정 (실,필,출석) 프로시저
--==================================================================================

create or replace procedure procScoreInoutPut(

        psubjectSeq number,             -- 선택한 과목번호입력
        
        --pclassRegSeq varchar2,
        pstudentSeq varchar2,            -- 선택한 교육생번호 입력 = 수강번호랑 같음(=classregseq)
        pcursor out sys_refcursor       --교육생 정보+성적정보 반환
)

is 
begin

        --교육생정보+성적정보 반환
        
        open pcursor for
        select * from vwScoreInoutPut where subjectseq = psubjectSeq and  studentSeq = pstudentSeq;

end procScoreInoutPut;



--실행
--=============================================================================================
declare
        vrow vwScoreInoutPut%rowtype;
        vcursor sys_refcursor;
begin
        procScoreInoutPut(1, 'SC1', vcursor);  -- 원하는 과목번호, 교육생 번호 넣기
          
        dbms_output.put_line('과목번호     과목명                                   과목기간           교육생번호          교육생명           교육생전화번호     수료상태     필기점수     실기점수     출석점수     합계');
        dbms_output.put_line('--------------------------------------------------------------------------------------------------------------------------------------');
        dbms_output.put_line(' ');
        
        
        loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        
        dbms_output.put_line(rpad(vrow.subjectseq,9,' ') || '  ' || rpad(vrow.subjectName,25,' ') || '  ' || lpad(vrow.subjectDate,30, ' ') || '    ' ||  lpad(vrow.studentSeq,7,' ') || '         ' || lpad(vrow.studentName,7,' ') || '            ' || lpad(vrow.studentTel,15,' ') || '    ' || lpad(vrow.status,7,' ') || '      ' || lpad(vrow.WritingScore,7, ' ') || '    ' ||  lpad(vrow.PerformeanceScore,7,' ') || '    ' || lpad(vrow.AttendScore,7,' ') || '          ' || vrow.totalScore);
      
        end loop;
end;




/*
-교사
-요구사항T004  - [출결조회]
*/

--=====================================================================================                        
-- T004. 출결조회
--=====================================================================================
-- View
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
  

                
-- Procedure
--=============================================================================================
-- T004. 출결조회 - 과정별
--=============================================================================================
create or replace procedure procCurrAttend(

    popenCurrSeq in number,
    pcursor out sys_refcursor
)
is
begin
    open pcursor for select * from vwAttend where openCurrSeq = popenCurrSeq;
end;




-- 실행
--=============================================================================================
-- T004. 출결조회 - 과정별
--=============================================================================================
declare
    vcursor sys_refcursor;
    vrow vwAttend%rowtype;
begin
    procCurrAttend(1, vcursor); ------- 검색하고자하는 과정 번호 입력
    
    dbms_output.put_line('과정번호     과정명                                                                    과정기간                교육생번호     이름          출결날짜       출결상태     ');
    dbms_output.put_line('---------------------------------------------------------------------------------------------------------------------------------------------------------------------');  
    loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        dbms_output.put_line(rpad(vrow.openCurrSeq,7,' ')||'      '||rpad(vrow.currName,72,' ')||'     '|| rpad(vrow.currDate,19,' ') ||'     '|| rpad(vrow.stdSeq,7,' ') ||'     '|| rpad(vrow.stdName,9,' ') ||'     '|| rpad(vrow.attendDate,8,' ') ||'     '|| rpad(vrow.stdAttendStatus,40,' '));
    end loop;
end;



-- Procedure
--=============================================================================================
-- T004. 출결조회 - 교육생별
--=============================================================================================
create or replace procedure procStdAttend(

    pstdSeq in varchar2,
    pcursor out sys_refcursor
)
is
begin
    open pcursor for select * from vwAttend where stdSeq = pstdSeq;
end;



-- 실행
--=============================================================================================
-- T004. 출결조회 - 교육생별
--=============================================================================================
declare
    vcursor sys_refcursor;
    vrow vwAttend%rowtype;
begin
    procStdAttend('S63', vcursor); ------- 검색하고자하는 교육생 번호 입력
    
    dbms_output.put_line('과정번호     과정명                                                                    과정기간                교육생번호     이름          출결날짜       출결상태     ');
    dbms_output.put_line('---------------------------------------------------------------------------------------------------------------------------------------------------------------------');  
    loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        dbms_output.put_line(rpad(vrow.openCurrSeq,7,' ')||'      '||rpad(vrow.currName,72,' ')||'     '|| rpad(vrow.currDate,19,' ') ||'     '|| rpad(vrow.stdSeq,7,' ') ||'     '|| rpad(vrow.stdName,9,' ') ||'     '|| rpad(vrow.attendDate,8,' ') ||'     '|| rpad(vrow.stdAttendStatus,40,' '));
    end loop;
end;               
 