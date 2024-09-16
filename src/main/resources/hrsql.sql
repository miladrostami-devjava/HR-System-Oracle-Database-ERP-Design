create user hr_system identified by Milad13711992;
create role write;
create role read;
create role delete_role;
create role update_role;


grant connect, resource, write, read,update_role,delete_role to hr_system;

create tablespace hr_system_tablespace
    DATAFILE 'C:\Users\Parse\Desktop\MiladTask\JavaCoreTask\HR-System-in-oracle-database\src\main\resources\hr_system_tablespace.dbf' size 10M;
alter user hr_system default tablespace hr_system_tablespace;

create table EMPLOYEES_HR
(
    EMPLOYEE_ID   number not null primary key,
    FIRST_NAME    varchar2(50),
    LAST_NAME     varchar2(50),
    DEPARTMENT_ID number not null,
    foreign key (DEPARTMENT_ID) references DEPARTMENTS (DEPARTMENT_ID)
);
create table POSITIONS
(
    POSITION_ID    number not null primary key,
    POSITION_TITLE varchar2(50),
    DEPARTMENT_ID  number not null,
    foreign key (DEPARTMENT_ID) references DEPARTMENTS (DEPARTMENT_ID)
);

create table PROJECTS
(

    PROJECT_ID   number not null primary key,
    PROJECT_NAME varchar2(50),
    START_DATE   date,
    END_DATE     date
);

create table ASSIGNMENTS
(
    ASSIGNMENT_ID         number not null primary key,
    EMPLOYEE_ID           number not null,
    PROJECT_ID            number not null,
    POSITION_ID           number not null,
    ASSIGNMENT_START_DATE date,
    ASSIGNMENT_END_DATE   date,
    foreign key (EMPLOYEE_ID) references EMPLOYEES_HR (EMPLOYEE_ID),
    foreign key (PROJECT_ID) references PROJECTS (PROJECT_ID),
    foreign key (POSITION_ID) references POSITIONS (POSITION_ID)
);


create table DEPARTMENTS
(
    DEPARTMENT_ID   number not null primary key,
    DEPARTMENT_NAME varchar2(50)
);

insert into EMPLOYEES_HR (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, DEPARTMENT_ID) VALUES (100,'milad','rostami',500);
insert into EMPLOYEES_HR (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, DEPARTMENT_ID) VALUES (101,'ali','rostami',501);
insert into EMPLOYEES_HR (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, DEPARTMENT_ID) VALUES (102,'hamed','rostami',502);
insert into EMPLOYEES_HR (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, DEPARTMENT_ID) VALUES (103,'reza','rostami',503);
insert into EMPLOYEES_HR (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, DEPARTMENT_ID) VALUES (104,'mohammad','karimi',504);
insert into EMPLOYEES_HR (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, DEPARTMENT_ID) VALUES (105,'mehdi','rostami',505);
insert into EMPLOYEES_HR (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, DEPARTMENT_ID) VALUES (106,'john','zare',506);
insert into EMPLOYEES_HR (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, DEPARTMENT_ID) VALUES (107,'sara','rostami',507);
insert into EMPLOYEES_HR (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, DEPARTMENT_ID) VALUES (108,'parsa','parsaei',508);
insert into EMPLOYEES_HR (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, DEPARTMENT_ID) VALUES (109,'davood','mirzaei',509);


insert into POSITIONS(POSITION_ID, POSITION_TITLE, DEPARTMENT_ID) VALUES (200,'it dev',500);
insert into POSITIONS(POSITION_ID, POSITION_TITLE, DEPARTMENT_ID) VALUES (201,'it dev',501);
insert into POSITIONS(POSITION_ID, POSITION_TITLE, DEPARTMENT_ID) VALUES (202,'it dev',502);
insert into POSITIONS(POSITION_ID, POSITION_TITLE, DEPARTMENT_ID) VALUES (203,'it dev',503);
insert into POSITIONS(POSITION_ID, POSITION_TITLE, DEPARTMENT_ID) VALUES (204,'it dev',504);
insert into POSITIONS(POSITION_ID, POSITION_TITLE, DEPARTMENT_ID) VALUES (205,'it dev',505);
insert into POSITIONS(POSITION_ID, POSITION_TITLE, DEPARTMENT_ID) VALUES (206,'it dev',506);
insert into POSITIONS(POSITION_ID, POSITION_TITLE, DEPARTMENT_ID) VALUES (207,'it dev',507);
insert into POSITIONS(POSITION_ID, POSITION_TITLE, DEPARTMENT_ID) VALUES (208,'it dev',508);
insert into POSITIONS(POSITION_ID, POSITION_TITLE, DEPARTMENT_ID) VALUES (209,'it dev',509);


