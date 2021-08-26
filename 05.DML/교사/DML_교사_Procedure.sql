/*
-����
-�䱸���� T001 - ���� ������ ��ȸ 
*/

--=====================================================================================
-- T001. ���ǽ����� ��ȸ
--=====================================================================================
create or replace procedure procSchedule(

    pteacherSeq in varchar2,
    pcursor out sys_refcursor
)
is
begin
    open pcursor for select * from vwSchedule where teacherSeq = pteacherSeq;
end;





-- ����
--=====================================================================================
-- T001. ���ǽ����� ��ȸ -- ��ü ������ ��ȸ
--=====================================================================================
declare
    cursor vcursor is select * from vwSchedule;
begin  
    dbms_output.put_line('��米��     ������ȣ      ������                                                                    �����Ⱓ                ���ǻ���     ���ǽ�       �����                                      ����Ⱓ                �����                                     ����ο�');
    dbms_output.put_line('-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');  
    for vrow in vcursor loop
        dbms_output.put_line(rpad(vrow.teacherseq,7,' ')||'      '||rpad(vrow.currseq,7,' ')||'     '|| rpad(vrow.currName,72,' ') ||'     '|| rpad(vrow.currDate,19,' ') ||'     '|| rpad(vrow.currStatus,8,' ') ||'     '|| rpad(vrow.class,8,' ') ||'     '|| rpad(vrow.subName,39,' ') || '     ' || rpad(vrow.subDate,19,' ') || '     ' ||rpad(vrow.bookName,40,' ') || '     ' || vrow.quota);
    end loop;
end;


--=====================================================================================
-- T001. ���ǽ����� ��ȸ - ���纰 ������ ��ȸ
--=====================================================================================
declare
    vcursor sys_refcursor;
    vrow vwSchedule%rowtype;
begin
    procSchedule('T5', vcursor); ------- �˻��ϰ����ϴ� �����ȣ(����) �Է�
    
    dbms_output.put_line('��米��     ������ȣ      ������                                                                    �����Ⱓ                ���ǻ���     ���ǽ�       �����                                      ����Ⱓ                �����                                     ����ο�');
    dbms_output.put_line('-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');  
    loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        dbms_output.put_line(rpad(vrow.teacherseq,7,' ')||'      '||rpad(vrow.currseq,7,' ')||'     '|| rpad(vrow.currName,72,' ') ||'     '|| rpad(vrow.currDate,19,' ') ||'     '|| rpad(vrow.currStatus,8,' ') ||'     '|| rpad(vrow.class,8,' ') ||'     '|| rpad(vrow.subName,39,' ') || '     ' || rpad(vrow.subDate,19,' ') || '     ' ||rpad(vrow.bookName,40,' ') || '     ' || vrow.pNum);
    end loop;
end;
 

                        
--=====================================================================================                         
--T001-1. Ư�� ���� ������ - ��, ���ν���, ����
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
 --T001-1. Ư�� ���� ������
--=====================================================================================
create or replace procedure procSubSchedule(

    psubSeq in number,
    pcursor out sys_refcursor
)
is
begin
    open pcursor for select * from vwSubSchedule where subSeq = psubSeq;
end;
       
          
   
-- ����
--=====================================================================================
--T001-1. Ư�� ���� ������
--=====================================================================================
declare
    vcursor sys_refcursor;
    vrow vwSubSchedule%rowtype;
begin
    procSubSchedule(1, vcursor); ------- �˻��ϰ����ϴ� ���� ��ȣ �Է�
    
    dbms_output.put_line('������ȣ     �����ȣ     �����                                     �̸�          ��ȭ��ȣ          �����       ����Ǵ��ߵ�Ż��     ');
    dbms_output.put_line('---------------------------------------------------------------------------------------------------------------------------------------------');  
    loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        dbms_output.put_line(rpad(vrow.openCurrSeq,7,' ')||'      '||rpad(vrow.subSeq,7,' ')||'     '|| rpad(vrow.subName,39,' ') ||'     '|| rpad(vrow.stdName,9,' ') ||'     '|| rpad(vrow.stdTel,13,' ') ||'     '|| rpad(vrow.stdRegDate,8,' ') ||'     '|| rpad(vrow.PorF,40,' '));
    end loop;
end;

                       






