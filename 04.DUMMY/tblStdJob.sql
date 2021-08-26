
/*
--9. 교육생 취업 정보 테이블 생성
create table tblStdJob(
    stdJobSeq number primary key, -- 교육생 취업지원번호
    stdSeq number not null references tblStudent(stdSeq), --교육생 번호
    stdField varchar2(20) not null, --취업분야
    stdDate date not null, --교육생취업날짜
    stdSalary number not null -- 취업연봉
);
--9. 교육생 취업 정보 시퀀스 생성
create sequence seqStdJob;
*/

insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S1','금융','2021-03-08',3000);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S2','쇼핑몰','2021-03-01',3100);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S3','ERP','2021-02-08',3200);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S4','블록체인','2021-02-20',3000);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S5','CRM','2021-04-03',3400);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S6','콘텐츠','2021-05-02',2900);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S7','공공기관','2021-03-11',3100);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S8','공공기관','2021-04-12',3200);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S9','금융','2021-05-13',3300);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S10','쇼핑몰','2021-03-08',3400);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S11','제조업','2021-03-08',3500);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S12','금융','2021-03-07',3000);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S13','쇼핑몰','2021-03-01',3100);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S14','ERP','2021-02-08',3200);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S15','블록체인','2021-02-21',3000);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S16','CRM','2021-04-03',3400);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S17','콘텐츠','2021-04-01',2900);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S18','공공기관','2021-03-11',3100);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S19','공공기관','2021-04-12',3200);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S20','금융','2021-05-13',3300);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S21','쇼핑몰','2021-03-08',3400);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S22','제조업','2021-03-08',2800);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S23','ERP','2021-02-08',3200);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S24','블록체인','2021-02-18',2900);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S25','CRM','2021-04-02',3300);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S26','콘텐츠','2021-05-02',2900);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S27','공공기관','2021-03-11',3300);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S28','공공기관','2021-04-12',3400);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S29','금융','2021-05-13',3100);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S30','공공기관','2021-03-08',3200);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S31','쇼핑몰','2021-03-12',3400);
insert into tblStdJob(stdJobSeq,stdSeq,stdField,stdDate,stdSalary) values(seqstdJob.nextval,'S32','제조업','2021-03-13',3500);

commit;