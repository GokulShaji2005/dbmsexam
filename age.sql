set serveroutput on;
create or replace PROCEDURE age(num in int)
IS
BEGIN
    if num<18 then
    dbms_output.put_line('Minor');
    elsif num>=18 and num<60 then
    dbms_output.put_line('Mature');

    else
     dbms_output.put_line('Old Age');
     end if;
end;
/

declare 
num int;
begin
    num:=&num;
    age(num);
end;
/

