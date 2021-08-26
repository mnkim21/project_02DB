-- A001. 기초정보관리
create or replace view vwBasicInfo
as
select 
    cr.currSeq as currSeq,
    cr.currName as currName,
    c.className as className,
    c.classCount as classCount,
    s.subjectSeq as subSeq,
    s.subjectName as subName,
    b.bookName as bookName,
    b.publisher as publisher,
    t.teacherSeq as tSeq,
    t.teacherName as tName
from tblCurriculum cr
    inner join tblOpenCurr oc
    on cr.currSeq = oc.currSeq
        inner join tblClass c
        on oc.classNum = c.classNum
            inner join tblOpenSubject os
            on oc.openCurrSeq = os.openCurrSeq
                inner join tblSubject s
                on os.subjectSeq = s.subjectSeq
                    inner join tblBook b
                    on s.subjectSeq=b.subjectSeq
                        inner join tblTeacher t
                        on oc.teacherSeq = t.teacherSeq;
--------------------------------------------------------------------------------                                 
-- A001. 기초정보관리
create or replace procedure procBasicInfo
is 
    cursor vcursor is select * from vwBasicInfo;
    vrow vwBasicInfo%rowtype;
begin
    dbms_output.put_line('과정번호      과정명                                                                       강의실       강의실인원     과목번호     과목명                                      교재명                                     출판사명                      교사번호       교사명');
    dbms_output.put_line('-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');  
    
    for vrow in vcursor loop
        dbms_output.put_line(lpad(vrow.currseq,7,' ')||'      '|| rpad(vrow.currName,72,' ') ||'     '|| lpad(vrow.className,9,' ') ||'     '|| lpad(vrow.classCount,9,' ') ||'     '|| lpad(vrow.subSeq,9,' ') ||'     '|| rpad(vrow.subName,39,' ') || '     ' || rpad(vrow.bookName,40,' ') || '     ' || rpad(vrow.publisher,28,' ') || '     ' || rpad(vrow.tSeq,5,' ')|| '     ' || rpad(vrow.tName,7,' '));
    end loop; 
  
end;                  

-- A001. 기초정보관리
exec procBasicInfo;
--------------------------------------------------------------------------------            
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

*/

-- 교사 계정관리 열어보기 뷰 -> 프로시저 -> 실행
-- 교사 계정관리 출력 프로시저

-- [[교사계정관리 교사 뷰]]
create or replace view vwTeacherAcc
as 
select
    tblTeacher.teacherSeq,                    
    tblTeacher.teacherName,                   
    tblTeacher.teacherSsn,              
    tblTeacher.teacherTel,                    
    tblSubject.subjectSeq,                   
    tblSubject.subjectName   
from tblTeacher
    inner join tblAbleSubject 
        on tblTeacher.teacherSeq = tblAbleSubject.teacherSeq
            inner join tblSubject 
                on tblAbleSubject.subjectSeq = tblSubject.subjectSeq
                    order by tblTeacher.teacherSeq, tblSubject.subjectSeq;
                    

-- [[교사계정관리 프로시저]]

create or replace procedure procTeacherAcc(
    pteacherSeq varchar2,
    pcursor out sys_refcursor
)
is
begin
    open pcursor 
    for
    select * from vwTeacherAcc where teacherSeq = pteacherSeq;    
end procTeacherAcc;
 
          
--[[교사계정관리 실행]]
declare
    vcursor sys_refcursor;
    vrow vwTeacherAcc%rowtype;
begin
    procTeacherAcc('T1',vcursor); -- 원하는 교사정보 넣기    
    dbms_output.put_line('교사번호      교사이름      주민번호뒷자리     전화번호        과목번호            과목명     ');  
    dbms_output.put_line('----------------------------------------------------------------------------------------');   
    loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;                    
           dbms_output.put_line(vrow.teacherSeq||'           '||vrow.teacherName||'        '||vrow.teacherSsn||'       '||vrow.teacherTel||'       '||vrow.subjectSeq||'         '||vrow.subjectName);
    end loop;   
end;                        
             
set serveroutput on;       


-- [[교사 계정 관리 입력 프로시저]]
create or replace procedure procTeacherAcc_add
(
    pteacherSeq in varchar2,        --교사번호
    pteacherName in varchar2,       --교사이름
    pteacherSsn in number,          --교사주민번호
    pteacherTel in varchar2,        --교사전화번호
    psubjectSeq in varchar2,        --과목번호
    psubjectName in varchar2        --강의가능과목명
)
is
begin

    insert into tblTeacher(teacherSeq,teacherName,teacherSsn,teacherTel) 
    values(pteacherSeq,pteacherName,pteacherSsn,pteacherTel);
    
    insert into tblSubject(subjectSeq,subjectName)
    values(psubjectSeq,psubjectName);
    commit;
exception
    when others then
        rollback;    
end procTeacherAcc_add;



-- [[교사 강의가능 과목 추가 프로시저]]  
create or replace procedure procAbleSubjectadd
(
    pableSubjectSeq number, -- 강의가능과목번호
    psubjectSeq number, -- 추가과목명
    pteacherSeq varchar2 -- 교사번호    
)
is
begin
        insert into tblAbleSubject(ableSubjectSeq,teacherSeq,subjectSeq)
         values(seqAbleSubject.nextVal,pteacherSeq,psubjectSeq);     
end procAbleSubjectadd;



--[[교사 계정관리 수정 프로시저]]

create or replace procedure procTeacherAcc_update
(        
    pteacherSeq in varchar2,        --수정할 교사번호
    pteacherName in varchar2,       --수정할 교사이름
    pteacherSsn in number,          --수정할 교사주민번호
    pteacherTel in varchar2,        --수정할교사전화번호
    psubjectSeq in varchar2,        --수정할과목번호
    psubjectName in varchar2        --수정할강의가능과목명                
) 
is
begin

    update tblTeacher 
    set teacherName = pteacherName, 
        teacherSsn = pteacherSsn,
        teacherTel = pteacherTel       
    where teacherSeq = pteacherSeq;
    
    update tblSubject
    set  
         subjectName = psubjectName
    where subjectSeq = psubjectSeq;    
exception 
    when others then
        rollback;    
end procTeacherAcc_update;



-- [[교사 계정관리 삭제 프로시저]]

create or replace procedure procTeacherAcc_delete
(
    pteacherSeq in varchar2        --수정할 교사번호    
)
is
begin
    delete from TBLTEACHER where teacherSeq = pteacherSeq;
    commit;
exception
    when others then
    rollback;
end;         

-------------------------------------------------------------------------------- 
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
--뷰를 사용하는 외부에서는 컬럼이 별칭으로만 접근이 가능.
--ORA-00998: must name this expression with a column alias
--00998. 00000 -  "must name this expression with a column alias"

--[[특정교사관리 뷰]] 

create or replace view vwSpecialTeacher
as
    select 
    tblTeacher.teacherSeq as teacherSeq, 
    tblCurriculum.currSeq as currSeq,
    tblCurriculum.currName as currName,
    tblCurriculum.currPeriod as currPeriod,
    tblSubject.subjectSeq as subjectSeq,
    tblSubject.subjectName as subjectName,
    tblOpenSubject.subjectStartDate||' ~ '|| tblOpenSubject.subjectEndDate as subjectPeriod,
    tblBook.bookName as bookName,
    tblClass.className as className,
            case
               when sysdate < tblOpenSubject.subjectStartDate then '강의예정'
                when tblOpenSubject.subjectStartDate <=sysdate and tblOpenSubject.subjectEndDate > sysdate then '강의중'    
                else '강의종료'
            end as courseingYN
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


       
       
--[[특정교사관리 프로시저]]
create or replace procedure procSpecialTeacher(
    pteacherSeq in varchar2,
    pcurrSeq in number,
    psubjectSeq in number,
    pcursor out sys_refcursor
)
is
begin
    open pcursor for
     select      
        tblTeacher.teacherSeq as teacherSeq, 
        tblCurriculum.currSeq as currSeq,
        tblCurriculum.currName as currName,
        tblCurriculum.currPeriod as currPeriod,
        tblSubject.subjectSeq as subjectSeq,
        tblSubject.subjectName as subjectName,
        tblOpenSubject.subjectStartDate||' ~ '|| tblOpenSubject.subjectEndDate as subjectPeriod,
        tblBook.bookName as bookName,
        tblClass.className as className,
                case
                   when sysdate < tblOpenSubject.subjectStartDate then '강의예정'
                    when tblOpenSubject.subjectStartDate <=sysdate and tblOpenSubject.subjectEndDate > sysdate then '강의중'    
                    else '강의종료'
                end as courseingYN
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
end procSpecialTeacher;