/*
- ����
- �䱸����T002 - [���� ���� �����]
*/
--=========================================================
-- Ư�� �����ȣ�� ���ý� ���� ��� ���ν���
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


--����
--=====================================================================================
--Ư�� ���� ��ȣ�� ���ý� ���� ��� 
--=====================================================================================
declare
    vcursor sys_refcursor;
    vrow vwDistribution%rowtype;
    
begin  
    procDistribution( 1 , vcursor);        -- ���簡 ���ϴ� Ư�� ���� ��ȣ �Է� 
    
        dbms_output.put_line(' �����ȣ      �����                      ������      �ʱ����      �Ǳ����          ���賯¥                  ���蹮��    ');
        dbms_output.put_line('---------------------------------------------------------------------------------------------------------');
           
    
    loop
        fetch vcursor into vrow;
        dbms_output.put_line(  lpad(vrow.subNum,7,' ')   ||'   '|| lpad(vrow.subname,25 ,'       ')   ||  '       '  ||  lpad(vrow.attendPoint,7,' ') ||'    '|| lpad(vrow.writingpoint,7,' ') ||'     '|| lpad(vrow.performpoint,7,' ') || '          ' || lpad(vrow.testdate,12,' ') || '                 ' ||  lpad(vrow.testregyn,5,' '));

        exit when vcursor%notfound;
           
    end loop;
    
end;



 -- ���ν���
--=============================================================================================
--Ư�� ���� ���� �Է�, �����ϴ� ���ν��� -> ���� �� ��� ������ 20���� �Ѱų�,  �� ���� 100�� �̻��̸� �� ��
--=============================================================================================
create or replace procedure procInsertDistribution(
          
           ptestpointSeq number,          --������ȣ
           pteacherSeq  varchar2 ,        --�����ȣ
           popenSubjectSeq  number ,     --���������ȣ
           pwritingPoint number,           --�ʱ����
           pperformPoint number,         --�Ǳ����
           pattendPoint number           --�⼮����
) 
is          
begin
            
       if pattendPoint <= 20 and add_score(pwritingPoint,pperformPoint,pattendPoint) =  100 then
     
        insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
        
         values(seqtestPoint.nextval, pteacherSeq,popenSubjectSeq,pwritingPoint,pperformPoint,pattendPoint);
      
         else
            
        dbms_output.put_line('��� ������ 20�� �̻��� �� �����ϴ�.');
            
            
        end if;

        
end procInsertDistribution;                
 
            
select * from tblTestPoint;




-- �Է�
--=============================================================================================
  --������ȣ, �����ȣ, ���������ȣ, �ʱ�, �Ǳ�, �⼮ ����
--=============================================================================================
      exec procUpdDistribution('T1',1,50,30,20);




--���
--=============================================================================================
declare
    vcursor sys_refcursor;
    vrow vwDistribution%rowtype;
    
begin  
    procInsertDistribution( 'T1' , vcursor);        -- ���� ��ȣ �Է�
    
        dbms_output.put_line(' �����ȣ      �����                      ������      �ʱ����      �Ǳ����          ���賯¥                  ���蹮��    ');
        dbms_output.put_line('---------------------------------------------------------------------------------------------------------');
           
    
    loop
        fetch vcursor into vrow;
       dbms_output.put_line( lpad(vrow.subNum,7,' ')   ||'   '|| lpad(vrow.subname,25 ,'       ')   ||  '       '  ||  lpad(vrow.attendPoint,7,' ') ||'    '|| lpad(vrow.writingpoint,7,' ') ||'     '|| lpad(vrow.performpoint,7,' ') || '          ' || lpad(vrow.testdate,12,' '));

        exit when vcursor%notfound;
           
    end loop;
end;
 


--=============================================================================================
-- ������ �����ϴ� ���ν���  -> ���� �� ��� ������ 20���� �Ѱų�,  �� ���� 100�� �̻��̸� �� �� 
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
    dbms_output.put_line('�Է��� ������ ��Ȯ�� ���ּ���');
    end if;
exception 
    when others then dbms_output.put_line('�ٽ��Է��ʿ�');
end;



-- ���
--=============================================================================================
begin
        -- ������ȣ, ���������ȣ,  �Է��� �ʱ� ���� , �Ǳ� ����, �⼮���� 
         
    exec procUpdDistribution('T1',1,50,30,20);
end;




