
create or replace trigger prev
before insert on Issue
for each row
declare
   cnt int;
begin
    select count(*) into cnt from Issue
    where book_id=:New.book_id;

    if cnt>0 then
    raise_application_error(-20001,'The book is already issued');
    end if;
end;
/

INSERT INTO Issue VALUES
(201,101,4,TO_DATE('01-01-2013','DD-MM-YYYY'));
