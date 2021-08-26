/*

--16. 배점 테이블 생성
create table tblTestPoint(
    testPointSeq number primary key, -- 배점번호
    teacherSeq number not null references tblTeacher(teacherSeq),--교사번호
    openSubjectSeq number not null references tblOpenSubject(openSubjectSeq), --개설과목번호
    writingPoint number, -- 필기배점
    performPoint number, -- 실기배점
    attendPoint number not null --출결배점
);

--16. 배점 시퀀스 생성
create sequence seqTestPoint;

*/

--T1 배점번호,교사번호,개설과목번호,필기배점,실기배점,출결배점
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T1',1,40,40,20); -- 공통과목1

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T1',2,40,40,20); -- 공통과목2
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T1',3,40,40,20); -- 공통과목3
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T1',4,40,40,20); -- 공통과목4
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T1',5,40,40,20); -- 공통과목5
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T1',6,40,40,20); -- 공통과목6        
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T1',7,40,40,20); -- 공통과목7      

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T1',8,40,40,20); -- 공통과목8

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T1',9,40,40,20); -- 공통과목9   
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T1',10,40,40,20); -- 특별과목10    

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T1',11,40,40,20); -- 특별과목11  
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T1',14,40,40,20); -- 특별과목14
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T1',32,40,40,20); -- 특별과목32  
       
--T2 배점번호,교사번호,개설과목번호,필기배점,실기배점,출결배점       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T2',1,40,40,20); -- 공통과목1

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T2',2,40,40,20); -- 공통과목2
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T2',3,40,40,20); -- 공통과목3
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T2',4,40,40,20); -- 공통과목4
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T2',5,40,40,20); -- 공통과목5
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T2',6,40,40,20); -- 공통과목6        
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T2',7,40,40,20); -- 공통과목7      

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T2',8,40,40,20); -- 공통과목8

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T2',9,40,40,20); -- 공통과목9   
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T2',19,40,40,20); -- 특별과목19 

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T2',20,40,40,20); -- 특별과목20  
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T2',21,40,40,20); -- 특별과목21
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T2',22,40,40,20); -- 특별과목22         
      
       
--T3 배점번호,교사번호,개설과목번호,필기배점,실기배점,출결배점 
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T3',1,40,40,20); -- 공통과목1

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T3',2,40,40,20); -- 공통과목2
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T3',3,40,40,20); -- 공통과목3
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T3',4,40,40,20); -- 공통과목4
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T3',5,40,40,20); -- 공통과목5
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T3',6,40,40,20); -- 공통과목6        
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T3',7,40,40,20); -- 공통과목7      

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T3',8,40,40,20); -- 공통과목8

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T3',9,40,40,20); -- 공통과목9          
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T3',20,40,40,20); -- 특별과목20

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T3',23,40,40,20); -- 특별과목23
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T3',24,40,40,20); -- 특별과목24
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T3',27,40,40,20); -- 특별과목27
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T3',29,40,40,20); -- 특별과목29       
                
       
--T4 배점번호,교사번호,개설과목번호,필기배점,실기배점,출결배점 
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T4',1,40,40,20); -- 공통과목1

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T4',2,40,40,20); -- 공통과목2
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T4',3,40,40,20); -- 공통과목3
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T4',4,40,40,20); -- 공통과목4
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T4',5,40,40,20); -- 공통과목5
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T4',6,40,40,20); -- 공통과목6        
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T4',7,40,40,20); -- 공통과목7      

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T4',8,40,40,20); -- 공통과목8

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T4',9,40,40,20); -- 공통과목9  
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T4',12,40,40,20); -- 특별과목12

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T4',13,40,40,20); -- 특별과목13
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T4',15,40,40,20); -- 특별과목15
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T4',16,40,40,20); -- 특별과목16
                   