-���ν���
--=====================================================================================
--Ư�� ���� ������ ��� ����, ���賯¥ �����ϴ� ���ν���
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
        dbms_output.put_line( '���賯¥�� Ȯ�����ּ���.' );
    end if;
    
end;



--����
--=============================================================================================
exec procUpdateTest(10, '2021-06-15');





/*
-����
-�䱸����T003 - [������ ���õ� �������� ���� ���] 
*/
--==============================================================================
--  �������� ��ü ���񺰷� ������ ��ȸ�ϴ� ���ν���: procScoreInoutPut
--==============================================================================
create or replace procedure procScoreInoutPut(
            pcursor out sys_refcursor,
            psubjectNum number
)
is
begin     open pcursor for  
                                                    --���������ȣ 
            select * from vwScoreInoutPut where subjectNum = psubjectNum ;
end ; 



--����
--=============================================================================================
declare
        vcursor sys_refcursor;
        vrow vwScoreInoutPut%rowtype;
begin  
    procScoreInoutPut(1 , vcursor);        --- ���ϴ� ���������ȣ�Է�
    
    loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
       -- dbms_output.put_line('���������ȣ   ��������ȣ      �̸�       ��ȭ��ȣ         ����о�    ����(����:����)     �����');
        --dbms_output.put_line('------------------------------------------------------------------------------------------');
        --dbms_output.put_line(lpad(vrow.stdJobSeq,10,' ') ||'      '|| lpad(vrow.stdSeq,6,' ') ||'     '|| lpad(vrow.stdName,7,' ') ||'     '|| vrow.stdTel ||'     '|| lpad(vrow.stdField,5,' ') ||'     '|| vrow.stdSalary ||'     '|| lpad(vrow.stdDate,15,' '));
         -- dbms_output.put_line(vrow.subjectNum);
         
    end loop;
end;




/*
-����
-�䱸����T003-01 - [Ư�� ���� ���� �����]
*/

--=====================================================================================
-- Ư�� �����ȣ�� ���ý� ���� ���
--=====================================================================================

create or replace procedure procScoreInoutPut(

        psubjectSeq number,             -- ������ �����ȣ�Է�
       
        pcursor out sys_refcursor    --������ ����+�������� ��ȯ
)
is 
begin
        --����������+�������� ��ȯ
        open pcursor for
        select * from vwScoreInoutPut where subjectseq = psubjectSeq;
end procScoreInoutPut;



--============================================================================
-- Ư�� �����ȣ�� �������� �������� , �������� ���� ���
--============================================================================

declare
        vrow vwScoreInoutPut%rowtype;
        vcursor sys_refcursor;
begin
        procScoreInoutPut(1, vcursor);  -- ���ϴ� �����ȣ �ֱ�
          
        dbms_output.put_line('�����ȣ     �����                                   ����Ⱓ           ��������ȣ          ��������           ��������ȭ��ȣ     �������     �ʱ�����     �Ǳ�����     �⼮����     �հ�');
        dbms_output.put_line('-------------------------------------------------------------------------------------------------------------------------------------------------------');
        dbms_output.put_line(' ');
        
        loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        
        dbms_output.put_line(rpad(vrow.subjectseq,9,' ') || '  ' || rpad(vrow.subjectName,25,' ') || '  ' || lpad(vrow.subjectDate,30, ' ') || '       ' ||  lpad(vrow.studentSeq,7,' ') || '    ' || lpad(vrow.studentName,7,' ') || '      ' || lpad(vrow.studentTel,15,' ') || '    ' || lpad(vrow.status,7,' ') || '      ' || lpad(vrow.WritingScore,7, ' ') || '    ' ||  lpad(vrow.PerformeanceScore,7,' ') || '    ' || lpad(vrow.AttendScore,7,' ') || '          ' || vrow.totalScore);
                       
        end loop;
end;




--==================================================================================================
-- Ư�� ������ > Ư�� ������(��������ȣ��) ���� >  ���� �������� �����ϴ� ���ν��� (��,��,�⼮) 
--==================================================================================================
create or replace procedure procScoreInoutPut(

        psubjectSeq number,             -- ������ �����ȣ�Է�
        
        pstudentSeq varchar2,            -- ������ ��������ȣ �Է� = ������ȣ�� ����(=classregseq)
        pcursor out sys_refcursor       --������ ����+�������� ��ȯ
)

