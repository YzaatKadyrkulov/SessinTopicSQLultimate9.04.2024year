create database java13;

create table schools
(
    id                serial primary key,
    school_name       varchar(50),
    address           varchar(50),
    count_of_students int
);

insert into students (first_name, last_name, age, email, school_id)
values ('Yzaat', 'Kadyrkulov', 18, 'yzaat@gmail.com', 1),
       ('Beknazar', 'Joldoshbekov', 17, 'beknazar@gmail.com', 2),
       ('Nurmuhammed', 'Akimbekov', 25, 'nurmuhammed@gmail.com', 3),
       ('Adyl', 'Tolomushev', 18, 'adyl@gmail.com', 4);
alter table schools
    add column foundation_date date;


alter table schools
    add column email varchar(50);

alter table schools
drop column email;

create table students
(
    id         serial primary key,
    first_name varchar(50),
    last_name  varchar(50),
    age        int,
    school_id  int references schools (id)
);

alter table students
    add column email varchar(50);

alter table students
    add unique (email);

-- alter table students drop constraint email;

insert into schools(school_name, address, count_of_students, foundation_date)
values ('Peaksoft', 'Grajdanskaya 119', 200, '2021-11-16'),
       ('ITRun', 'Chui 21', 200, '2022-03-23');

-- we changed a name of column.
alter table students
    rename column email to student_email;


-- create


