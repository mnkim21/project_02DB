--=====================================================================================
-- �Լ�
--=====================================================================================
-- �Ⱓ(����(��/��/��) ~ ����(��/��/��))�Լ�
create or replace function fDate (
    fStartDate date,
    EndDate date
) return varchar2
is
begin
    return fStartDate  || ' ~ ' || EndDate;
end;

-- ����Ⱓ
create or replace function fsubjectPeriod(
    subjectStartDate date,
    subjectEndDate date
)return varchar2
is
begin
   
    return subjectStartDate ||'~'||subjectEndDate;    

end fsubjectPeriod;

-----------------------------------------------------------------------------------
-- ����������� �Լ�
create or replace function fnCurrStatus (
    fStartDate date,
    fEndDate date
) return varchar2
is
begin
    return case
        when sysdate < fStartDate then '���ǿ���'
        when sysdate >= fStartDate and sysdate <= fEndDate then '������'
        else '��������'
    end;
end;

--���������࿩��
create or replace function Courseing(
    subjectStartDate date,
    subjectEndDate date
)return varchar2
is
begin
    return case
        when sysdate < subjectStartDate then '���ǿ���'
        when subjectStartDate <= sysdate  and subjectEndDate > sysdate then '������'    
    else '��������'
    end;
end Courseing;

-----------------------------------------------------------------------------------
-- ���� �� �ߵ�Ż�� �Լ�
-- ����1
create or replace function fnCompleteStatus(
    fCompleteStatusPF varchar2
)return varchar2
is
begin
    return case
        when fCompleteStatusPF ='P' then '����'
        when fCompleteStatusPF ='F' then '�ߵ�Ż��'
        when fCompleteStatusPF is null then '������'
    end;
end;

-- ����2
create or replace function fPFStauts(
    completeStatusPF varchar2
)
return varchar2
is
begin
    return  case   
        when completeStatusPF = 'P' then '����'
        when completeStatusPF = 'F' then '�ߵ�Ż��'
        else '������'
     end;   
end;

-----------------------------------------------------------------------------------
-- ���� ���ձ��ϴ� �Լ�
create or replace function add_score(num1 in number, num2 in number, num3 in number) return number
is
begin
    return num1+num2+num3;
end;


----------------------------------------------------------------------------------
--���»�Ȳ �����ִ� �Լ�
create or replace function fnAttendStatus(
    fintime date,
    fouttime date
)return varchar2
is
begin
    return case
        when to_number(to_char(fintime,'hh24miss')) < to_number(to_char(to_date('01-01-01 09-10-00','yyyy-mm-dd hh24-mi-ss'),'hh24miss')) and
            to_number(to_char(fouttime,'hh24miss')) >= to_number(to_char(to_date('01-01-01 17-50-00','yyyy-mm-dd hh24-mi-ss'),'hh24miss'))then '����'
            
        when to_number(to_char(fintime,'hh24miss')) > to_number(to_char(to_date('01-01-01 09-10-00','yyyy-mm-dd hh24-mi-ss'),'hh24miss')) and
            to_number(to_char(fintime,'hh24miss')) < to_number(to_char(to_date('01-01-01 09-50-00','yyyy-mm-dd hh24-mi-ss'),'hh24miss')) and
                to_number(to_char(fouttime,'hh24miss')) >= to_number(to_char(to_date('01-01-01 17-50-00','yyyy-mm-dd hh24-mi-ss'),'hh24miss'))then '����'
        
        else '�Ἦ'
    end;
end;

----------------------------------------------------------------------------------
create or replace function StringAdd(

    currPeriod number,
    classNum number

)return varchar2
is
begin
    return currPeriod||'��' ||'    '|| classNum ||'���ǽ�';
end;