is 
begin

        --����������+�������� ��ȯ
        
        open pcursor for
        select * from vwScoreInoutPut where subjectseq = psubjectSeq and  studentSeq = pstudentSeq;

end procScoreInoutPut;



--==================================================================================================
--Ư�� ������ > Ư�� ������(��������ȣ��) ���� >  ���� �������� ���
--==================================================================================================

declare
        vrow vwScoreInoutPut%rowtype;
        vcursor sys_refcursor;
begin
        procScoreInoutPut(1, 'SC1', vcursor);  -- ���ϴ� �����ȣ, ������ ��ȣ �ֱ�
          
        dbms_output.put_line('�����ȣ     �����                                   ����Ⱓ           ��������ȣ          ��������           ��������ȭ��ȣ     �������     �ʱ�����     �Ǳ�����     �⼮����     �հ�');
        dbms_output.put_line('--------------------------------------------------------------------------------------------------------------------------------------');
        dbms_output.put_line(' ');
        
        
        loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        
        dbms_output.put_line(rpad(vrow.subjectseq,9,' ') || '  ' || rpad(vrow.subjectName,25,' ') || '  ' || lpad(vrow.subjectDate,30, ' ') || '    ' ||  lpad(vrow.studentSeq,7,' ') || '         ' || lpad(vrow.studentName,7,' ') || '            ' || lpad(vrow.studentTel,15,' ') || '    ' || lpad(vrow.status,7,' ') || '      ' || lpad(vrow.WritingScore,7, ' ') || '    ' ||  lpad(vrow.PerformeanceScore,7,' ') || '    ' || lpad(vrow.AttendScore,7,' ') || '          ' || vrow.totalScore);
      
        end loop;
end;




--======================================================================================================
-- Ư�� �����ȣ�� ���ý� ���� ��� ���ν���
--======================================================================================================

create or replace procedure procScoreInoutPut(

        psubjectSeq number,             -- ������ �����ȣ�Է�
       
        pcursor out sys_refcursor    --������ ����+�������� ��ȯ
)
is 
begin
        --����������+�������� ��ȯ
        open pcursor for
        select * from vwScoreInoutPut where subjectseq = psubjectSeq;
        end procScoreInoutPut;
	


--============================================================================
-- Ư�� �����ȣ�� �������� �������� , �������� ���� ���
--============================================================================

declare
        vrow vwScoreInoutPut%rowtype;
        vcursor sys_refcursor;
begin
        procScoreInoutPut(1, vcursor);  -- ���ϴ� �����ȣ �ֱ�
          
        dbms_output.put_line('�����ȣ     �����                                   ����Ⱓ           ��������ȣ          ��������           ��������ȭ��ȣ     �������     �ʱ�����     �Ǳ�����     �⼮����     �հ�');
        dbms_output.put_line('-------------------------------------------------------------------------------------------------------------------------------------------------------');
        dbms_output.put_line(' ');
        
        loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        
        dbms_output.put_line(rpad(vrow.subjectseq,9,' ') || '  ' || rpad(vrow.subjectName,25,' ') || '  ' || lpad(vrow.subjectDate,30, ' ') || '       ' ||  lpad(vrow.studentSeq,7,' ') || '    ' || lpad(vrow.studentName,7,' ') || '      ' || lpad(vrow.studentTel,15,' ') || '    ' || lpad(vrow.status,7,' ') || '      ' || lpad(vrow.WritingScore,7, ' ') || '    ' ||  lpad(vrow.PerformeanceScore,7,' ') || '    ' || lpad(vrow.AttendScore,7,' ') || '          ' || vrow.totalScore);
                       
        end loop;
end;



--==================================================================================
-- Ư�� ������ > Ư�� ������(��������ȣ��) ���� >  ���� �������� ���� (��,��,�⼮) ���ν���
--==================================================================================

create or replace procedure procScoreInoutPut(

        psubjectSeq number,             -- ������ �����ȣ�Է�
        
        --pclassRegSeq varchar2,
        pstudentSeq varchar2,            -- ������ ��������ȣ �Է� = ������ȣ�� ����(=classregseq)
        pcursor out sys_refcursor       --������ ����+�������� ��ȯ
)

is 
begin

        --����������+�������� ��ȯ
        
        open pcursor for
        select * from vwScoreInoutPut where subjectseq = psubjectSeq and  studentSeq = pstudentSeq;