insert into PROJECTS (PROJECT_ID, PROJECT_NAME, START_DATE, END_DATE) VALUES (300,'google hr',TO_DATE('2024-04-04','YYYY-MM-DD'),TO_DATE('2024-12-12','YYYY-MM-DD'));
insert into PROJECTS (PROJECT_ID, PROJECT_NAME, START_DATE, END_DATE) VALUES (301,'google hr',TO_DATE('2024-04-04','YYYY-MM-DD'),TO_DATE('2024-12-12','YYYY-MM-DD'));
insert into PROJECTS (PROJECT_ID, PROJECT_NAME, START_DATE, END_DATE) VALUES (302,'google hr',TO_DATE('2024-04-04','YYYY-MM-DD'),TO_DATE('2024-12-12','YYYY-MM-DD'));
insert into PROJECTS (PROJECT_ID, PROJECT_NAME, START_DATE, END_DATE) VALUES (303,'google hr',TO_DATE('2024-04-04','YYYY-MM-DD'),TO_DATE('2026-12-12','YYYY-MM-DD'));
insert into PROJECTS (PROJECT_ID, PROJECT_NAME, START_DATE, END_DATE) VALUES (304,'google hr',TO_DATE('2024-04-04','YYYY-MM-DD'),TO_DATE('2024-12-12','YYYY-MM-DD'));
insert into PROJECTS (PROJECT_ID, PROJECT_NAME, START_DATE, END_DATE) VALUES (305,'google hr',TO_DATE('2024-04-04','YYYY-MM-DD'),TO_DATE('2025-12-12','YYYY-MM-DD'));
insert into PROJECTS (PROJECT_ID, PROJECT_NAME, START_DATE, END_DATE) VALUES (306,'google hr',TO_DATE('2024-04-04','YYYY-MM-DD'),TO_DATE('2025-12-12','YYYY-MM-DD'));
insert into PROJECTS (PROJECT_ID, PROJECT_NAME, START_DATE, END_DATE) VALUES (307,'google hr',TO_DATE('2024-04-04','YYYY-MM-DD'),TO_DATE('2024-12-12','YYYY-MM-DD'));
insert into PROJECTS (PROJECT_ID, PROJECT_NAME, START_DATE, END_DATE) VALUES (308,'google hr',TO_DATE('2024-04-04','YYYY-MM-DD'),TO_DATE('2024-12-12','YYYY-MM-DD'));
insert into PROJECTS (PROJECT_ID, PROJECT_NAME, START_DATE, END_DATE) VALUES (309,'google hr',TO_DATE('2024-04-04','YYYY-MM-DD'),TO_DATE('2024-12-12','YYYY-MM-DD'));