set serveroutput on;


--[[특정교사관리실행]] --wrong number or types of arguments in call to 'PROCSPECIALTEACHER'  ==> 인자의 개수가 달라서 생긴 오류
declare
    vcursor sys_refcursor;
    vrow vwSpecialTeacher%rowtype;
begin
      procSpecialTeacher('T1',2,1,vcursor); -- 원하는 교사정보 넣기    
      dbms_output.put_line('교사번호      강의실명            과정번호                                            과정명                         과정기간(일단위)         강의진행여부            과목번호              과목명                                                             과목기간                                 교재명                                         ');  
      dbms_output.put_line('-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');   
    loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;  
        dbms_output.put_line(lpad(vrow.teacherSeq,3,' ')||'      '||lpad(vrow.className,10,' ')||'       '||lpad(vrow.currSeq,10,' ')||'       '||lpad(vrow.currName,75,' ')||'     '||lpad(vrow.currPeriod,5,' ')||'    '||lpad(vrow.courseingYN,18,' ')||'    '||lpad(vrow.subjectSeq,15,' ')||'        '||rpad(vrow.subjectName,58,' ')||'       '||lpad(vrow.subjectPeriod,25,' ')||'       '||rpad(vrow.BookName,60,' ')||'       ');
    end loop;   
end;                        

set serveroutput on;


--[[특정교사관리 삽입]]

create or replace procedure procSpeTeacher_Add1
(
        pteacherSeq in varchar2,       
        pteacherName in varchar2,
        pteacherSsn in varchar2,
        pteacherTel in varchar2              
)
is
begin

    insert into tblTeacher(teacherSeq,teacherName,teacherSsn,teacherTel) 
    values('T'||seqTeacher.nextVal,pteacherName,pteacherSsn,pteacherTel);   
    
end procSpeTeacher_Add1;


create or replace procedure procSpeTeacher_Add2
(
        pcurrSeq in number,            
        pcurrName in varchar2,         
        pcurrRegYN in varchar2,
        pcurrPeriod in number         
)
is
begin
        insert into tblCurriculum(currSeq, currName, currRegYN, currPeriod) 
        values (seqCurriculum.nextVal,pcurrName,pcurrRegYN,pcurrPeriod); 

end procSpeTeacher_Add2;



create or replace procedure procSpeTeacher_Add3
(
        psubjectSeq in number,     --과목번호    
        psubjectName in varchar2,  --과목이름    
        psubjectPeriod in number  --과목기간
)
is
begin        
        insert into tblSubject(subjectSeq,subjectName,subjectPeriod) 
        values(seqSubject.nextVal,psubjectName,psubjectPeriod);      
       
end procSpeTeacher_Add3;


create or replace procedure procSpeTeacher_Add4
(
        pbookSeq in number,            --책번호
        pbookName in varchar2,         --책이름
        ppublisher in varchar2      
)
is
begin
      insert into tblBook(bookSeq,subjectSeq,bookName,publisher)
      values (seqBook.nextVal,seqSubject.nextVal,pbookName,ppublisher);
      
end procSpeTeacher_Add4;

create or replace procedure procSpeTeacher_Add5
(      
        pclassNum in number,           --강의실 번호
        pclassName in varchar2,         --강의실명
        pclassCount in number       
)
is
begin

   insert into tblClass(classNum, className, classCount) 
   values(seqclass.nextval,pclassName,pclassCount);
     
end procSpeTeacher_Add5;



--[[특정교사관리 수정]]
create or replace procedure procinsertSpeTeacher_update(

        pteacherSeq in varchar2,       --교사번호
        pcurrSeq in number,            --과정번호
        pcurrName in varchar2,         --과정이름
        pcurrPeriod in number,         --과정기간
        psubjectSeq in number,         --과정번호
        psubjectName in varchar2,      --과정이름
        psubjectPeriod in varchar2,    --과목기간
        pbookSeq in number,            --책번호
        pbookName in varchar2,         --책이름
        pclassNum in number,           --강의실 번호
        pclassName in varchar2         --강의실명
        
)
is
vcnt number;
begin
    select count(*) into vcnt from tblTeacher where teacherSeq=pteacherSeq;
    if vcnt>0 then
        update tblCurriculum 
        set  currName =pcurrName, currPeriod=pcurrPeriod 
        where currSeq=pcurrSeq; 
            
        update tblSubject
        set subjectName = psubjectName, subjectPeriod = psubjectPeriod
        where subjectSeq=psubjectSeq;
        
        update tblBook
        set bookName=pbookName
        where bookSeq=pbookSeq;
        
        update tblClass
        set className =pclassName
        where classnum =pclassNum;        
     else
        dbms_output.put_line('해당 특정교사 정보가 존재하지 않습니다');
     end if;    
end procinsertSpeTeacher_update;


select * from tblBook;


--[[특정교사관리 삭제]]      
create or replace procedure procSpeTeacher_delete(

        pteacherSeq varchar2, --교사번호
        pcurrSeq number,      -- 과정번호        
        psubjectSeq number,   --과정번호        
        pbookSeq number,      --책번호        
        pclassNum number      --강의실 번호
       
)
is
begin
    delete from tblTeacher  where teacherSeq = pteacherSeq;
    delete from tblCurriculum where currSeq = pcurrSeq;
    delete from tblBook where bookSeq = pbookSeq;
    delete from tblClass where classNum = pclassNum;
exception 
    when others then
    rollback;
END procSpeTeacher_delete;

-------------------------------------------------------------------------------- 
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
    tblTeacher.teacherSeq, 
    tblTeacher.teacherName, 
    tblTeacherHistory.teacherEdu,
    tblTeacherHistory.teacherCareer
from tblTeacher
    inner join tblTeacherHistory
    on tblTeacher.teacherSeq = tblTeacherHistory.teacherSeq;


-- 교사이력관리 뷰
create or replace view vwTeacherHistory
as
select 
    tblTeacher.teacherSeq,
    tblTeacher.teacherName,
    tblTeacherHistory.teacherEdu,
    tblTeacherHistory.teacherCareer
from tblTeacher
    inner join tblTeacherHistory
    on tblTeacher.teacherSeq = tblTeacherHistory.teacherSeq;


select * from tblTeacher;

-- 교사이력관리 출력 프로시저

create or replace procedure procTeacherHistory
(
    pteacherSeq in varchar2,
    pteacherName in varchar2,
    pteacherEdu in varchar2,
    pteacherCareer in varchar2,    
    pcursor out sys_refcursor
)
is
begin
    open pcursor for
        select
            tblTeacher.teacherSeq as teacherSeq,              -- 선생님 번호
            tblTeacher.teacherName as teacherName,             -- 선생님 이름
            tblTeacherHistory.teacherEdu as teacherEdu,       -- 선생님 학력
            tblTeacherHistory.teacherCareer as teacherCareer    -- 선생님 경력
        from tblTeacher
            inner join tblTeacherHistory
            on tblTeacher.teacherSeq = tblTeacherHistory.teacherSeq;    
end procTeacherHistory;


select * from tblTeacherHistory;

-- 교사 이력관리 실행

declare    
    vcursor sys_refcursor;
    vrow vwTeacherHistory%rowtype;    
begin
    procTeacherHistory('T1','어훈심','대졸','1',vcursor);
    dbms_output.put_line('교사번호      교사이름        교사학력        교사경력');
    dbms_output.put_line('-----------------------------------------------------');
    loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        dbms_output.put_line(lpad(vrow.TeacherSeq,4,' ')||'       '||lpad(vrow.TeacherName,8,' ')||'        '||lpad(vrow.teacherEdu,8,' ')||'       '||lpad(vrow.teacherCareer,6,' '));   
    end loop;    
end;


-- 교사이력관리 추가
create or replace procedure procTeacherHistory_add(

    pteacherSsn varchar2,
    pteacherTel varchar2,
    pteacherName varchar2,
    pteacherEdu varchar2,
    pteacherCareer number
)
is
begin

    insert into tblTeacher(teacherSeq,teacherName,teacherSsn,teacherTel) values('T'||seqTeacher.nextVal,pteacherName,pteacherSsn,pteacherTel);
   insert into tblTeacherHistory (teacherHistorySeq,teacherSeq,teacherEdu,teacherCareer) values (seqTeacherHistory.nextval,'T'||seqTeacher.nextVal,pteacherEdu,pteacherCareer);
end procTeacherHistory_add;



-- 교사이력관리 수정
create or replace procedure procTeacherHistory_update(

    pteacherSeq varchar2,
    pteacherName varchar2,
    
    pteacherHistorySeq number,
    pteacherEdu varchar2,
    pteacherCareer number

)
is 
begin

    update tblTeacher
    set teacherName = pteacherName
    where teacherSeq = pteacherSeq;
    
    update tblTeacherHistory
    set teacherEdu = pteacherEdu, teacherCareer = pteacherCareer
    where teacherHistorySeq = pteacherHistorySeq;
    