end procScoreInoutPut;



--����
--=============================================================================================
declare
        vrow vwScoreInoutPut%rowtype;
        vcursor sys_refcursor;
begin
        procScoreInoutPut(1, 'SC1', vcursor);  -- ���ϴ� �����ȣ, ������ ��ȣ �ֱ�
          
        dbms_output.put_line('�����ȣ     �����                                   ����Ⱓ           ��������ȣ          ��������           ��������ȭ��ȣ     �������     �ʱ�����     �Ǳ�����     �⼮����     �հ�');
        dbms_output.put_line('--------------------------------------------------------------------------------------------------------------------------------------');
        dbms_output.put_line(' ');
        
        
        loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        
        dbms_output.put_line(rpad(vrow.subjectseq,9,' ') || '  ' || rpad(vrow.subjectName,25,' ') || '  ' || lpad(vrow.subjectDate,30, ' ') || '    ' ||  lpad(vrow.studentSeq,7,' ') || '         ' || lpad(vrow.studentName,7,' ') || '            ' || lpad(vrow.studentTel,15,' ') || '    ' || lpad(vrow.status,7,' ') || '      ' || lpad(vrow.WritingScore,7, ' ') || '    ' ||  lpad(vrow.PerformeanceScore,7,' ') || '    ' || lpad(vrow.AttendScore,7,' ') || '          ' || vrow.totalScore);
      
        end loop;
end;




/*
-����
-�䱸����T004  - [�����ȸ]
*/

--=====================================================================================                        
-- T004. �����ȸ
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
-- T004. �����ȸ - ������
--=============================================================================================
create or replace procedure procCurrAttend(

    popenCurrSeq in number,
    pcursor out sys_refcursor
)
is
begin
    open pcursor for select * from vwAttend where openCurrSeq = popenCurrSeq;
end;




-- ����
--=============================================================================================
-- T004. �����ȸ - ������
--=============================================================================================
declare
    vcursor sys_refcursor;
    vrow vwAttend%rowtype;
begin
    procCurrAttend(1, vcursor); ------- �˻��ϰ����ϴ� ���� ��ȣ �Է�
    
    dbms_output.put_line('������ȣ     ������                                                                    �����Ⱓ                ��������ȣ     �̸�          ��ᳯ¥       ������     ');
    dbms_output.put_line('---------------------------------------------------------------------------------------------------------------------------------------------------------------------');  
    loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        dbms_output.put_line(rpad(vrow.openCurrSeq,7,' ')||'      '||rpad(vrow.currName,72,' ')||'     '|| rpad(vrow.currDate,19,' ') ||'     '|| rpad(vrow.stdSeq,7,' ') ||'     '|| rpad(vrow.stdName,9,' ') ||'     '|| rpad(vrow.attendDate,8,' ') ||'     '|| rpad(vrow.stdAttendStatus,40,' '));
    end loop;
end;



-- Procedure
--=============================================================================================
-- T004. �����ȸ - ��������
--=============================================================================================
create or replace procedure procStdAttend(

    pstdSeq in varchar2,
    pcursor out sys_refcursor
)
is
begin
    open pcursor for select * from vwAttend where stdSeq = pstdSeq;
end;



-- ����
--=============================================================================================
-- T004. �����ȸ - ��������
--=============================================================================================
declare
    vcursor sys_refcursor;
    vrow vwAttend%rowtype;
begin
    procStdAttend('S63', vcursor); ------- �˻��ϰ����ϴ� ������ ��ȣ �Է�
    
    dbms_output.put_line('������ȣ     ������                                                                    �����Ⱓ                ��������ȣ     �̸�          ��ᳯ¥       ������     ');
    dbms_output.put_line('---------------------------------------------------------------------------------------------------------------------------------------------------------------------');  
    loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        dbms_output.put_line(rpad(vrow.openCurrSeq,7,' ')||'      '||rpad(vrow.currName,72,' ')||'     '|| rpad(vrow.currDate,19,' ') ||'     '|| rpad(vrow.stdSeq,7,' ') ||'     '|| rpad(vrow.stdName,9,' ') ||'     '|| rpad(vrow.attendDate,8,' ') ||'     '|| rpad(vrow.stdAttendStatus,40,' '));
    end loop;
end;               
 