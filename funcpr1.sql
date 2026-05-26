create table students(
id varchar(20),
studname varchar(20),
m1 int,
m2 int,
m3 int,
total int,
grade varchar(20),
primary key(id)
);

create or replace function f1(total in int)
return varchar
IS

g varchar(20);
begin
    if total>=280 then
    g:='A';
    elsif total>=260 and total<280 then
    g:='B';
    else
    g:='F';
    end if;
    return g;
 
end;
/


create or replace procedure pr1(id in varchar,studname in varchar,m1 in int,m2 in int,m3 in int)
is 
total1 int; 
grade1 varchar(20);
begin
total1:=m1+m2+m3;
grade1:=f1(m1+m2+m3);
update students set total=total1,grade=grade1
where students.id=pr1.id;

dbms_output.put_line('The grade is updated');

end;
/

declare
id1 varchar(20);
studname1 varchar(20);
m11 int;
m22 int;
m33 int;
begin
    id1:='&id1';
    studname1:='&studname1';
    m11:=&m11;
    m22:=&m22;
    m33:=&m33;
    insert into students(id,studname,m1,m2,m3) values(id1,studname1,m11,m22,m33);
    pr1(id1,studname1,m11,m22,m33);
     dbms_output.put_line('tuple is inserted');
    end;
/

select * from students;