end procTeacherHistory_update;

-- 교사 이력관리 삭제
create or replace procedure procTeacherHistory_delete
(
    pteacherSeq varchar2,   
    pteacherHistorySeq number   
)
is
begin
    
    delete from tblTeacher where teacherSeq = pteacherSeq;
    delete from tblTeacherHistory where teacherHistorySeq = pteacherHistorySeq;
end procTeacherHistory_delete;
                        
--------------------------------------------------------------------------------
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
                                                    
--개설과정관리 뷰                                                    
create or replace view vwopenCurr
as
select 
    tblTeacher.teacherSeq,
    tblTeacher.teacherName,
    tblCurriculum.currSeq,
    tblCurriculum.currName,
    tblCurriculum.currPeriod,
    tblSubject.subjectSeq,
    tblSubject.subjectName,
    tblOpenSubject.subjectStartDate||' ~ '|| tblOpenSubject.subjectEndDate as coursesubjectperiod,
    tblBook.bookName,
    tblClass.className,                                      
    tblClass.classCount,
    case
        when sysdate < tblOpenSubject.subjectStartDate then '강의예정'
        when tblOpenSubject.subjectStartDate <=sysdate and tblOpenSubject.subjectEndDate > sysdate then '강의중'    
        else '강의종료'
    end as courseingYN
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
                                   
                                   
--개설과정관리 프로시저                                               
create or replace procedure procOpencurr
(     
    currSeq in number,
    pcursor out sys_refcursor        
)
is
begin
    open pcursor for
    select * from vwOpencurr;
end procOpencurr;


-- 개설과정관리 함수
create or replace function StringAdd(

    currPeriod number,
    classNum number

)return varchar2
is
begin
    return currPeriod||'일' ||'       '|| classNum ||'강의실';
end;




--[[개설과정관리 출력]]
declare
     vcursor sys_refcursor;
    vrow vwopenCurr%rowtype;  
begin

    procOpencurr(1,1,'T1',vcursor);
    dbms_output.put_line('교사번호    교사이름    강의진행여부     개설과정번호     강의실명       강의실최대인원    교육생등록인원       과목기간            개설과목번호                  개설과목이름                                  책이름 ');
    dbms_output.put_line('----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
    loop    
    fetch vcursor into vrow;
    exit when vcursor%notfound;
    dbms_output.put_line(lpad(vrow.teacherSeq,5,' ')||'     '||lpad(vrow.teacherName,6,' ')||'     '||lpad(vrow.courseingYN,10,' ')||'         '||lpad(vrow.currSeq,5,' ')||'       '||lpad(vrow.className,10,' ')||'     '||lpad(vrow.classCount,8,' ')||'      '||lpad(vrow.classCount,10,' ')||'       '||vrow.coursesubjectperiod||'      '||lpad(vrow.subjectSeq,5,' ')||'       '||rpad(vrow.subjectName,60,' ')||'      '||lpad(vrow.bookName,35,' '));
    end loop;
end;
                                                    
                                                    
--[[개설과정관리 삽입]]      

create or replace procedure procopenCurr_Add1
(   
    psubjectSeq in number,
    psubjectName in varchar2,
    psubjectPeriod in number
)
is
begin        
       insert into tblSubject(subjectSeq,subjectName,subjectPeriod) 
       values(seqSubject.nextVal,psubjectName,psubjectPeriod);            
end procopenCurr_Add1;


create or replace procedure procopensubject_Add6
(
    popenSubjectSeq number,
    psubjectSeq number,
    popenCurrSeq number,
    psubjectStartDate Date,
    psubjectEndDate Date
    
)
is
begin

    insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) 
    values(seqOpenSubject.nextVal, psubjectSeq, popenCurrSeq, psubjectStartDate, psubjectEndDate); 
    
end procopensubject_Add6;


create or replace procedure procpoencurr_Add2
(
    pclassNum number, 
    pcurrStartDate date,
    pcurrEnddate date
)
is
begin

 insert into tblOpencurr(openCurrSeq,currSeq,classNum,teacherSeq,currStartDate,currEndDate) 
 values(seqOpenCurr.nextVal,seqopenSubject.nextVal,pclassNum,'T'||seqTeacher.nextVal,pcurrStartDate,pcurrEnddate);    
    
end procpoencurr_Add2;


create or replace procedure procopencurr_Add3 
(
    pclassRegSeq varchar2,
    pcompleteStatusDate DATE,
    pcompleteStatusPF varchar2    
)
is
begin
    
    insert into tblCompleteStatus(completeStatusSeq,classRegSeq,completeStatusDate,completeStatusPF) 
    values(seqCompleteStatus.nextVal,pclassRegSeq,pcompleteStatusDate,pcompleteStatusPF);

end procopencurr_Add3;


create or replace procedure procopencurr_Add4
(
    pclassName varchar2,                                     
    pclassCount number
)
is
begin

     insert into tblClass(classNum,className,classCount) 
     values(seqclass.nextval,pclassName,pclassCount);

end procopencurr_Add4;


create or replace procedure procopencurr_Add5
(
    pbookName in varchar2,
    pbookpublisher in varchar2,
    ppublisher in varchar2
)
is
begin
    
    insert into tblBook(bookSeq,subjectSeq,bookName,publisher) 
    values (seqBook.nextVal,seqSubject.nextVal,pbookName,ppublisher);
    
end procopencurr_Add5;


--[[개설과정관리 수정]]  

create or replace procedure procopencurr_update1(
    pcurrSeq  number,
    pcurrName varchar2,
    pcurrPeriod number   
)
is
begin

    update tblCurriculum
    set
    currName = pcurrName,
    currPeriod = pcurrPeriod   
    where currSeq = pcurrSeq;
    
end procopencurr_update1;



create or replace procedure procopencurr_update2(
    
    psubjectSeq in number,       --과목번호  
    psubjectName in varchar2,   --과목이름
    psubjectPeriod in number   --과목기간    
  
)
is
begin
    update tblSubject 
    set  
        subjectname = psubjectname        
        where subjectSeq = psubjectSeq;
        
end procopencurr_update2;



create or replace procedure procopensubject_update3
(
    popensubjectseq number,
    psubjectStartDate date,
    psubjectEndDate date
    
)
is
begin
    update tblOpenSubject
    set 
        subjectStartDate = psubjectStartDate,
        subjectEndDate = psubjectEnddate
    where opensubjectseq = popensubjectseq;

end procopensubject_update3;



create or replace procedure procopencurr_update4
(   
    pbookseq in number,
    pbookName in varchar2,  
    ppublisher in varchar2
)
is
begin

    update tblBook 
    set bookName = pbookname, publisher=ppublisher 
    where bookseq=pbookseq;
 
end procopencurr_update4;  



create or replace procedure procopencurr_update5  
(    
    pclassNum number,
    pclassName varchar2,                                     
    pclassCount number
)       
is
begin

    update tblClass 
    set className = pclassName,
        classCount=pclassCount 
    where classNum= pclassNum;

end procopencurr_update5;



--[[개설과정관리 삭제]]
                                  
                                  
create or replace procedure procopenCurr_delete
(
       
    pclassNum in number,
    pbookSeq in number,
    psubjectseq in number,
    popenCurrSeq in number,
    pteacherSeq in varchar2  
)
is
begin

    delete from tblteacher where teacherSeq = pteacherSeq;
    delete from tblClass where classNum = pclassNum;
    delete from tblBook where bookSeq = pbookSeq;
    delete from tblSubject where subjectSeq = psubjectSeq;
    delete from tblopenSubject where openCurrSeq = popenCurrSeq;
    
    commit;
exception
    when others then
    rollback;