--T5 배점번호,교사번호,개설과목번호,필기배점,실기배점,출결배점 
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T5',1,40,40,20); -- 공통과목1

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T5',2,40,40,20); -- 공통과목2
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T5',3,40,40,20); -- 공통과목3
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T5',4,40,40,20); -- 공통과목4
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T5',5,40,40,20); -- 공통과목5
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T5',6,40,40,20); -- 공통과목6        
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T5',7,40,40,20); -- 공통과목7      

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T5',8,40,40,20); -- 공통과목8

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T5',9,40,40,20); -- 공통과목9  

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T5',30,40,40,20); -- 특별과목30

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T5',31,40,40,20); -- 특별과목31
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T5',33,40,40,20); -- 특별과목33
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T5',34,40,40,20); -- 특별과목34       
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T5',36,40,40,20); -- 특별과목36          
   
       
--T6 배점번호,교사번호,개설과목번호,필기배점,실기배점,출결배점 
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T6',1,40,40,20); -- 공통과목1

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T6',2,40,40,20); -- 공통과목2
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T6',3,40,40,20); -- 공통과목3
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T6',4,40,40,20); -- 공통과목4
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T6',5,40,40,20); -- 공통과목5
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T6',6,40,40,20); -- 공통과목6        
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T6',7,40,40,20); -- 공통과목7      

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T6',8,40,40,20); -- 공통과목8

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T6',9,40,40,20); -- 공통과목9  

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T6',16,40,40,20); -- 특별과목16

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T6',17,40,40,20); -- 특별과목17
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T6',28,40,40,20); -- 특별과목28
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T6',36,40,40,20); -- 특별과목36       
       
       
--T7 배점번호,교사번호,개설과목번호,필기배점,실기배점,출결배점 
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T7',1,40,40,20); -- 공통과목1

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T7',2,40,40,20); -- 공통과목2
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T7',3,40,40,20); -- 공통과목3
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T7',4,40,40,20); -- 공통과목4
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T7',5,40,40,20); -- 공통과목5
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T7',6,40,40,20); -- 공통과목6        
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T7',7,40,40,20); -- 공통과목7      

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T7',8,40,40,20); -- 공통과목8

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T7',9,40,40,20); -- 공통과목9  

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T7',25,40,40,20); -- 특별과목25

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T7',26,40,40,20); -- 특별과목26
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T7',35,40,40,20); -- 특별과목35
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T7',37,40,40,20); -- 특별과목37            
       
       
--T8 배점번호,교사번호,개설과목번호,필기배점,실기배점,출결배점
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T8',1,40,40,20); -- 공통과목1

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T8',2,40,40,20); -- 공통과목2
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T8',3,40,40,20); -- 공통과목3
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T8',4,40,40,20); -- 공통과목4
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T8',5,40,40,20); -- 공통과목5
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T8',6,40,40,20); -- 공통과목6        
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T8',7,40,40,20); -- 공통과목7      

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T8',8,40,40,20); -- 공통과목8

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T8',9,40,40,20); -- 공통과목9  

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T8',38,40,40,20); -- 특별과목38

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T8',39,40,40,20); -- 특별과목39
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T8',40,40,40,20); -- 특별과목40
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T8',41,40,40,20); -- 특별과목41                  
       
       
--T9 배점번호,교사번호,개설과목번호,필기배점,실기배점,출결배점 
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T9',1,40,40,20); -- 공통과목1

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T9',2,40,40,20); -- 공통과목2
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T9',3,40,40,20); -- 공통과목3
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T9',4,40,40,20); -- 공통과목4
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T9',5,40,40,20); -- 공통과목5
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T9',6,40,40,20); -- 공통과목6        
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T9',7,40,40,20); -- 공통과목7      

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T9',8,40,40,20); -- 공통과목8

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T9',9,40,40,20); -- 공통과목9  

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T9',17,40,40,20); -- 특별과목17

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T9',18,40,40,20); -- 특별과목18
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T9',28,40,40,20); -- 특별과목28
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T9',32,40,40,20); -- 특별과목32   
       
       
--T10 배점번호,교사번호,개설과목번호,필기배점,실기배점,출결배점 
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T10',1,40,40,20); -- 공통과목1

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T10',2,40,40,20); -- 공통과목2
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T10',3,40,40,20); -- 공통과목3
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T10',4,40,40,20); -- 공통과목4
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T10',5,40,40,20); -- 공통과목5
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T10',6,40,40,20); -- 공통과목6        
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T10',7,40,40,20); -- 공통과목7      

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T10',8,40,40,20); -- 공통과목8

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T10',9,40,40,20); -- 공통과목9  

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T10',10,40,40,20);  -- 특별과목10

insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
      values(seqtestPoint.nextval,'T10',12,40,40,20);  -- 특별과목12
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T10',13,40,40,20); -- 특별과목13
       
insert into tblTestPoint(testPointSeq,teacherSeq,openSubjectSeq,writingPoint,performPoint,attendPoint) 
       values(seqtestPoint.nextval,'T10',19,40,40,20); -- 특별과목19          
       
commit;