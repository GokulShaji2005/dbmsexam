set serveroutput on;

create or replace procedure factorial(num in int)
is
result int;
begin
    for i in 1..num loop
    num:=num*i;
    end loop;
    return num;
end;
/

declare 
num int;
result int;
begin
    num:=&num;
    result:=factorial(num);
    dbms_output.put_line(result);
end;
/