end;
-------------------------------------------------------------------------------- 
/* 수료 및 중도탈락여부 함수로 해보기!!
---------------------------------
업무영역 - 특정개설과정관리
요구사항 ID - A003 - 02
요구사항 명 - 특정개설과정관리
---------------------------------
*/
/*
- 과정번호를 입력, 삭제, 출력할 수 있다.
- 개설된 과목번호를 입력, 삭제, 출력할 수 있다.
- 개설된 과목명을 입력, 수정, 삭제, 출력할 수 있다.
- 과목별 기간(시작 연월일, 종료 연월일)을 입력, 수정, 삭제, 출력할 수 있다.
- 강의실 정보를 입력, 수정, 삭제, 출력할 수 있다.
- 교사번호를 입력, 삭제, 출력할 수 있다.
- 교사명을 입력, 수정, 삭제, 출력할 수 있다.
- 개설과목 등록여부를 입력, 수정, 삭제, 출력할 수 있다.
- 교재명을 입력, 수정, 삭제, 출력할 수 있다.
- 등록된 교육생 이름을 출력할 수 있다.
- 등록된 교육생의 주민번호 뒷자리를 출력할 수 있다.
- 등록된 교육생의 전화번호를 출력할 수 있다.
- 교육생의 등록일을 출력할 수 있다.
- 수료일(및 중도탈락)을 출력할 수 있다.
- 수료및 중도탈락여부를 출력할 수 있다.
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

 
--[[특정개설과정관리 뷰]]

create or replace view vwOpencurr
as
select 
    tblOpenSubject.openCurrSeq,                 --개설과정번호
    tblOpenSubject.openSubjectSeq,              --개설과목번호
    tblSubject.subjectName,                     --개설과목이름
    tblOpenSubject.subjectStartDate||' ~ '|| tblOpenSubject.subjectEndDate as subjectperiod,    --과목기간
    tblClass.className,                         --강의실명
    tblTeacher.teacherseq,                      --교사번호
    tblTeacher.teacherName,                     --교사명
    tblCurriculum.currRegYN,                    --과정등록여부
    tblBook.bookName,                           --책이름
    tblStudent.stdName,                         --학생이름
    tblStudent.stdSsn,                          --학생주민번호
    tblStudent.stdTel,                          --학생전화번호
    tblStudent.stdRegDate,                      --학생등록일
    tblCompleteStatus.completeStatusDate,       --수료날짜  
    case
        when tblCompleteStatus.completeStatusPF = 'P' then '수료'
        when tblCompleteStatus.completeStatusPF = 'F' then '중도탈락'
        else '수강중'
    end as PFStatus --수료및중도탈락여부
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



--[[특정개설과정관리 프로시저]]

create or replace procedure procOpencurr
(
    popenCurrSeq in number,        --개설과정번호
    popenSubjectSeq in number,     --개설과목번호    
    pteacherseq in varchar2,         --교사번호
    pcursor out sys_refcursor
)
is
begin
    open pcursor for
    select * from vwOpencurr;
end procOpencurr;


--[[특정개설과정관리 출력]]

declare
    vcursor sys_refcursor;
    vrow vwOpencurr%rowtype;    
begin
    procOpencurr(1,1,'T1',vcursor);
    dbms_output.put_line('교사번호    교사이름        개설과정번호        과정등록여부      학생이름        학생주민번호          학생전화번호        학생등록일       수료날짜       수료상태         강의실명           과목기간             개설과목번호                  개설과목이름                                                  책이름 ');
   
   loop
   fetch vcursor into vrow;
   exit when vcursor%notfound;
   dbms_output.put_line(lpad(vrow.teacherSeq,3,' ')||'      '||lpad(vrow.teacherName,8,' ')||'      '||lpad(vrow.openCurrSeq,10,' ')||'      '||lpad(vrow.currRegYN,10,' ')||'        '||lpad(vrow.stdName,11,' ')||'      '||lpad(vrow.stdSsn,11,' ')||'       '||lpad(vrow.stdTel,16,' ')||'       '||vrow.stdRegDate||'       '||vrow.completeStatusDate||'       '||lpad(vrow.PFStatus,6,' ')||'     '||
                        lpad(vrow.className,12,' ')||'       '||vrow.subjectperiod||'        '||vrow.openSubjectSeq||'       '||rpad(vrow.subjectName,54,' ')||'        '||rpad(vrow.bookName,60,' '));
   
   end loop;   
end;


set serveroutput on;


--[[특정개설과정관리 수정]]

create or replace procedure procSpeopencurr_update1(
    pcurrSeq  number,
    pcurrName varchar2,
    pcurrPeriod number   
)
is
begin

    update tblCurriculum
    set
    currName = pcurrName,
    currPeriod = pcurrPeriod   
    where currSeq = pcurrSeq;
    
end procSpeopencurr_update1;



create or replace procedure procSpeopencurr_update2(
    
    psubjectSeq in number,       --과목번호  
    psubjectName in varchar2,    --과목이름
    psubjectPeriod in number     --과목기간    
  
)
is
begin
    update tblSubject 
    set  
        subjectname = psubjectname        
        where subjectSeq = psubjectSeq;
        
end procSpeopencurr_update2;



create or replace procedure procSpeopensubject_update3
(
    popensubjectseq number,
    psubjectStartDate date,
    psubjectEndDate date
    
)
is
begin
    update tblOpenSubject
    set 
        subjectStartDate = psubjectStartDate,
        subjectEndDate = psubjectEnddate
    where opensubjectseq = popensubjectseq;

end procSpeopensubject_update3;



create or replace procedure procSpeopencurr_update4
(   
    pbookseq in number,
    pbookName in varchar2,  
    ppublisher in varchar2
)
is
begin

    update tblBook 
    set bookName = pbookname, publisher=ppublisher 
    where bookseq=pbookseq;
 
end procSpeopencurr_update4;  


create or replace procedure procSpeopencurr_update5  
(    
    pclassNum number,
    pclassName varchar2,                                     
    pclassCount number
)       
is
begin

    update tblClass 
    set className = pclassName,
        classCount=pclassCount 
    where classNum= pclassNum;

end procSpeopencurr_update5;


create or replace procedure procSpeopencurr_update6
(
    pteacherSeq number,
    pteacherName varchar2  
)
is
begin
    update tblTeacher
    set
    teacherName = pteacherName
    where teacherSeq = pteacherSeq;
end procSpeopencurr_update6;


create or replace procedure procSpeopencurr_update7
(
   pstdSeq number,
   pstdName varchar2, 
   pstdTel varchar2,                   
   pstdSsn number           

)
is
begin

    update tblStudent
    set
    stdName = pstdName,
    stdTel = pstdTel,
    stdSsn = pstdSsn
    where pstdSeq = stdSeq;
    
end procSpeopencurr_update7;


create or replace procedure procSpeopencurr_update8
(
    pcompleteStatusSeq number,
    pcompleteStatusDate date
)
is
begin

    update tblCompleteStatus
    set 
    completeStatusDate = pcompleteStatusDate
    where completeStatusSeq = pcompleteStatusSeq;
    
end procSpeopencurr_update8;

--[[특정개설과정관리 삭제]]  

create or replace procedure procSpeOpencurr_Delete
(
    pteacherSeq varchar2,
    pclassNum number,
    pcurrSeq number,
    pbookSeq number,
    pstdSeq number,
    psubjectSeq number
)
is
begin
    delete from tblTeacher where teacherSeq = pteacherSeq;
    delete from tblClass where classNum = pclassNum;
    delete from tblSubject where subjectSeq = psubjectSeq;
    delete from tblCurriculum where currSeq = pcurrSeq;
    delete from tblBook where bookSeq = pbookSeq;
    delete from tblStudent where stdSeq = pstdSeq;
end;
-------------------------------------------------------------------------------- 
 /*완료
---------------------------------
업무영역 - 개설 과목 관리
요구사항 ID - A004
요구사항 명 - 개설 과목 관리
---------------------------------
- 과정번호를 출력할 수 있다.
- 과목번호 입력, 삭제, 출력할 수 있다.
- 과목명을 입력, 수정, 삭제, 출력할 수 있다.
- 과목기간 (시작 및 종료 연월일)을 입력, 수정. 삭제, 출력할 수 있다.
- 강의진행상태를 입력,수정,삭제,출력할 수 있다.
- 교재명을 입력, 수정, 삭제, 출력할 수 있다.
- 교사번호를 입력, 삭제, 출력할 수 있다.
- 교사명을 입력, 삭제, 출력할 수 있다.

*/

-- [[출력]]
select 
    tblOpencurr.currSeq as "개설과정번호",             
    tblSubject.SubjectSeq as "개설과목번호",
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

--[[트리거]] 업무상황> 과목테이블(tblSubject)에 과목이 추가되면 개설과목테이블(tblOpensubject)에 과목이 추가됨
create or replace trigger trgAddSubject 
    after 
    insert  
    on tblSubject   -- 신규 과목이 추가(insert)
    for each row           
begin    
  insert into tblOpencurr(openSubjectSeq,subjectSeq,openCurrSeq,subjectStartDate,subjectEndDate) values(seqOpenSubject.nextVal,42,'13','2022-04-15','2022-05-15');    
end;

*/

                                       
--[[개설과목관리 뷰]] 

