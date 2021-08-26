-- tblOpenSubject, 개설과목
-- openSubjectSeq(개설과목번호), subjectSeq(과목번호), openCurrSeq(개설과정번호), subjectStartDate(과목시작일), subjectEndDate(과목종료일)(과목진행상태)

-- 과정1('2021-02-25'~'2021-08-14')
-- 과목 : 1,2,3,4,5,6,7,8,9,10,11,14,32
select * from tblOpenSubject;
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 1, 1, '2021-02-25', '2021-03-06'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 2, 1, '2021-03-07', '2021-03-13'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 3, 1, '2021-03-14', '2021-03-22'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 4, 1, '2021-03-23', '2021-03-26'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 5, 1, '2021-03-26', '2021-04-10'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 6, 1, '2021-04-11', '2021-04-22'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 7, 1, '2021-04-23', '2021-05-06'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 8, 1, '2021-05-07', '2021-05-18'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 9, 1, '2021-05-19', '2021-05-25'); 

insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 10, 1, '2021-05-26', '2021-06-12'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 11, 1, '2021-06-13', '2021-07-07'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 14, 1, '2021-07-08', '2021-07-30'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 32, 1, '2021-07-31', '2021-08-14'); 

-- 과정2('2021-05-10', '2021-10-21')
-- 과목 : 1,2,3,4,5,6,7,8,9,12,13,15,16
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 1, 2, '2021-05-10', '2021-05-19'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 2, 2, '2021-05-20', '2021-05-26'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 3, 2, '2021-05-27', '2021-06-04'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 4, 2, '2021-06-05', '2021-06-08'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 5, 2, '2021-06-09', '2021-06-23'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 6, 2, '2021-06-24', '2021-07-05'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 7, 2, '2021-07-06', '2021-07-19'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 8, 2, '2021-07-20', '2021-07-31'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 9, 2, '2021-08-01', '2021-08-07'); 

insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 12, 2, '2021-08-08', '2021-08-20'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 13, 2, '2021-08-21', '2021-09-16'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 15, 2, '2021-09-17', '2021-10-01'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 16, 2, '2021-10-02', '2021-10-21'); 

-- 과정3('2021-03-29', '2021-09-30')
-- 과목 : 1,2,3,4,5,6,7,8,9,16,17,28,36
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 1, 3, '2021-03-29', '2021-04-07'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 2, 3, '2021-04-08', '2021-04-14'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 3, 3, '2021-04-15', '2021-04-23'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 4, 3, '2021-04-24', '2021-04-27'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 5, 3, '2021-04-28', '2021-05-12'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 6, 3, '2021-05-13', '2021-05-24'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 7, 3, '2021-05-25', '2021-06-07'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 8, 3, '2021-06-08', '2021-06-19'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 9, 3, '2021-06-20', '2021-06-26'); 

insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 16, 3, '2021-06-27', '2021-07-16'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 17, 3, '2021-07-17', '2021-08-18'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 28, 3, '2021-08-19', '2021-09-04'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 36, 3, '2021-09-05', '2021-09-30'); 

-- 과정4('2021-04-05', '2021-10-08')
-- 과목 : 1,2,3,4,5,6,7,8,9,19,20,21,22
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 1, 4, '2021-04-05', '2021-04-14'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 2, 4, '2021-04-15', '2021-04-21'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 3, 4, '2021-04-22', '2021-04-30'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 4, 4, '2021-05-01', '2021-05-04'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 5, 4, '2021-05-05', '2021-05-19'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 6, 4, '2021-05-20', '2021-05-31'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 7, 4, '2021-06-01', '2021-06-14'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 8, 4, '2021-06-15', '2021-06-26'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 9, 4, '2021-06-27', '2021-07-03'); 

insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 19, 4, '2021-07-04', '2021-07-25'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 20, 4, '2021-07-26', '2021-08-27'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 21, 4, '2021-08-28', '2021-09-13'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 22, 4, '2021-09-14', '2021-10-08'); 

-- 과정5('2021-02-18', '2021-09-15')
-- 과목 : 1,2,3,4,5,6,7,8,9,23,24,27,29
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 1, 5, '2021-02-18', '2021-02-27'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 2, 5, '2021-02-28', '2021-03-06'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 3, 5, '2021-03-07', '2021-03-15'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 4, 5, '2021-03-16', '2021-03-19'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 5, 5, '2021-03-20', '2021-04-03'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 6, 5, '2021-04-04', '2021-04-15'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 7, 5, '2021-04-16', '2021-04-29'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 8, 5, '2021-04-30', '2021-05-11'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 9, 5, '2021-05-12', '2021-05-18'); 

insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 23, 5, '2021-05-19', '2021-06-16'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 24, 5, '2021-06-17', '2021-07-20'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 27, 5, '2021-07-21', '2021-08-12'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 29, 5, '2021-08-13', '2021-09-15'); 


-- 과정6('2021-01-25', '2021-08-26')
-- 과목 : 1,2,3,4,5,6,7,8,9,30,31,33,34
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 1, 6, '2021-01-25', '2021-02-03'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 2, 6, '2021-02-04', '2021-02-10'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 3, 6, '2021-02-11', '2021-02-19'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 4, 6, '2021-02-20', '2021-02-23'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 5, 6, '2021-02-24', '2021-03-10'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 6, 6, '2021-03-11', '2021-03-22'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 7, 6, '2021-03-23', '2021-04-05'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 8, 6, '2021-04-06', '2021-04-17'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 9, 6, '2021-04-18', '2021-04-24'); 

insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 30, 6, '2021-04-25', '2021-05-22'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 31, 6, '2021-05-23', '2021-06-05'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 33, 6, '2021-06-06', '2021-07-15'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 34, 6, '2021-07-16', '2021-08-26'); 


