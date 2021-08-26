--﻿-- tblAdmin 
-- 관리자 계정테이블, 계정 5개 
-- adminSeq = 관리자번호, adminName = 관리자 이름, adminPassword = 관리자 비밀번호


insert into tblAdmin (adminSeq,adminName,adminPassword) values (seqadmin.nextVal,'김미나','2345678');
insert into tblAdmin (adminSeq,adminName,adminPassword) values (seqadmin.nextVal,'조서연','2456789');
insert into tblAdmin (adminSeq,adminName,adminPassword) values (seqadmin.nextVal,'차소현','2567890'); 
insert into tblAdmin (adminSeq,adminName,adminPassword) values (seqadmin.nextVal,'허주원','1234567');
insert into tblAdmin (adminSeq,adminName,adminPassword) values (seqadmin.nextVal,'홍찬호','1345678');


--﻿-- tblStudent 
-- 학생 테이블, 200개 
-- stdSeq(학생번호), stdName(학생 이름), stdTel(학생 전화번호), stdSSn (학생 비밀번호(주민뒷자리)) , stdRegDate (학생 등록일), stdCount(학생 수강횟수)

insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'강서연','010-6318-4671',1292798,'2020-08-12',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'지서윤','010-0857-7472',2115939,'2020-08-12',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'인지우','010-2869-2362',1041865,'2020-08-12',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'문서현','010-7946-7478',1237522,'2020-08-12',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'오민서','010-7835-5208',2388147,'2020-08-12',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'설하은','010-3579-5386',2953255,'2020-08-12',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'배하윤','010-9103-6763',2630871,'2020-08-12',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'공윤서','010-6486-7030',2133369,'2020-08-12',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'방지유','010-3929-8655',2689276,'2020-08-12',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'정지민','010-9218-6622',2458615,'2020-08-12',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'전채원','010-6119-1134',1992346,'2020-08-12',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'백지윤','010-8039-7529',2007485,'2020-08-12',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'한은서','010-4435-4749',2554001,'2020-08-12',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'송수아','010-8680-4736',1026563,'2020-08-12',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'강다은','010-0638-6711',2615767,'2020-08-12',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'권예은','010-9758-1021',2630556,'2020-08-12',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'신지아','010-3366-5925',2448829,'2020-08-12',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'반수빈','010-4054-4549',1844008,'2020-08-12',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'여소율','010-8049-8919',2069264,'2020-08-12',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'염예린','010-8185-0258',2236647,'2020-08-12',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'김예원','010-6412-3449',2888845,'2020-08-12',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'양지원','010-7517-0475',2204904,'2020-08-12',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'양소윤','010-3854-0598',1695521,'2020-08-12',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'권지안','010-9537-9253',2198350,'2020-08-12',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'성하린','010-1858-7794',1598298,'2020-08-12',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'손시은','010-6558-9157',2395679,'2020-08-12',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'모유진','010-5858-5964',2642804,'2020-08-12',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'송채은','010-9380-8735',1115479,'2020-08-12',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'추윤아','010-8027-6314',1013582,'2020-08-12',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'박유나','010-0928-0583',2618178,'2020-08-12',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'맹가은','010-3127-3396',1801617,'2020-08-12',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'신서영','010-5350-5910',1833579,'2020-08-12',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'권민지','010-9398-3706',1388799,'2021-01-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'나예진','010-3053-5250',1851639,'2021-01-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'모서아','010-0114-8330',1324696,'2021-01-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'손수민','010-8982-8733',1413191,'2021-01-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'원수연','010-8077-0198',2496611,'2021-01-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'민연우','010-0622-7988',1256315,'2021-01-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'주예나','010-7635-3258',2742828,'2021-01-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'인예서','010-6042-2551',2858335,'2021-01-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'정주아','010-6072-3835',1828749,'2021-01-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'양시연','010-4199-5481',1488118,'2021-01-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'여연서','010-6954-3454',2914732,'2021-01-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'전하율','010-7103-0000',1433573,'2021-01-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'추다인','010-0699-5387',2885695,'2021-01-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'나다연','010-9647-6629',2577878,'2021-01-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'은시아','010-2828-2046',1440904,'2021-01-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'탁아인','010-9414-5130',2381930,'2021-01-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'안현서','010-2868-4413',2876732,'2021-01-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'심서은','010-9924-8047',1716543,'2021-01-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'신유주','010-0310-3027',2337241,'2021-01-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'금아린','010-3644-4087',2160122,'2021-01-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'기서우','010-1522-2443',2654706,'2021-01-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'은하연','010-4990-5996',1182686,'2021-01-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'배서율','010-3630-3519',1861282,'2021-01-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'명서진','010-1759-8284',1882501,'2021-01-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'길채윤','010-7742-8006',2563672,'2021-01-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'하유빈','010-6048-4245',1769972,'2021-01-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'장지율','010-7453-5731',2966735,'2021-01-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'모나윤','010-9283-1799',2648221,'2021-01-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'오수현','010-3049-9988',1099168,'2021-01-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'유예지','010-9955-6751',2199783,'2021-01-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'박다현','010-1067-8000',2896833,'2021-02-13',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'성소은','010-1294-9411',1954679,'2021-02-13',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'신나은','010-1268-0470',1511911,'2021-02-13',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'인나연','010-4251-2351',2026720,'2021-02-13',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'양지은','010-8145-3637',2173577,'2021-02-13',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'양민주','010-0399-7572',1210313,'2021-02-13',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'원아윤','010-7170-8307',2067958,'2021-02-13',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'어사랑','010-1009-4191',1690407,'2021-02-13',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'지시현','010-4439-1824',1740480,'2021-02-13',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'국예빈','010-8810-8478',1183519,'2021-02-13',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'한윤지','010-5931-5018',1222733,'2021-02-13',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'모서하','010-6563-9801',1591163,'2021-02-13',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'양지현','010-2540-4468',1786301,'2021-02-13',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'김소연','010-6313-0035',2632172,'2021-02-13',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'편혜원','010-3764-0566',2300788,'2021-02-13',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'김지수','010-2592-9203',1797132,'2021-02-13',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'구은채','010-9460-5410',1557041,'2021-02-13',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'허주하','010-9249-7811',1360405,'2021-02-13',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'석채아','010-8890-5948',2653858,'2021-02-13',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'조승아','010-6082-7295',1401047,'2021-02-13',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'석다윤','010-9800-2196',2045104,'2021-02-13',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'은소민','010-9041-0686',2859528,'2021-02-13',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'송서희','010-4572-5230',2076219,'2021-02-13',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'소나현','010-2626-4264',1852159,'2021-02-13',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'백민아','010-0582-9344',1445597,'2021-02-13',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'변채린','010-8061-3822',2838550,'2021-02-13',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'제하영','010-2124-9334',2747573,'2021-02-13',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'조세아','010-5129-7892',2345984,'2021-02-13',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'장세은','010-0950-4633',2081155,'2021-02-13',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'임도연','010-6345-9959',2153871,'2021-02-13',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'전규리','010-4305-0933',2846949,'2021-02-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'표아영','010-4459-6266',1437752,'2021-02-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'공다온','010-2887-9651',2476825,'2021-02-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'제가윤','010-8713-8447',1004265,'2021-02-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'허지연','010-7244-6318',2958330,'2021-02-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'최예림','010-3840-4937',2483059,'2021-02-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'엄태희','010-3532-6210',2631110,'2021-02-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'임민채','010-7196-1280',2875408,'2021-02-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'곽민준','010-9250-8829',2059059,'2021-02-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'유서준','010-7023-5480',1930918,'2021-02-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'이예준','010-9766-1953',1838131,'2021-02-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'안도윤','010-3770-3888',1228697,'2021-02-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'어시우','010-9238-9528',1762037,'2021-02-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'편주원','010-5308-1557',2842388,'2021-02-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'박하준','010-2745-2759',2625722,'2021-02-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'구지호','010-9055-5526',2579073,'2021-02-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'천지후','010-2218-2126',2154970,'2021-02-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'노준서','010-3459-8284',1722679,'2021-02-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'노준우','010-6736-7650',1116223,'2021-02-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'원현우','010-0201-1301',1412649,'2021-02-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'윤도현','010-3506-8989',2934578,'2021-02-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'백지훈','010-7841-7342',1408924,'2021-02-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'어건우','010-7730-4507',2165264,'2021-02-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'임우진','010-9579-7196',1440791,'2021-02-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'소선우','010-7327-4878',1086233,'2021-02-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'현서진','010-0106-0438',1115594,'2021-02-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'노민재','010-9998-3744',2744359,'2021-02-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'설현준','010-8772-7551',1599368,'2021-02-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'현연우','010-0589-1049',2630927,'2021-02-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'안유준','010-3977-0361',2843843,'2021-02-20',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'함정우','010-5534-7999',1478171,'2021-03-24',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'금승우','010-2244-0386',2998769,'2021-03-24',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'최승현','010-5328-9999',2908759,'2021-03-24',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'류시윤','010-8707-5194',1449623,'2021-03-24',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'배준혁','010-9948-9377',2675981,'2021-03-24',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'명은우','010-9223-1050',2007077,'2021-03-24',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'홍지환','010-4052-7065',2822939,'2021-03-24',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'엄승민','010-9751-6902',1908043,'2021-03-24',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'조지우','010-1863-1643',2930556,'2021-03-24',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'배유찬','010-8751-7315',1856525,'2021-03-24',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'신윤우','010-0501-9088',2286562,'2021-03-24',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'심민성','010-2944-6868',1033812,'2021-03-24',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'조준영','010-1398-9038',2002539,'2021-03-24',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'반시후','010-5837-4171',2827670,'2021-03-24',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'연진우','010-3709-5450',1082253,'2021-03-24',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'여지원','010-4425-7780',2190322,'2021-03-24',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'노수현','010-2971-8394',1928900,'2021-03-24',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'강재윤','010-5244-9487',2239618,'2021-03-24',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'유시현','010-8338-9892',1802587,'2021-03-24',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'조동현','010-7801-9774',2174003,'2021-03-24',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'지수호','010-2093-5252',1780485,'2021-03-24',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'제태윤','010-0343-8473',2844567,'2021-03-24',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'원민규','010-4818-6349',2938302,'2021-03-24',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'한재원','010-6112-7245',1368011,'2021-03-24',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'구한결','010-5214-4801',1831739,'2021-03-24',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'홍민우','010-2455-2442',2837772,'2021-03-24',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'민재민','010-7180-3405',1379906,'2021-04-01',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'방은찬','010-6572-1389',2992563,'2021-04-01',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'명윤호','010-7899-9266',1365369,'2021-04-01',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'설시원','010-1541-1373',1527235,'2021-04-01',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'차이준','010-7862-7488',2425198,'2021-04-01',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'편민찬','010-2555-1759',2469436,'2021-04-01',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'구지안','010-1193-1880',2723967,'2021-04-01',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'현시온','010-2713-5034',1169777,'2021-04-01',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'설성민','010-6097-4984',2781398,'2021-04-01',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'진준호','010-4312-9439',1792955,'2021-04-01',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'주승준','010-9374-7700',2380948,'2021-04-01',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'손성현','010-2379-7656',2789673,'2021-04-01',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'오이안','010-9725-1076',2784065,'2021-04-01',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'정현서','010-9791-8786',2094481,'2021-04-01',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'명재현','010-0270-9965',1293900,'2021-04-01',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'남하율','010-7786-1683',2523932,'2021-04-01',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'하지한','010-3726-3534',2883159,'2021-04-01',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'권우빈','010-3907-0449',1764997,'2021-04-01',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'명태민','010-0755-3852',1917976,'2021-04-01',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'방지성','010-8154-4077',2204879,'2021-04-01',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'금예성','010-5750-8306',2180691,'2021-04-01',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'천민호','010-2319-7440',1365726,'2021-04-01',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'백태현','010-9163-0795',1406166,'2021-04-01',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'명지율','010-6138-2414',2402821,'2021-04-01',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'심민혁','010-4204-6494',2115647,'2021-04-01',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'정서우','010-5983-1044',2324892,'2021-04-01',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'구성준','010-7458-1291',1573188,'2021-05-05',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'은은호','010-5067-5778',2135401,'2021-05-05',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'설규민','010-0478-8059',1190475,'2021-05-05',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'남정민','010-0962-5255',2167654,'2021-05-05',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'인준','010-3793-4677',2220816,'2021-05-05',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'강지민','010-5598-4407',2284130,'2021-05-05',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'박윤성','010-0693-2036',2166311,'2021-05-05',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'우율','010-2356-5910',1322458,'2021-05-05',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'류윤재','010-2878-5006',1623458,'2021-05-05',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'기하람','010-2343-5878',1980056,'2021-05-05',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'신하진','010-9175-2848',2729117,'2021-05-05',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'선민석','010-0323-6588',2655269,'2021-05-05',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'정준수','010-7566-9379',2321460,'2021-05-05',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'조은성','010-3038-8622',2604273,'2021-05-05',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'차태양','010-7858-9456',2304048,'2021-05-05',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'명예찬','010-3792-8896',2327029,'2021-05-05',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'유준희','010-1591-5873',2102370,'2021-05-05',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'이도훈','010-1787-0684',2592511,'2021-05-05',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'권하민','010-8755-4150',2856330,'2021-05-05',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'인준성','010-6706-0318',1721647,'2021-05-05',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'명건','010-2367-0398',2510751,'2021-05-05',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'편지완','010-6522-1091',1197641,'2021-05-05',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'김현수','010-5777-1070',2846345,'2021-05-05',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'윤승원','010-4159-5082',2556605,'2021-05-05',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'남강민','010-0347-4525',2119623,'2021-05-05',1);
insert into tblStudent(stdSeq,stdName,stdTel,stdSSn,stdRegDate,stdCount) values ('S'||seqStudent.nextVal,'심정현','010-7244-1084',1266777,'2021-05-05',1);


