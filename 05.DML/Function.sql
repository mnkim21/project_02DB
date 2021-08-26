--=====================================================================================
-- 함수
--=====================================================================================
-- 기간(시작(년/월/일) ~ 종료(년/월/일))함수
create or replace function fDate (
    fStartDate date,
    EndDate date
) return varchar2
is
begin
    return fStartDate  || ' ~ ' || EndDate;
end;

-- 과목기간
create or replace function fsubjectPeriod(
    subjectStartDate date,
    subjectEndDate date
)return varchar2
is
begin
   
    return subjectStartDate ||'~'||subjectEndDate;    

end fsubjectPeriod;

-----------------------------------------------------------------------------------
-- 과정진행상태 함수
create or replace function fnCurrStatus (
    fStartDate date,
    fEndDate date
) return varchar2
is
begin
    return case
        when sysdate < fStartDate then '강의예정'
        when sysdate >= fStartDate and sysdate <= fEndDate then '강의중'
        else '강의종료'
    end;
end;

--과목강의진행여부
create or replace function Courseing(
    subjectStartDate date,
    subjectEndDate date
)return varchar2
is
begin
    return case
        when sysdate < subjectStartDate then '강의예정'
        when subjectStartDate <= sysdate  and subjectEndDate > sysdate then '강의중'    
    else '강의종료'
    end;
end Courseing;

-----------------------------------------------------------------------------------
-- 수료 및 중도탈락 함수
-- 버전1
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

-- 버전2
create or replace function fPFStauts(
    completeStatusPF varchar2
)
return varchar2
is
begin
    return  case   
        when completeStatusPF = 'P' then '수료'
        when completeStatusPF = 'F' then '중도탈락'
        else '수강중'
     end;   
end;

-----------------------------------------------------------------------------------
-- 배점 총합구하는 함수
create or replace function add_score(num1 in number, num2 in number, num3 in number) return number
is
begin
    return num1+num2+num3;
end;


----------------------------------------------------------------------------------
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

----------------------------------------------------------------------------------
create or replace function StringAdd(

    currPeriod number,
    classNum number

)return varchar2
is
begin
    return currPeriod||'일' ||'    '|| classNum ||'강의실';
end;