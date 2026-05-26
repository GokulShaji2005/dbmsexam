create or replace trigger  tr1
before insert on enrollment 
for each row
BEGIN
    if :NEW.marks<40 THEN
    :New.result:='FAIL';
    dbms_output.put_line('Failed');
    else
    :New.result:='PASS';
    dbms_output.put_line('Passed');
end if;
end;
/

insert into student values('115','rahul',20,'CSE');

insert into enrollment(ENROLLMENT_ID,STUDENT_ID,COURSE_ID,marks) VALUES('116','115','201',39);

select * from enrollment;