-- 교사 10명
-- teacherSeq = 교사번호, teacherName = 교사이름, teacherSsn = 교사 주민번호 뒷자리, teacherTel = 교사 전화번호
insert into tblTeacher (teacherSeq,teacherName,teacherSsn,teacherTel) values ('T'||seqteacher.nextVal,'어훈심','1071126','010-0489-5023');
insert into tblTeacher (teacherSeq,teacherName,teacherSsn,teacherTel) values ('T'||seqteacher.nextVal,'주연담','2022212','010-3312-5392');
insert into tblTeacher (teacherSeq,teacherName,teacherSsn,teacherTel) values ('T'||seqteacher.nextval,'한빈월','1020527','010-5292-3204');
insert into tblTeacher (teacherSeq,teacherName,teacherSsn,teacherTel) values ('T'||seqteacher.nextval,'허담을','1152227','010-6468-1164');
insert into tblTeacher (teacherSeq,teacherName,teacherSsn,teacherTel) values ('T'||seqteacher.nextval,'정욱뜸','1222751','010-8103-3794');
insert into tblTeacher (teacherSeq,teacherName,teacherSsn,teacherTel) values ('T'||seqteacher.nextval,'심한삼','1583543','010-3601-3550');
insert into tblTeacher (teacherSeq,teacherName,teacherSsn,teacherTel) values ('T'||seqteacher.nextval,'홍두누','1652233','010-0475-5867');
insert into tblTeacher (teacherSeq,teacherName,teacherSsn,teacherTel) values ('T'||seqteacher.nextval,'유묵정','2081512','010-8617-2545');
insert into tblTeacher (teacherSeq,teacherName,teacherSsn,teacherTel) values ('T'||seqteacher.nextval,'장평환','2480822','010-7817-4975');
insert into tblTeacher (teacherSeq,teacherName,teacherSsn,teacherTel) values ('T'||seqteacher.nextval,'전나구','2400521','010-6649-8077');
insert into tblTeacher (teacherSeq,teacherName,teacherSsn,teacherTel) values ('T'||10000,'대기용','9999999','999-9999-9999');


-- tblClass, 강의실
-- classNum(강의실 번호), className(강의실 이름), classCount(강의실인원수)

insert into tblClass(classNum, className, classCount) values(seqclass.nextval, '1강의실', 30);
insert into tblClass(classNum, className, classCount) values(seqclass.nextval, '2강의실', 26); -- 30
insert into tblClass(classNum, className, classCount) values(seqclass.nextval, '3강의실', 26); --30
insert into tblClass(classNum, className, classCount) values(seqclass.nextval, '4강의실', 26);
insert into tblClass(classNum, className, classCount) values(seqclass.nextval, '5강의실', 30); --26
insert into tblClass(classNum, className, classCount) values(seqclass.nextval, '6강의실', 30); --26
insert into tblClass(classNum, className, classCount) values(10000, '대기강의실', 99999);
commit;