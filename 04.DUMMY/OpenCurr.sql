--tblOpenCurr, 개설과정
-- openCurrSeq(개설과정번호), CurrSeq(과정번호), classNum(강의실번호), currStartDate(과정시작일), currEndDate(과정종료일)(강의상태)

insert into tblOpenCurr (openCurrSeq, CurrSeq, classNum,teacherSeq,currStartDate, currEndDate) values (seqOpenCurr.nextVal, 1, 1,'T1' ,'2021-02-25', '2021-08-14'); --1
insert into tblOpenCurr (openCurrSeq, CurrSeq, classNum,teacherSeq, currStartDate, currEndDate) values (seqOpenCurr.nextVal, 2, 2,'T4' , '2021-05-10', '2021-10-21'); --2
insert into tblOpenCurr (openCurrSeq, CurrSeq, classNum,teacherSeq, currStartDate, currEndDate) values (seqOpenCurr.nextVal, 3, 3,'T6' , '2021-03-29', '2021-09-30'); --3
insert into tblOpenCurr (openCurrSeq, CurrSeq, classNum,teacherSeq, currStartDate, currEndDate) values (seqOpenCurr.nextVal, 4, 4,'T2' , '2021-04-05', '2021-10-08'); --4
insert into tblOpenCurr (openCurrSeq, CurrSeq, classNum,teacherSeq, currStartDate, currEndDate) values (seqOpenCurr.nextVal, 5, 5,'T3' , '2021-02-18', '2021-09-15'); --5
insert into tblOpenCurr (openCurrSeq, CurrSeq, classNum,teacherSeq, currStartDate, currEndDate) values (seqOpenCurr.nextVal, 6, 6,'T5' , '2021-01-25', '2021-08-28'); --6

insert into tblOpenCurr (openCurrSeq, CurrSeq, classNum,teacherSeq, currStartDate, currEndDate) values (seqOpenCurr.nextVal, 7, 1,'T7', '2021-08-17', '2022-03-04'); --7
insert into tblOpenCurr (openCurrSeq, CurrSeq, classNum,teacherSeq, currStartDate, currEndDate) values (seqOpenCurr.nextVal, 8, 2,'T8', '2020-08-17', '2021-02-02'); --8
insert into tblOpenCurr (openCurrSeq, CurrSeq, classNum,teacherSeq, currStartDate, currEndDate) values (seqOpenCurr.nextVal, 9, 3,'T9', '2021-10-03', '2022-04-03'); --9
insert into tblOpenCurr (openCurrSeq, CurrSeq, classNum,teacherSeq, currStartDate, currEndDate) values (seqOpenCurr.nextVal, 10, 4,'T10', '2021-10-13', '2022-3-31'); --10
insert into tblOpenCurr (openCurrSeq, CurrSeq, classNum,teacherSeq, currStartDate, currEndDate) values (seqOpenCurr.nextVal, 11, 5,'T3', '2021-09-20', '2022-04-16'); --11
insert into tblOpenCurr (openCurrSeq, CurrSeq, classNum,teacherSeq, currStartDate, currEndDate) values (seqOpenCurr.nextVal, 12, 6,'T5', '2021-09-01', '2022-03-13');--12
insert into tblOpenCurr (openCurrSeq, CurrSeq, classNum,teacherSeq, currStartDate, currEndDate) values (10000, 10000, 10000,'T10000', '2000-01-01', '2000-01-01');--12


commit;


