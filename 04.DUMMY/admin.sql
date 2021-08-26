--﻿-- tblAdmin 
-- 관리자 계정테이블, 계정 5개 
-- adminSeq = 관리자번호, adminName = 관리자 이름, adminPassword = 관리자 비밀번호


insert into tblAdmin (adminSeq,adminName,adminPassword) values (seqadmin.nextVal,'김미나','2345678');
insert into tblAdmin (adminSeq,adminName,adminPassword) values (seqadmin.nextVal,'조서연','2456789');
insert into tblAdmin (adminSeq,adminName,adminPassword) values (seqadmin.nextVal,'차소현','2567890'); 
insert into tblAdmin (adminSeq,adminName,adminPassword) values (seqadmin.nextVal,'허주원','1234567');
insert into tblAdmin (adminSeq,adminName,adminPassword) values (seqadmin.nextVal,'홍찬호','1345678');

commit;