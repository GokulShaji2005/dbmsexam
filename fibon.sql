set serveroutput on;

create or replace procedure fibonacci(num in int)
is
a int:=0;
b int:=1;
c int;
begin
    if num=0 then 
 dbms_output.put_line('0');
    elsif num=1 then
    dbms_output.put_line(a);
    
    else 
      for i in 1..num loop
      dbms_output.put_line(a);
      c:=a+b;
      a:=b;
      b:=c;
      end loop;
    end if;
end;
/

declare 
num int;
begin
    num:=&num;
    fibonacci(num);
end;
/