create or replace view vwopensubject 
as
select 
    tblOpencurr.currSeq,             
    tblSubject.SubjectSeq,
    tblSubject.subjectName,            
    tblOpenSubject.subjectStartDate||'~'||tblOpenSubject.subjectEndDate as subjectcoursePeriod,  
    case
        when tblOpenSubject.subjectEndDate < sysdate then '강의종료'
        else '강의중'
    end as coursestatus,
    tblBook.bookName,                      
    tblTeacher.teacherSeq ,               
    tblTeacher.teacherName                 
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




--[[개설과목관리 프로시저]]
create or replace procedure procopensubject(

    pcurrSeq number,        --과정번호 
    pSubjectSeq number,    --과목번호  
    pbookseq number,         --책번호  
    pteacherseq varchar2,    --교사번호
    pcursor out sys_refcursor                   
)
is
begin
    open pcursor for   
    select 
    tblOpencurr.currSeq,             
    tblSubject.SubjectSeq,
    tblSubject.subjectName,            
    tblOpenSubject.subjectStartDate||'~'||tblOpenSubject.subjectEndDate as subjectcoursePeriod,
    case
        when tblOpenSubject.subjectEndDate < sysdate then '강의종료'
        else '강의중'
    end as courseStatus,
    tblBook.bookName,                      
    tblTeacher.teacherSeq,               
    tblTeacher.teacherName                 
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
end procopensubject;    
   

--[[개설과목관리 출력]]
declare
    vcursor sys_refcursor;
    vrow vwopensubject%rowtype;
begin
    procopensubject(1,1,1,'T1',vcursor); --과정번호,과목번호,책번호,교사번호,cursor   
    
    dbms_output.put_line('과정번호     교사번호           교사이름               과목번호                  과목명                                       과목기간             수강상태                     책이름');
    dbms_output.put_line('------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');    
    loop
     fetch vcursor into vrow;
             exit when vcursor%notfound;             
             dbms_output.put_line(lpad(vrow.currSeq,3,' ')||'     '||lpad(vrow.teacherseq,8,' ')||'     '||lpad(vrow.teacherName,15,' ')||'     '||lpad(vrow.SubjectSeq,15,' ')||'     '||lpad(vrow.subjectName,20,' ')||rpad(vrow.subjectName,30,' ')||'       '||lpad(vrow.subjectcoursePeriod,20,' ')||'        '||vrow.courseStatus||'     '||vrow.bookname);
    end loop;    
end;


select * from vwopensubject;


--[[ 개설과목관리 삽입프로시저 ]] 
--과목,책

create or replace procedure procopenSubject_Add1
(
 
    psubjectName in varchar2,
    psubjectPeriod in number,
    
    pbookName in varchar2,
    pbookpublisher in varchar2,
    ppublisher in varchar2   

)
is
begin
        
       insert into tblSubject(subjectSeq,subjectName,subjectPeriod) values(seqSubject.nextVal,psubjectName,psubjectPeriod);    
       insert into tblBook(bookSeq,subjectSeq,bookName,publisher) values (seqBook.nextVal,seqSubject.nextVal,pbookName,ppublisher);
  
end procopenSubject_Add1;


--과정

create or replace procedure procopenSubject_Add3
(
    pcurrName varchar2,
    pcurrRegYN varchar2,
    pcurrPeriod number
)
is
begin
    insert into tblCurriculum(currSeq, currName, currRegYN, currPeriod) 
    values (seqCurriculum.nextVal,pcurrName,pcurrRegYN,pcurrPeriod);               
end procopenSubject_Add3;

--,선생님
create or replace procedure procopenSubject_Add4
(
    pteacherName varchar2,
    pteacherSsn varchar2,
    pteacherTel number
)
is
begin

    insert into tblTeacher (teacherSeq,teacherName,teacherSsn,teacherTel) 
    values ('T'||seqteacher.nextVal,pteacherName,pteacherSsn,pteacherTel);

end procopenSubject_Add4;



begin
    procopensubject_update('과정번호(number)','과정이름(varchar2)','과목번호(number)','과목이름(varchar2)','과목기간(subjectPeriod)','강의진행상태(varchar2)','책번호(number)','책이름(varchar2)','교사번호(number),교사이름(varchar2)');
end;






--[[ 개설과목관리 수정프로시저 ]]
create or replace procedure procopensubject_update
(
    pcurrSeq number,      
    pcurrName varchar2,
    pSubjectSeq number,
    psubjectName varchar2,
    psubjectPeriod number,    
    pcourseStatus varchar2,    
    pbookSeq number,
    pbookName varchar2,             
    pteacherSeq number,               
    pteacherName varchar2    
)
is 
begin
   
   update tblCurriculum
   set currName = pcurrName
   where currSeq= pcurrSeq;
   
   update tblSubject
   set subjectName = psubjectName, subjectPeriod = psubjectPeriod    
   where subjectSeq = psubjectSeq;
   
  

   update tblBook
   set bookName = pbookName
   where bookSeq = pbookSeq;
   
   update tblTeacher
   set teacherName = pteacherName
   where teacherseq = pteacherSeq;

end procopensubject_update;

begin
    procopensubject_update('과정번호(number)','과정이름(varchar2)','과목번호(number)','과목이름(varchar2)','과목기간(subjectPeriod)','강의진행상태(varchar2)','책번호(number)','책이름(varchar2)','교사번호(number),교사이름(varchar2)');
end;



--[[개설과목관리 삭제프로시저]]
create or replace procedure procopensubject_delete
(
    pcurrSeq number,    
    pSubjectSeq number,    
    pbookSeq number,            
    pteacherSeq varchar2                 
)
is 
begin

    delete from tblCurriculum  where currSeq = pcurrSeq;
    delete from tblSubject where subjectSeq = psubjectSeq;
    delete from tblBook where bookSeq = pbookSeq;
    delete from tblTeacher where teacherSeq=pteacherSeq;
     
      commit;
    exception
        when others then
        rollback;

end procopensubject_delete;


begin
    procopensubject_update('과정번호(number)','과정이름(varchar2)','과목번호(number)','과목이름(varchar2)','과목기간(subjectPeriod)','강의진행상태(varchar2)','책번호(number)','책이름(varchar2)','교사번호(number),교사이름(varchar2)');
end;
-------------------------------------------------------------------------------- 
/*
업무 영역 - 교육생 관리
요구사항 ID - A005-01
요구사항 명 - 교육생 관리
개요 - 관리자는 여러 명의 교육생 정보를 등록 및 관리할 수 있다.
요구사항내역
상세설명
- 교육생 번호를 출력할 수 있다.
- 교육생 이름을 출력할 수 있다.
- 주민번호 뒷자리를 출력할 수 있다.
- 전화번호를 출력할 수 있다.
- 교육생의 등록일을 출력할 수 있다.
- 수강신청횟수를 출력할 수 있다.
- 수료 및 중도 탈락 여부를 출력할 수 있다.
- 수료 및 중도 탈락 일자를 출력할 수 있다.
제약사항
- 교육생의 등록일은 자동으로 입력된다.
- 교육생에 대한 수료 및 중도 탈락 처리를 할 수 있어야 한다.
*/
--------------------------------------------------------------------------------
--교육생 뷰테이블 (완료)

create or replace view vwStudent
as
select
    s.stdSeq as stdSeq,
    s.stdName as stdName,
    s.stdSsn as stdSsn,
    s.stdTel as stdTel,
    s.stdRegDate as stdRegDate,
    s.stdCount as stdCount,
    case
        when cs.completeStatusPF = 'P' then '수료'
        when cs.completeStatusPF = 'F' then '중도탈락'
        else '수강중'
    end as completeStatusPF,
    case
        when cs.completeStatusDate is null then '미수료'
        else to_char(cs.completeStatusDate)
    end as completeStatusDate
from tblStudent s
    inner join tblStudentClassReg scr
        on s.stdSeq = scr.stdSeq
            left outer join tblCompleteStatus cs
                on scr.classRegSeq = cs.classregseq;

select * from vwStudent;


---------------------------------------------------------------------------------------------------------------------
--교육생 프로시저 (완료)

create or replace procedure procStudent(
    pcursor out sys_refcursor
)
is
begin
    open pcursor for
        select 
            *
        from vwStudent;
end;


---------------------------------------------------------------------------------------------------------------------
--교육생 실행 (완료)

declare
    vcursor sys_refcursor;
    vrow vwStudent%rowtype;
begin
    
    procStudent(vcursor);
    dbms_output.put_line('교육생번호 교육생이름   교육생주민번호뒷자리  교육생전화번호   교육생등록일  교육생수강신청횟수  수료및중도탈락여부  수료및중도탈락일자');
    dbms_output.put_line('-------------------------------------------------------------------------------------------------------------------------');
   
    loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        
        dbms_output.put_line(lpad(vrow.stdSeq,5,' ') ||'  '|| lpad(vrow.stdName,10,' ') ||'  '|| lpad(vrow.stdSsn,15,' ') ||'     '|| lpad(vrow.stdTel,16,' ') ||'   '|| lpad(vrow.stdRegDate,8,' ') ||'            '|| vrow.stdCount ||'             '|| lpad(vrow.completeStatusPF,5,' ')||'            '|| rpad(vrow.completeStatusDate,8,' '));
    
    end loop;

