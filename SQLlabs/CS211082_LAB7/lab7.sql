use lab_07;
show tables;
describe student;
select * from student;

# Q1
Create View StudentView1 as Select  name, department, GPA from Student;
describe StudentView1;
select * from StudentView1;

Create View StudentInfo as Select roll_no, name from Student;
describe StudentInfo;
select * from StudentInfo;

#Q2
select * from Student where GPA >='3.0';

#Q3
insert into Student Values 
(8, "naveed","cs", 3.11);

#Q4
select * from Student;
select * from StudentView1;
select * from StudentInfo;


#Task2
describe student1;

select * from student1;
# Q1
create or replace view StudentView_a as select name, dept_id from Student1 with check option;
describe StudentView_a;
select * from StudentView_a;
Create View StudentInfo_a as Select roll_no, name from Student;
describe StudentInfo_a;
select * from StudentInfo_a;

# Q2
select * from StudentView_a;

# Q3
describe student1;
select * from student1;
insert into Student1 Values (9, "Asad",5,"SE",3.68);

# Q4
select * from Student1;
select * from StudentInfo_a;
select * from StudentView_a;

#Q5
drop View StudentView_a;
show tables;
select * from StudentView_a;


#task3

create Table Student_a(roll_no int,first_name Varchar(50),last_name Varchar(50),department Varchar(50));
insert into Student_a Values (1, "Amanullah", "Wasti", "CS"),(2, "junaid", "anser", "se"),(3, "asfandyar", "baig", "ds"),(1, "umer", "afridi", "ee");

drop table Student_a;

select * from Student_a;
describe Student_a;

# Q1
create or replace view StudentView_b as 
select roll_no, first_name, last_name from Student_a with check option;
describe studentview_b;
select * from StudentView_b;
create or replace view StudentInfo_b as 
select first_name, last_name, department from Student_a with check option;
describe StudentInfo_b;
select * from StudentInfo_b;

#Q2
insert into StudentView_b (roll_no, first_name, last_name)
values (5, 'Ally','Hussain');
delete from StudentView_b  where roll_no='5';
# Q3
select * from Student_a;
select * from StudentInfo_b;
select * from StudentView_b;

#Q4
delete from StudentView_b where roll_no = 2;

#Q5
select * from Student_a;
select * from StudentInfo_b;
select * from StudentView_b;

#Q6
alter view StudentView_b AS
select * from Student_a
where first_name like '%AE%';

#Q7
insert into StudentView_b (roll_no, first_name, last_name)
values (8, 'Michael','Leigh');

#Q8
select * from Student_a;
select * from StudentInfo_b;
select * from StudentView_b;


# Q9
insert into StudentView_b (roll_no, first_name, last_name)
values (9, 'Aldina','Jenkins');

#Q10
select * from Student_a;
select * from StudentInfo_b;
select * from StudentView_b;




