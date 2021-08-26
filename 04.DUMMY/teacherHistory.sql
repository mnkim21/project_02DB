-- teacherHistory
-- 교사이력 10개
-- teacherHistorySeq = 교사 이력 번호, teacherSeq = 교사 번호, teacherEdu = 교사 학력, teacherCareer = 교사 경력

insert into tblTeacherHistory (teacherHistorySeq,teacherSeq,teacherEdu,teacherCareer) values (seqTeacherHistory.nextval,'T1','초대졸',1);
insert into tblTeacherHistory (teacherHistorySeq,teacherSeq,teacherEdu,teacherCareer) values (seqTeacherHistory.nextval,'T2','대졸',1);
insert into tblTeacherHistory (teacherHistorySeq,teacherSeq,teacherEdu,teacherCareer) values (seqTeacherHistory.nextval,'T3','대졸',7);
insert into tblTeacherHistory (teacherHistorySeq,teacherSeq,teacherEdu,teacherCareer) values (seqTeacherHistory.nextval,'T4','대학원졸',13);
insert into tblTeacherHistory (teacherHistorySeq,teacherSeq,teacherEdu,teacherCareer) values (seqTeacherHistory.nextval,'T5','대졸',4);
insert into tblTeacherHistory (teacherHistorySeq,teacherSeq,teacherEdu,teacherCareer) values (seqTeacherHistory.nextval,'T6','초대졸',2);
insert into tblTeacherHistory (teacherHistorySeq,teacherSeq,teacherEdu,teacherCareer) values (seqTeacherHistory.nextval,'T7','고졸',6);
insert into tblTeacherHistory (teacherHistorySeq,teacherSeq,teacherEdu,teacherCareer) values (seqTeacherHistory.nextval,'T8','대졸',5);
insert into tblTeacherHistory (teacherHistorySeq,teacherSeq,teacherEdu,teacherCareer) values (seqTeacherHistory.nextval,'T9','고졸',10);
insert into tblTeacherHistory (teacherHistorySeq,teacherSeq,teacherEdu,teacherCareer) values (seqTeacherHistory.nextval,'T10','대학원졸',15);

commit;