end;

--------------------------------------------------------------------------------
/*
업무 영역 - 특정 교육생 관리
요구사항 ID - A005-02
요구사항 명 - 특정 교육생 관리
개요 - 특정 교육생 정보를 등록 및 관리할 수 있다.
요구사항내역
상세설명
- 교육생 번호를 입력, 삭제, 출력할 수 있다.
- 교육생 이름을 입력, 수정, 삭제, 출력할 수 있다.
- 주민번호 뒷자리를 입력, 삭제, 출력할 수 있다.
- 전화번호를 입력, 수정, 삭제, 출력할 수 있다.
- 교육생의 등록일을 입력, 삭제, 출력할 수 있다.
- 교육생의 강의실을 입력, 삭제, 출력할 수 있다.
- 교육생이 수강하는 과정의 기간을 입력, 삭제, 출력할 수 있다.
- 수료 및 중도 탈락 여부를 입력, 수정, 삭제, 출력할 수 있다.
- 수료 및 중도 탈락 일자를 입력, 수정, 삭제, 출력할 수 있다.
제약사항
- 교육생의 등록일은 자동으로 입력된다.
- 교육생에 대한 수료 및 중도 탈락 처리를 할 수 있어야 한다.
*/ 
--------------------------------------------------------------------------------
--특정 교육생 뷰테이블 (완료)

select * from vwSelectStudent;

create or replace view vwSelectStudent
as
select
    s.stdSeq as stdSeq,
    s.stdName as stdName,
    s.stdSsn as stdSsn,
    s.stdTel as stdTel,
    s.stdRegDate as stdRegDate,
    cl.className as className,
    c.currPeriod as currPeriod,
    case
        when cs.completeStatusPF = 'P' then '수료'
        when cs.completeStatusPF = 'F' then '중도탈락'
        else '수강중'
    end as completeStatusPF,
    case
        when cs.completeStatusDate is null then '미수료'
        else to_char(cs.completeStatusDate)
    end as completeStatusDate
from tblStudent s
    inner join tblStudentClassReg scr
        on s.stdSeq = scr.stdSeq
            inner join tblOpenCurr oc
                on scr.openCurrSeq = oc.openCurrSeq
                    inner join tblClass cl
                        on oc.classNum = cl.classNum
                            inner join tblCurriculum c
                                on oc.currSeq = c.currSeq
                                    left outer join tblCompleteStatus cs
                                        on scr.classRegSeq = cs.classRegSeq;

---------------------------------------------------------------------------------------------------------------------
--특정 교육생 프로시저 (완료)

create or replace procedure procSelectStudent(
    pstdSeq varchar2,
    pcursor out sys_refcursor
)
is
begin
    open pcursor for
        select 
            *
        from vwSelectStudent
            where stdSeq = pstdSeq;
end;

---------------------------------------------------------------------------------------------------------------------
--특정 교육생 실행 (완료)

declare
    vcursor sys_refcursor;
    vrow vwSelectStudent%rowtype;
begin
    
    procSelectStudent('S200',vcursor);
   
    loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        dbms_output.put_line('교육생번호 교육생이름   교육생주민번호뒷자리   교육생전화번호    등록일      강의실   수강하는과정의기간  수료및중도탈락여부  수료및중도탈락일자');
        dbms_output.put_line('----------------------------------------------------------------------------------------------------------------------------------');
        dbms_output.put_line(lpad(vrow.stdSeq,5,' ') ||'  '|| lpad(vrow.stdName,10,' ') ||'  '|| lpad(vrow.stdSsn,15,' ') ||'     '|| lpad(vrow.stdTel,16,' ') ||'   '|| lpad(vrow.stdRegDate,8,' ') ||'  '|| lpad(vrow.className,10,' ') ||'  '|| lpad(vrow.currPeriod,10,' ') ||'   '|| lpad(vrow.completeStatusPF,15,' ') ||'            '|| rpad(vrow.completeStatusDate,8,' '));
    
    end loop;

end;

---------------------------------------------------------------------------------------------------------------------
--교육생 추가


insert (교육생번호, 교육생이름) values ()


select * from tblStudent;
select * from tblStdJob;
select * from tblStdLicense;

create or replace procedure procAddStd(
    pstdName in varchar2,
    pstdTel in varchar2,
    pstdSsn in number,
    pstdCount in number
)
is
    vcnt number;
begin
    select count(*) into vcnt from tblStudent where stdName=pstdName;
    if vcnt=0 then
        insert into tblStudent (stdSeq,stdName,stdTel,stdSsn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,pstdName,pstdTel,pstdSsn,sysdate,pstdCount);
    else
        dbms_output.put_line('해당 교육생이 이미 존재합니다');
    end if;
end;


begin
    procAddStd('교육생명(varchar2)','전화번호(varchar2)','주민뒷자리(number)','수강횟수(number)');
end;

--ex)
begin
    procAddStd('요호호','010-1234-5432',1404222,2);
end;

select * from tblStudent

---------------------------------------------------------------------------------------------------------------------
--특정 교육생 삭제

create or replace procedure procDeleteStd(
    pstdSeq varchar2
)
is
    vcnt number;
begin
    
     select count(*) into vcnt from tblStudent where stdseq=pstdSeq;
    if vcnt >0 then
        delete from tblStudent where stdSeq=pstdSeq;
    else
        dbms_output.put_line('해당 학생이 존재하지 않습니다.');
    end if;
end;

begin
    procDeleteStd('학생번호(varchar2)');
end;

--ex)
begin
    procDeleteStd('S201');
end;

---------------------------------------------------------------------------------------------------------------------
--특정 교육생 수정

select * from tblStudent;
select * from tblClass;

create or replace procedure procUpdateStd(
    pstdSeq in varchar2,
    pstdName in varchar2,
    pstdTel in varchar2
)
is
    vcnt number;
begin
    
     select count(*) into vcnt from tblStudent where stdseq=pstdSeq;
    if vcnt >0 then
        update tblStudent set stdSeq = pstdSeq, stdName = pstdName, stdTel = pstdTel where stdSeq = pstdSeq;
    else
        dbms_output.put_line('해당 학생이 존재하지 않습니다.');
    end if;
end;

begin
    procUpdateStd('수정할교육생번호','교육생명(varchar2)','전화번호(varchar2)');
end;

--ex)
begin
    procUpdateStd('S200','아무리','010-1236-5676');
end;

-------------------------------------------------------------------------------------------------------------------

select * from tblCompleteStatus;
select * from tblStudentClassreg;

create or replace procedure procUpdateCompleteStatusPF(
    pclassRegSeq in varchar2,
    pcompleteStatusPF in varchar2,
    pcompleteStatusDate in date
)
is
    vcnt number;
begin
    
     select count(*) into vcnt from tblCompleteStatus where classRegSeq = pclassRegSeq;
    if vcnt >0 then
        update tblCompleteStatus set classRegSeq = pclassRegSeq, completeStatusPF = pcompleteStatusPF, completeStatusDate = pcompleteStatusDate where classRegSeq = pclassRegSeq;
    else
        dbms_output.put_line('해당 수강번호가 존재하지 않습니다.');
    end if;
end;

begin
    procUpdateCompleteStatusPF('수정할수강등록번호(varchar2)','수료및중도탈락상태(varchar2)','수료및중도탈락날짜(varchar2)');
end;

--ex)
begin
    procUpdateCompleteStatusPF('SC30','F','21-06-04');
end;
--------------------------------------------------------------------------------
-- A006-01. 과정별 시험등록여부 및 점수등록여부
create or replace view vwCurrCheck
as
select distinct currSeq, SubSeq, subName, subDate, bookName, tName, testYN, scoreYN from
(select
    os.openCurrSeq as currSeq,
    os.subjectSeq as SubSeq,
    su.subjectName as subName,
    fDate(os.subjectStartDate, os.subjectEndDate) as subDate,
    b.bookName as bookName,
    t.teacherName as tName,
    te.testRegYN as testYN,
    fnScoreYN (sco.scoreSeq) as scoreYN
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
                                                on te.testSeq = sco.testSeq)
                                                    order by currseq;
