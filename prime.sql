set serveroutput on;

create or replace procedure prime(num in int)
is
flag number:=0;
begin
    if num<=1 then
    dbms_output.put_line('Not prime');
    else
       for i in 2..num-1 loop
           if mod(num,i)=0 then
           flag:=1;
           exit;
           end if;
        end loop;
   
    if flag=0 then 
    dbms_output.put_line('Prime');
    else
     dbms_output.put_line('Not Prime');
    end if;
    end if;
end;
/

exec prime(5);

