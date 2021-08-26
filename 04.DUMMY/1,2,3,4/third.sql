--tblOpenCurr, 개설과정
-- openCurrSeq(개설과정번호), CurrSeq(과정번호), classNum(강의실번호),teacherSeq(선생님번호),currStartDate(과정시작일), currEndDate(과정종료일)(강의상태)

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








--tblStudentClassReg, 교육생 수강정보
--classRegSeq(수강정보 번호,PK), stdSeq(교육생 번호,FK), openCurrSeq(교육생 수강 과정)

insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S1',8);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S2',8);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S3',8);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S4',8);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S5',8);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S6',8);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S7',8);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S8',8);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S9',8);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S10',8);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S11',8);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S12',8);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S13',8);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S14',8);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S15',8);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S16',8);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S17',8);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S18',8);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S19',8);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S20',8);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S21',8);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S22',8);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S23',8);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S24',8);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S25',8);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S26',8);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S27',8);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S28',8);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S29',8);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S30',8);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S31',8);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S32',8);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S33',6);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S34',6);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S35',6);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S36',6);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S37',6);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S38',6);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S39',6);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S40',6);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S41',6);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S42',6);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S43',6);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S44',6);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S45',6);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S46',6);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S47',6);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S48',6);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S49',6);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S50',6);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S51',6);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S52',6);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S53',6);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S54',6);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S55',6);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S56',6);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S57',6);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S58',6);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S59',6);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S60',6);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S61',6);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S62',6);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S63',5);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S64',5);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S65',5);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S66',5);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S67',5);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S68',5);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S69',5);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S70',5);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S71',5);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S72',5);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S73',5);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S74',5);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S75',5);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S76',5);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S77',5);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S78',5);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S79',5);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S80',5);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S81',5);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S82',5);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S83',5);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S84',5);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S85',5);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S86',5);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S87',5);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S88',5);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S89',5);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S90',5);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S91',5);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S92',5);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S93',1);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S94',1);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S95',1);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S96',1);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S97',1);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S98',1);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S99',1);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S100',1);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S101',1);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S102',1);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S103',1);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S104',1);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S105',1);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S106',1);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S107',1);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S108',1);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S109',1);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S110',1);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S111',1);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S112',1);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S113',1);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S114',1);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S115',1);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S116',1);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S117',1);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S118',1);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S119',1);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S120',1);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S121',1);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S122',1);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S123',3);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S124',3);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S125',3);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S126',3);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S127',3);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S128',3);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S129',3);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S130',3);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S131',3);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S132',3);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S133',3);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S134',3);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S135',3);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S136',3);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S137',3);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S138',3);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S139',3);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S140',3);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S141',3);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S142',3);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S143',3);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S144',3);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S145',3);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S146',3);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S147',3);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S148',3);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S149',4);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S150',4);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S151',4);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S152',4);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S153',4);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S154',4);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S155',4);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S156',4);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S157',4);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S158',4);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S159',4);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S160',4);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S161',4);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S162',4);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S163',4);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S164',4);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S165',4);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S166',4);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S167',4);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S168',4);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S169',4);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S170',4);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S171',4);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S172',4);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S173',4);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S174',4);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S175',2);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S176',2);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S177',2);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S178',2);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S179',2);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S180',2);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S181',2);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S182',2);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S183',2);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S184',2);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S185',2);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S186',2);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S187',2);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S188',2);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S189',2);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S190',2);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S191',2);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S192',2);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S193',2);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S194',2);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S195',2);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S196',2);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S197',2);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S198',2);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S199',2);
insert into tblStudentClassReg(classRegSeq,stdSeq,openCurrSeq) values ('SC'||seqStudentClassReg.nextVal,'S200',2);


--tblCompleteStatus, 교육생 수료 및 중도 탈락
--completeStatusSeq(교육생 수료 및 중도탈락 번호,PK), classRegSeq(교육생 수강정보,FK), completeStatusDate(교육생 수료 및 중도탈락 날짜), completeStatusPF(교육생 수료 및 중도탈락 여부) = P(pass) F(fail)