--------------------------------------------------------------------------------
-- A006-01. 과정별 시험등록여부 및 성적등록여부 조회
create or replace procedure procCurrCheck(
    pCurrSeq in vwCurrCheck.currseq%type
)
is
    cursor vcursor is select * from vwCurrCheck where pCurrSeq = vwCurrCheck.currseq order by subseq;
    vrow vwCurrCheck%rowtype;
begin
    open vcursor;
    
    dbms_output.put_line('과정번호     과목번호      과목명                                     과목기간                교재명                                          교사명       시험지등록여부       성적등록여부');
    dbms_output.put_line('-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');  
    
    loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        dbms_output.put_line(rpad(vrow.currseq,7,' ')||'      '||rpad(vrow.subseq,7,' ')||'     '|| rpad(vrow.subName,39,' ') ||'     '|| rpad(vrow.subDate,19,' ') ||'     '|| rpad(vrow.bookName,40,' ') || '     ' || lpad(vrow.tName,10,' ') || '     ' || lpad(vrow.testYN,10,' ') || '     ' || lpad(vrow.scoreYN, 10, ' '));
    end loop;
    
    close vcursor;
end;

-- A006-01. 과정별 시험등록여부 및 성적등록여부 조회
exec procCurrCheck(12);
--------------------------------------------------------------------------------
-- A006-02,03. 과목별/교육생별 시험관리 및 성적조회
create or replace view vwScoreReport
as
select
    s.stdSeq as stdSeq,
    s.stdName as stdName,
    s.stdSsn as stdSsn,
    c.currSeq as currSeq,
    c.currName as currName,
    fDate(currStartDate, currEndDate) as currDate,
    cl.className as className,
    su.SubjectSeq as subSeq,
    su.subjectName as subName,
    fDate(subjectStartDate, subjectEndDate) as subDate,
    t.teacherName as tName,
    sco.writingScore as writingScore,
    sco.performScore as performScore,
    sco.attendScore as attendScore
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
                                                                        on (sco.classRegSeq = scr.classRegSeq and sco.testSeq = te.testSeq);
--------------------------------------------------------------------------------
-- A006-02. 과목별 시험관리 및 성적조회
create or replace procedure procScoreRepor_Sub(
    pSubSeq in vwScoreReport.subSeq%type
)
is
    cursor vcursor is select * from vwScoreReport where pSubSeq = vwScoreReport.subSeq order by currSeq, stdName, SubSeq;
    vrow vwScoreReport%rowtype;
begin
    open vcursor;
    
    dbms_output.put_line(' 과정번호     과정명                                                                    과정기간                과목번호      과목명                                     강의실           교사명      이름       주민번호 뒷자리     필기점수     실기점수     출석점수');
    dbms_output.put_line('-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');  
    
        loop
            fetch vcursor into vrow;
            exit when vcursor%notfound;
            dbms_output.put_line(lpad(vrow.currSeq,7,' ')||'      '|| rpad(vrow.currName,72,' ') ||'     '|| rpad(vrow.currDate,19,' ') ||'     '|| rpad(vrow.subseq,7,' ')||'     '|| rpad(vrow.subName,39,' ') ||'     '|| rpad(vrow.className,8,' ')|| '     ' || lpad(vrow.tName,10,' ') || '     ' || rpad(vrow.stdName,9,' ') ||'      '|| rpad(vrow.stdSsn,10,' ') ||'     '|| lpad(vrow.writingScore,7,' ') ||'      '||lpad(vrow.performScore,7,' ') ||'      '||lpad(vrow.attendScore,7,' ')); 
        end loop;
        
    close vcursor;
end;

-- A006-02. 과목별 시험관리 및 성적조회
exec procScoreRepor_Sub(12); -- 과목번호(숫자)
--------------------------------------------------------------------------------
-- A006-03. 교육생별 시험관리 및 성적조회 - 교육생 번호로 조회
create or replace procedure procScoreReport_StdSeq(
    pStdSeq in vwScoreReport.stdSeq%type
)
is
    cursor vcursor is select * from vwScoreReport where pStdSeq = vwScoreReport.stdSeq order by currSeq, subSeq;
    vrow vwScoreReport%rowtype;
begin
    open vcursor;
    
    dbms_output.put_line('교육생번호     이름       주민번호 뒷자리     과정명                                                                    과정기간                과목번호      과목명                                     과목기간                강의실           교사명      필기점수     실기점수     출석점수');
    dbms_output.put_line('-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');  
        
        loop
            fetch vcursor into vrow;
            exit when vcursor%notfound;
            dbms_output.put_line(lpad(vrow.stdSeq,7,' ') ||'     '|| lpad(vrow.stdName,9,' ') ||'      '|| rpad(vrow.stdSsn,10,' ') ||'        '|| rpad(vrow.currName,72,' ') ||'     '|| rpad(vrow.currDate,19,' ') ||'     '|| rpad(vrow.subseq,7,' ')||'     '|| rpad(vrow.subName,39,' ') ||'     '|| rpad(vrow.subDate,19,' ') || '     ' || rpad(vrow.className,8,' ')|| '     ' || lpad(vrow.tName,10,' ') || '     ' || lpad(vrow.writingScore,7,' ') ||'      '||lpad(vrow.performScore,7,' ') ||'      '||lpad(vrow.attendScore,7,' ')); 
        end loop;
        
    close vcursor;
end;


-- A006-03. 교육생별 시험관리 및 성적조회 - 교육생 이름으로 조회
create or replace procedure procScoreReport_StdName(
    pStdName in vwScoreReport.stdName%type
)
is 
    cursor vcursor is select * from vwScoreReport where pStdName = vwScoreReport.stdName order by currSeq, subSeq;
    vrow vwScoreReport%rowtype;
begin
    open vcursor;
    
    dbms_output.put_line('교육생번호     이름       주민번호 뒷자리     과정명                                                                    과정기간                과목번호      과목명                                     과목기간                강의실           교사명      필기점수     실기점수     출석점수');
    dbms_output.put_line('---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');  
        
        loop
            fetch vcursor into vrow;
            exit when vcursor%notfound;
            dbms_output.put_line(lpad(vrow.stdSeq,7,' ') ||'     '|| lpad(vrow.stdName,9,' ') ||'      '|| rpad(vrow.stdSsn,10,' ') ||'        '|| rpad(vrow.currName,72,' ') ||'     '|| rpad(vrow.currDate,19,' ') ||'     '|| rpad(vrow.subseq,7,' ')||'     '|| rpad(vrow.subName,39,' ') ||'     '|| rpad(vrow.subDate,19,' ') || '     ' || rpad(vrow.className,8,' ')|| '     ' || lpad(vrow.tName,10,' ') || '     ' || lpad(vrow.writingScore,7,' ') ||'      '||lpad(vrow.performScore,7,' ') ||'      '||lpad(vrow.attendScore,7,' ')); 
        end loop;
        
    close vcursor;
end;