-- 과정7('2021-08-17', '2022-03-04')
-- 과목 : 1,2,3,4,5,6,7,8,9,25,26,35,37
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 1, 7, '2021-08-17', '2021-08-26'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 2, 7, '2021-08-27', '2021-09-02'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 3, 7, '2021-09-03', '2021-09-11');
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 4, 7, '2021-09-12', '2021-09-15'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 5, 7, '2021-09-16', '2021-09-30'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 6, 7, '2021-10-01', '2021-10-12'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 7, 7, '2021-10-13', '2021-10-26'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 8, 7, '2021-10-27', '2021-11-07'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 9, 7, '2021-11-08', '2021-11-14'); 

insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 25, 7, '2021-11-15', '2021-12-13'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 26, 7, '2021-12-14', '2021-12-30'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 35, 7, '2021-12-31', '2022-01-25'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 37, 7, '2022-01-26', '2022-03-04'); 


-- 과정8('2020-08-17', '2021-02-02')
-- 과목 : 1,2,3,4,5,6,7,8,9,38,39,40,41
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 1, 8, '2020-08-17', '2020-08-26'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 2, 8, '2020-08-27', '2020-09-02'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 3, 8, '2020-09-03', '2020-09-11'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 4, 8, '2020-09-12', '2020-09-15'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 5, 8, '2020-09-16', '2020-09-30'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 6, 8, '2020-10-01', '2020-10-12'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 7, 8, '2020-10-13', '2020-10-26'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 8, 8, '2020-10-27', '2020-11-07'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 9, 8, '2020-11-08', '2020-11-12'); 

insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 38, 8, '2020-11-13', '2020-12-06'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 39, 8, '2020-12-07', '2020-12-20'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 40, 8, '2020-12-21', '2021-01-09'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 41, 8, '2021-01-10', '2021-02-02'); 


-- 과정9('2021-10-03', '2022-04-03')
-- 과목 : 1,2,3,4,5,6,7,8,9,17,18,28,32
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 1, 9, '2021-10-03', '2021-10-12'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 2, 9, '2021-10-13', '2021-10-19'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 3, 9, '2021-10-20', '2021-10-28'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 4, 9, '2021-10-29', '2021-11-01'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 5, 9, '2021-11-02', '2021-11-16'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 6, 9, '2021-11-17', '2021-11-28'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 7, 9, '2021-11-29', '2021-12-12'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 8, 9, '2021-12-13', '2021-12-24'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 9, 9, '2021-12-25', '2021-12-31'); 

insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 17, 9, '2022-01-01', '2022-02-02'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 18, 9, '2022-02-03', '2022-03-02'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 28, 9, '2022-03-03', '2022-03-19'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 32, 9, '2022-03-20', '2022-04-03'); 

-- 과정10('2021-10-13', '2022-03-31')
-- 과목 : 1,2,3,4,5,6,7,8,9,10,12,13,19
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 1, 10, '2021-10-13', '2021-10-22'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 2, 10, '2021-10-23', '2021-10-29'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 3, 10, '2021-10-30', '2021-11-07'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 4, 10, '2021-11-08', '2021-11-11'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 5, 10, '2021-11-12', '2021-11-26'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 6, 10, '2021-11-27', '2021-12-08'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 7, 10, '2021-12-09', '2021-12-22'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 8, 10, '2021-12-23', '2022-01-03'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 9, 10, '2022-01-04', '2022-01-10'); 

insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 10, 10, '2022-01-11', '2022-01-28'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 12, 10, '2022-01-29', '2022-02-10'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 13, 10, '2022-02-11', '2022-03-09'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 19, 10, '2022-03-10', '2022-03-31'); 

-- 과정11('2021-09-20', '2022-04-16')
-- 과목 : 1,2,3,4,5,6,7,8,9,20,23,27,29
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 1, 11, '2021-09-20', '2021-09-29'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 2, 11, '2021-09-30', '2021-10-06'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 3, 11, '2021-10-07', '2021-10-15'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 4, 11, '2021-10-16', '2021-10-19'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 5, 11, '2021-10-20', '2021-11-03'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 6, 11, '2021-11-04', '2021-11-15'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 7, 11, '2021-11-16', '2021-11-29'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 8, 11, '2021-11-30', '2021-12-11'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 9, 11, '2021-12-12', '2021-12-18'); 

insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 20, 11, '2021-12-19', '2022-01-20'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 23, 11, '2022-01-21', '2022-02-18'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 27, 11, '2022-02-19', '2022-03-13'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 29, 11, '2022-03-14', '2022-04-16'); 

-- 과정12('2021-09-01', '2022-03-13')
-- 과목 : 1,2,3,4,5,6,7,8,9,31,35,36,37
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 1, 12, '2021-09-01', '2021-09-10'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 2, 12, '2021-09-11', '2021-09-17'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 3, 12, '2021-09-18', '2021-09-26'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 4, 12, '2021-09-27', '2021-09-30'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 5, 12, '2021-10-01', '2021-10-15'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 6, 12, '2021-10-16', '2021-10-27'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 7, 12, '2021-10-28', '2021-11-10'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 8, 12, '2021-11-11', '2021-11-22'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 9, 12, '2021-11-23', '2021-11-29'); 

insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 31, 12, '2021-11-30', '2021-12-13'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 35, 12, '2021-12-14', '2022-01-08'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 36, 12, '2022-01-09', '2022-02-03'); 
insert into tblOpenSubject (openSubjectSeq, subjectSeq, openCurrSeq, subjectStartDate, subjectEndDate) values(seqOpenSubject.nextVal, 37, 12, '2022-02-04', '2022-03-13'); 

commit;