insert into ASSIGNMENTS (ASSIGNMENT_ID, EMPLOYEE_ID, PROJECT_ID, POSITION_ID, ASSIGNMENT_START_DATE, ASSIGNMENT_END_DATE) VALUES (400,100,300,200,TO_DATE('2024-04-04','YYYY-MM-DD'),TO_DATE('2025-12-12','YYYY-MM-DD'));
insert into ASSIGNMENTS (ASSIGNMENT_ID, EMPLOYEE_ID, PROJECT_ID, POSITION_ID, ASSIGNMENT_START_DATE, ASSIGNMENT_END_DATE) VALUES (401,101,301,201,TO_DATE('2024-04-04','YYYY-MM-DD'),TO_DATE('2024-12-12','YYYY-MM-DD'));
insert into ASSIGNMENTS (ASSIGNMENT_ID, EMPLOYEE_ID, PROJECT_ID, POSITION_ID, ASSIGNMENT_START_DATE, ASSIGNMENT_END_DATE) VALUES (402,102,302,202,TO_DATE('2024-04-04','YYYY-MM-DD'),TO_DATE('2024-12-12','YYYY-MM-DD'));
insert into ASSIGNMENTS (ASSIGNMENT_ID, EMPLOYEE_ID, PROJECT_ID, POSITION_ID, ASSIGNMENT_START_DATE, ASSIGNMENT_END_DATE) VALUES (403,103,303,203,TO_DATE('2024-04-04','YYYY-MM-DD'),TO_DATE('2024-12-12','YYYY-MM-DD'));
insert into ASSIGNMENTS (ASSIGNMENT_ID, EMPLOYEE_ID, PROJECT_ID, POSITION_ID, ASSIGNMENT_START_DATE, ASSIGNMENT_END_DATE) VALUES (404,104,304,204,TO_DATE('2024-04-04','YYYY-MM-DD'),TO_DATE('2024-12-12','YYYY-MM-DD'));
insert into ASSIGNMENTS (ASSIGNMENT_ID, EMPLOYEE_ID, PROJECT_ID, POSITION_ID, ASSIGNMENT_START_DATE, ASSIGNMENT_END_DATE) VALUES (405,105,305,205,TO_DATE('2024-04-04','YYYY-MM-DD'),TO_DATE('2024-12-12','YYYY-MM-DD'));
insert into ASSIGNMENTS (ASSIGNMENT_ID, EMPLOYEE_ID, PROJECT_ID, POSITION_ID, ASSIGNMENT_START_DATE, ASSIGNMENT_END_DATE) VALUES (406,106,306,206,TO_DATE('2024-04-04','YYYY-MM-DD'),TO_DATE('2024-12-12','YYYY-MM-DD'));
insert into ASSIGNMENTS (ASSIGNMENT_ID, EMPLOYEE_ID, PROJECT_ID, POSITION_ID, ASSIGNMENT_START_DATE, ASSIGNMENT_END_DATE) VALUES (407,107,307,207,TO_DATE('2024-04-04','YYYY-MM-DD'),TO_DATE('2024-12-12','YYYY-MM-DD'));
insert into ASSIGNMENTS (ASSIGNMENT_ID, EMPLOYEE_ID, PROJECT_ID, POSITION_ID, ASSIGNMENT_START_DATE, ASSIGNMENT_END_DATE) VALUES (408,108,308,208,TO_DATE('2024-04-04','YYYY-MM-DD'),TO_DATE('2030-12-12','YYYY-MM-DD'));
insert into ASSIGNMENTS (ASSIGNMENT_ID, EMPLOYEE_ID, PROJECT_ID, POSITION_ID, ASSIGNMENT_START_DATE, ASSIGNMENT_END_DATE) VALUES (409,109,309,209,TO_DATE('2024-04-04','YYYY-MM-DD'),TO_DATE('2028-12-12','YYYY-MM-DD'));


insert into DEPARTMENTS(DEPARTMENT_ID, DEPARTMENT_NAME) VALUES (500,'douran-hr');
insert into DEPARTMENTS(DEPARTMENT_ID, DEPARTMENT_NAME) VALUES (501,'douran-hr');
insert into DEPARTMENTS(DEPARTMENT_ID, DEPARTMENT_NAME) VALUES (502,'douran-hr');
insert into DEPARTMENTS(DEPARTMENT_ID, DEPARTMENT_NAME) VALUES (503,'douran-hr');
insert into DEPARTMENTS(DEPARTMENT_ID, DEPARTMENT_NAME) VALUES (504,'douran-hr');
insert into DEPARTMENTS(DEPARTMENT_ID, DEPARTMENT_NAME) VALUES (505,'douran-hr');
insert into DEPARTMENTS(DEPARTMENT_ID, DEPARTMENT_NAME) VALUES (506,'douran-hr');
insert into DEPARTMENTS(DEPARTMENT_ID, DEPARTMENT_NAME) VALUES (507,'douran-hr');
insert into DEPARTMENTS(DEPARTMENT_ID, DEPARTMENT_NAME) VALUES (508,'douran-hr');
insert into DEPARTMENTS(DEPARTMENT_ID, DEPARTMENT_NAME) VALUES (509,'douran-hr');



SELECT
    emp.EMPLOYEE_ID ,
    emp.FIRST_NAME || ' ' || emp.LAST_NAME as FUll_NAME,
    dept.DEPARTMENT_NAME,
    pos.POSITION_TITLE,
    proj.PROJECT_NAME,
    ass.ASSIGNMENT_START_DATE,
    ass.ASSIGNMENT_END_DATE



FROM EMPLOYEES_HR emp

         inner join
     DEPARTMENTS dept
     on emp.EMPLOYEE_ID = dept.DEPARTMENT_ID
         left join
     POSITIONS pos
     on
         emp.DEPARTMENT_ID = pos.DEPARTMENT_ID

         left join
     ASSIGNMENTS ass
     on emp.EMPLOYEE_ID = ass.EMPLOYEE_ID

         left join
     PROJECTS proj
     on ass.PROJECT_ID = proj.PROJECT_ID
where (ass.ASSIGNMENT_END_DATE is not null  or ass.ASSIGNMENT_END_DATE > SYSDATE);

