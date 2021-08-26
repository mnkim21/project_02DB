-- tblClass, 강의실
-- classNum(강의실 번호), className(강의실 이름), classCount(강의실인원수)

insert into tblClass(classNum, className, classCount) values(seqclass.nextval, '1강의실', 30);
insert into tblClass(classNum, className, classCount) values(seqclass.nextval, '2강의실', 26); -- 30
insert into tblClass(classNum, className, classCount) values(seqclass.nextval, '3강의실', 26); --30
insert into tblClass(classNum, className, classCount) values(seqclass.nextval, '4강의실', 26);
insert into tblClass(classNum, className, classCount) values(seqclass.nextval, '5강의실', 30); --26
insert into tblClass(classNum, className, classCount) values(seqclass.nextval, '6강의실', 30); --26
insert into tblClass(classNum, className, classCount) values(10000, '대기강의실', 99999); --26
commit;