insert into tblCompleteStatus(completeStatusSeq,classRegSeq,completeStatusDate,completeStatusPF) values (seqCompleteStatus.nextVal,'SC1','2021-02-04','P');
insert into tblCompleteStatus(completeStatusSeq,classRegSeq,completeStatusDate,completeStatusPF) values (seqCompleteStatus.nextVal,'SC2','2021-02-04','P');
insert into tblCompleteStatus(completeStatusSeq,classRegSeq,completeStatusDate,completeStatusPF) values (seqCompleteStatus.nextVal,'SC3','2021-02-04','P');
insert into tblCompleteStatus(completeStatusSeq,classRegSeq,completeStatusDate,completeStatusPF) values (seqCompleteStatus.nextVal,'SC4','2021-02-04','P');
insert into tblCompleteStatus(completeStatusSeq,classRegSeq,completeStatusDate,completeStatusPF) values (seqCompleteStatus.nextVal,'SC5','2021-02-04','P');
insert into tblCompleteStatus(completeStatusSeq,classRegSeq,completeStatusDate,completeStatusPF) values (seqCompleteStatus.nextVal,'SC6','2021-02-04','P');
insert into tblCompleteStatus(completeStatusSeq,classRegSeq,completeStatusDate,completeStatusPF) values (seqCompleteStatus.nextVal,'SC7','2021-02-04','P');
insert into tblCompleteStatus(completeStatusSeq,classRegSeq,completeStatusDate,completeStatusPF) values (seqCompleteStatus.nextVal,'SC8','2021-02-04','P');
insert into tblCompleteStatus(completeStatusSeq,classRegSeq,completeStatusDate,completeStatusPF) values (seqCompleteStatus.nextVal,'SC9','2021-02-04','P');
insert into tblCompleteStatus(completeStatusSeq,classRegSeq,completeStatusDate,completeStatusPF) values (seqCompleteStatus.nextVal,'SC10','2021-02-04','P');
insert into tblCompleteStatus(completeStatusSeq,classRegSeq,completeStatusDate,completeStatusPF) values (seqCompleteStatus.nextVal,'SC11','2021-02-04','P');
insert into tblCompleteStatus(completeStatusSeq,classRegSeq,completeStatusDate,completeStatusPF) values (seqCompleteStatus.nextVal,'SC12','2021-02-04','P');
insert into tblCompleteStatus(completeStatusSeq,classRegSeq,completeStatusDate,completeStatusPF) values (seqCompleteStatus.nextVal,'SC13','2021-02-04','P');
insert into tblCompleteStatus(completeStatusSeq,classRegSeq,completeStatusDate,completeStatusPF) values (seqCompleteStatus.nextVal,'SC14','2021-02-04','P');
insert into tblCompleteStatus(completeStatusSeq,classRegSeq,completeStatusDate,completeStatusPF) values (seqCompleteStatus.nextVal,'SC15','2021-02-04','P');
insert into tblCompleteStatus(completeStatusSeq,classRegSeq,completeStatusDate,completeStatusPF) values (seqCompleteStatus.nextVal,'SC16','2021-02-04','P');
insert into tblCompleteStatus(completeStatusSeq,classRegSeq,completeStatusDate,completeStatusPF) values (seqCompleteStatus.nextVal,'SC17','2021-02-04','P');
insert into tblCompleteStatus(completeStatusSeq,classRegSeq,completeStatusDate,completeStatusPF) values (seqCompleteStatus.nextVal,'SC18','2021-02-04','P');
insert into tblCompleteStatus(completeStatusSeq,classRegSeq,completeStatusDate,completeStatusPF) values (seqCompleteStatus.nextVal,'SC19','2021-02-04','P');
insert into tblCompleteStatus(completeStatusSeq,classRegSeq,completeStatusDate,completeStatusPF) values (seqCompleteStatus.nextVal,'SC20','2021-02-04','P');
insert into tblCompleteStatus(completeStatusSeq,classRegSeq,completeStatusDate,completeStatusPF) values (seqCompleteStatus.nextVal,'SC21','2021-02-04','P');
insert into tblCompleteStatus(completeStatusSeq,classRegSeq,completeStatusDate,completeStatusPF) values (seqCompleteStatus.nextVal,'SC22','2021-02-04','P');
insert into tblCompleteStatus(completeStatusSeq,classRegSeq,completeStatusDate,completeStatusPF) values (seqCompleteStatus.nextVal,'SC23','2021-02-04','P');
insert into tblCompleteStatus(completeStatusSeq,classRegSeq,completeStatusDate,completeStatusPF) values (seqCompleteStatus.nextVal,'SC24','2021-02-04','P');
insert into tblCompleteStatus(completeStatusSeq,classRegSeq,completeStatusDate,completeStatusPF) values (seqCompleteStatus.nextVal,'SC25','2021-02-04','P');
insert into tblCompleteStatus(completeStatusSeq,classRegSeq,completeStatusDate,completeStatusPF) values (seqCompleteStatus.nextVal,'SC26','2021-02-04','P');
insert into tblCompleteStatus(completeStatusSeq,classRegSeq,completeStatusDate,completeStatusPF) values (seqCompleteStatus.nextVal,'SC27','2021-02-04','P');
insert into tblCompleteStatus(completeStatusSeq,classRegSeq,completeStatusDate,completeStatusPF) values (seqCompleteStatus.nextVal,'SC28','2021-02-04','P');
insert into tblCompleteStatus(completeStatusSeq,classRegSeq,completeStatusDate,completeStatusPF) values (seqCompleteStatus.nextVal,'SC29','2021-02-04','P');
insert into tblCompleteStatus(completeStatusSeq,classRegSeq,completeStatusDate,completeStatusPF) values (seqCompleteStatus.nextVal,'SC30','2021-02-04','P');
insert into tblCompleteStatus(completeStatusSeq,classRegSeq,completeStatusDate,completeStatusPF) values (seqCompleteStatus.nextVal,'SC31','2021-02-04','P');
insert into tblCompleteStatus(completeStatusSeq,classRegSeq,completeStatusDate,completeStatusPF) values (seqCompleteStatus.nextVal,'SC32','2021-02-04','P');

commit;