-- A006-03. 교육생별 시험관리 및 성적조회
exec procScoreReport_StdSeq('S200'); -- 교육생 번호(문자)
exec procScoreReport_StdName('강서연'); -- 교육생 이름(문자)
--------------------------------------------------------------------------------
/* 
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

---------------------------------------------------------------------------------------------------------------------
--특정 출결 뷰테이블

select * from vwSelectAttend;

create or replace view vwSelectAttend
as
select
    c.currSeq as currSeq,
    c.currName as currName,
    c.currPeriod as currPeriod,
    s.stdSeq as stdSeq,
    s.stdName as stdName,
    t.teacherSeq as teacherSeq,
    t.teacherName as teacherName,
    sa.studentAttendStatus as studentAttendStatus,
    sa.attendDate as attendDate
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
                                        on scr.classregseq = sa.classregseq;
                                        
---------------------------------------------------------------------------------------------------------------------
--특정 출결 프로시저 (완료)

create or replace procedure procSelectAttend(
    pcurrSeq varchar2,
    pstdSeq varchar2,
    pteacherSeq varchar2,
    pcursor out sys_refcursor
)
is
begin
    open pcursor for
        select 
            *
        from vwSelectAttend
            where currSeq = pcurrSeq and stdSeq = pstdSeq and  teacherSeq =  pteacherSeq;
end;

---------------------------------------------------------------------------------------------------------------------
--특정 출결 실행 (완료)

declare
    vcursor sys_refcursor;
    vrow vwSelectAttend%rowtype;
begin
    
    procSelectAttend(8, 'S1', 'T8',vcursor); --특정 과정번호, 학생번호, 교사번호로 검색
    dbms_output.put_line('과정번호                            과정명                                과정기간   학생 번호    학생명   교사번호   교사명    출결현황     출결일자');
    dbms_output.put_line('----------------------------------------------------------------------------------------------------------------------------------------------');
   
    loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        
        dbms_output.put_line(lpad(vrow.currSeq,3,' ') ||'  '|| lpad(vrow.currName,70,' ') ||'  '|| lpad(vrow.currPeriod,6,' ') ||'     '|| lpad(vrow.stdSeq,5,' ') ||'     '|| lpad(vrow.stdName,9,' ') ||'  '|| lpad(vrow.teacherSeq,5,' ') ||'   '|| lpad(vrow.teacherName,9,' ') ||'   '|| lpad(vrow.studentAttendStatus,6,' ') ||'      '|| rpad(vrow.attendDate,8,' '));
     
    end loop;

end;                                        
--------------------------------------------------------------------------------
-- A008. 시설관리 - 전체
create or replace view vwEquip
as
select
    e.equipSeq as equipSeq,
    e.classNum as classNum,
    e.equipName as equipName,
    e.equipStatus as equipStatus,
    e.equipBuyDate as equipBuyDate,
    cl.classCount as classCount
from tblEquip e
    inner join tblClass cl
    on e.classNum = cl.classNum;
    

-- A008-01. 강의실 + 제품명으로 시설 개수 파악
create or replace view vwEquipsearch
as
select
    classNum as classNum,
    equipName as equipName,
    equipStatus as equipStatus,
    count(*) as equipCount
from vwEquip
    group by classNum, equipName, equipStatus
        order by classNum, equipName; 
--------------------------------------------------------------------------------
-- A008. 강의실 + 제품명별 시설 개수 조회
create or replace procedure procEquipSearch(
    pclassNum in vwEquipsearch.classNum%type,
    pEquipName in vwEquipsearch.equipName%type
)
is 
    cursor vcursor is select * from vwEquipsearch where pequipName = vwEquipsearch.equipName and pclassNum = vwEquipsearch.classNum;
    vrow vwEquipsearch%rowtype;
begin
    open vcursor;
    
    if pclassNum > 0 and pclassNum < 7 and pEquipName in ('컴퓨터', '의자', '책상', '에어컨', '빔') then
        
        dbms_output.put_line('강의실       제품명         상태           개수(개)');
        dbms_output.put_line('---------------------------------------------------------');  
            
            loop
                fetch vcursor into vrow;
                exit when vcursor%notfound;
                dbms_output.put_line(rpad(vrow.classNum||'강의실',8,' ')|| '     ' || rpad(vrow.equipName,9,' ') ||'      '|| rpad(vrow.equipStatus,8,' ') ||'        '|| vrow.equipCount); 
            
            end loop;
    else
        dbms_output.put_line('다시입력하세요.');
    end if;

    close vcursor;
end;


-- A008. 강의실 + 제품명별 시설 개수 조회
exec procEquipSearch(1, '컴퓨터'); -- 강의실번호(숫자), 제품명(문자/컴퓨터, 의자, 책상, 빔, 에어컨)

--------------------------------------------------------------------------------
-- A008. 시설 추가
-- 컴퓨터, 의자, 책상의 경우 강의실 인원(정원)보다 사용가능한 시설의 개수가 많을 수 없다.
-- 많을 경우 가장 오래된 사용가능 시설을 사용불가로 변경 후 새로운 시설 추가
-- 빔, 에어컨의 경우 강의실에 1대만 사용가능하다. 새로운 시설 추가할 경우 사용하던 것을 사용불가로 변경 후 새로운 시설 추가

create or replace procedure procAddEquip(
    pClassNum number,
    pEquipName varchar2
)
is
    pEquipCount number; -- 시설의 개수
    pClassCount number; -- 강의실 인원(정원)
begin

    select count(*) into pEquipCount from tblEquip where classNum = pClassNum and equipName = pEquipName and equipStatus = '사용가능' group by classNum, equipName, equipStatus ;
    select classCount into pClassCount from tblClass where classNum = pClassNum;
    
    if pclassNum > 0 and pclassNum < 7  and pEquipName in ('컴퓨터', '의자', '책상') then
        if  pEquipCount >= pClassCount then
            update tblEquip set equipStatus = '사용불가' where equipseq = (select equipSeq from (select tblEquip.*, rownum from tblEquip where classnum = pClassNum and equipName = pEquipName and equipStatus = '사용가능' order by equipbuydate) where rownum= 1);
            insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,pClassNum,pEquipName,'사용가능',to_char(sysdate, 'yyyy-mm-dd'));
        else
            insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,pClassNum,pEquipName,'사용가능',to_char(sysdate, 'yyyy-mm-dd'));
        end if;
        
    elsif pclassNum > 0 and pclassNum < 7  and pEquipName in ('빔', '에어컨') then
         if  pEquipCount >= 1 then
            update vwEquip set equipStatus = '사용불가' where equipseq = (select equipSeq from tblEquip where classnum = pClassNum and equipName = pEquipName and equipStatus = '사용가능');
            insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,pClassNum,pEquipName,'사용가능',to_char(sysdate, 'yyyy-mm-dd'));
        else
            insert into tblEquip (equipSeq,classNum,equipName,equipStatus,equipBuyDate) values (seqEquip.nextval,pClassNum,pEquipName,'사용가능',to_char(sysdate, 'yyyy-mm-dd'));
        end if;
    end if;
exception
    when no_data_found then dbms_output.put_line('다시입력하세요.');
end;


-- A008. 시설 추가
exec procAddEquip(3,'빔'); -- 강의실번호(숫자), 제품명(문자/컴퓨터, 의자, 책상, 빔, 에어컨)

--------------------------------------------------------------------------------
-- A008. 시설 상태 변경
-- 기존에 '사용가능'인 경우 '수리중', '사용불가'로 변경가능하다.
-- 기존에 '사용불가'인 경우 '수리중'으로 변경가능하다.
-- 기준에 '수리중'인 경우, '사용불가', '사용가능'으로 변경 가능하다.
--                    단, '사용가능'으로 변경 시, '컴퓨터', '의자', '책상'의 경우 강의실의 인원과 현재 사용가능 개수를 고려해야 하며, '빔', '에어컨'의 경우 각 강의실에 1대까지만 사용가능함을 고려해야한다.

create or replace procedure procUpdateEquip(
    pEquipSeq number,
    pEquipStatus varchar2
)
is
    pEquipName varchar2(20);
    pClassNum number;
    pEquipCount number;
    pClassCount number;
    
begin

    select equipName, classNum into pEquipName, pClassNum from tblEquip where equipSeq =pequipSeq;
    select count(*) into pEquipCount from tblEquip where equipName = pEquipName and classNum = pClassNum and equipStatus = '사용가능' group by classNum, equipName, equipStatus;
    select classCount into pClassCount from tblClass where classNum = pClassNum;
    
    if pEquipStatus = '사용가능' then
    
        if pEquipName in ( '컴퓨터', '의자', '책상') then
            if pEquipCount >= pClassCount then
                dbms_output.put_line('이미 강의실 정원만큼 이용가능한 시설이 구비되어 있습니다. 다시 입력하세요.');
            else
                update tblEquip set equipStatus = '사용가능' where equipSeq = pEquipSeq and equipStatus = '수리중';
            end if;
        
        elsif pEquipName in ('빔', '에어컨') then
            if pEquipCount >= 1 then
                dbms_output.put_line('이미 강의실에 이용가능한 시설이 구비되어 있습니다. 다시입력하세요');
            else
                update tblEquip set equipStatus = '사용가능' where equipSeq = pEquipSeq and equipStatus = '수리중';
            end if;
        end if;
    
    elsif pEquipStatus = '사용불가' then
        update tblEquip set equipStatus = '사용불가' where equipSeq = pEquipSeq and equipStatus in ('사용가능', '수리중');
        
    elsif pEquipStatus = '수리중' then
        update tblEquip set equipStatus = '수리중' where equipSeq = pEquipSeq and equipStatus in ('사용가능', '사용불가');
    end if;

end;


-- A008. 시설 상태 변경
exec procUpdateEquip(272,'사용불가'); -- 제품번호(숫자), 변경후상태(문자/사용가능, 사용불가, 수리중)

--------------------------------------------------------------------------------
-- A008. 시설 삭제
-- 시설의 상태가 '사용불가'일 때만 삭제 가능하다.

create or replace procedure procDeleteEquip(
    pEquipSeq number
    
)
is
    pEquipStatus varchar2(20);
begin
    select equipStatus into pEquipStatus from tblEquip where EquipSeq = pEquipSeq;
    
    if pEquipStatus = '사용불가' then
        delete from tblEquip where EquipSeq = pEquipSeq;   
    end if;
    
exception
    when no_data_found then dbms_output.put_line('다시입력하세요.');
end;


-- A008. 시설 삭제
exec procDeleteEquip(569); -- 제품번호(숫자)
