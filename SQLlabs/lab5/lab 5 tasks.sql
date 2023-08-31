create database t1_lab5;
use t1_lab5;
create table course(c_id int, c_name varchar(20), primary key(c_id));
create table dept(d_id int, name varchar(20), primary key(d_id));
create table student(s_id int, name varchar(20), c_id int, marks float(3,1),d_id int, primary key(s_id), foreign key (d_id) references dept (d_id),foreign key (c_id) references course (c_id));
describe course;
describe dept;
describe student;

insert into dept values('1','CS'),('2','ME');
insert into course values('1','S.ST'),('2','DLD');
insert into student values('1','Rameez','1','89.5','2'),('2','Ally','2','79.5','2'),('3','Junaid','1','99.5','1'),('4','Osama','1','79.5','1');
select * from student ;
select student.name,dept.name from student inner join dept on student.d_id=dept.d_id;

select student.name,dept.name,student.marks from student inner join dept on student.d_id=dept.d_id;

#task 2

select course.c_name as course_name, count(student.c_id) as no_of_students from course inner join student on course.c_id=student.c_id group by c_name;
insert into student values('5','moazam','1','99.5','1'),('6','hamza','1','79.5','1'),('7','salman','1','99.5','1'),('8','naveed','1','79.5','1');
select course.c_name as course_name, count(student.c_id) as students_enrolled from course inner join student on course.c_id=student.c_id group by c_name having count(student.c_id)>5;
select name as Student_names, count(c_id) as enrolled from Student group by name;
insert into student values('9','moazam','2','99.5','1'),('10','hamza','2','79.5','1');
select name,count(c_id) as enrolled from student group by name  having count(c_id)>=2;

#task3
select course.c_name,student.name from student right join course on course.c_id=student.c_id;

select dept.name,count(student.s_id) from dept left join student on dept.d_id=student.s_id group by dept.d_id having count(student.s_id)=0 union select null as name,count(*) from student where d_id is null;







