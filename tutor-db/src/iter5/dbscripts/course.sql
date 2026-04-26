/* 테이블이 존재하면 삭제한다 */
drop table if exists ezy_course_c5;
/* 테이블을 생성한다 */
/* 노트: 마지막 필드 뒤에 콤마를 입력해서는 안 된다. */
create table ezy_course_c5
(
	course_id serial primary key,
	tutor_id INT not null,
	course_name varchar(140) not null,
	posted_time TIMESTAMP default now()
);

/* 테스트를 위한 시드 데이터를 로드한다. */
insert into ezy_course_c5
	(course_id, tutor_id, course_name, posted_time)
values (1, 1, 'First course', '2021-03-17 05:40:00');
insert into ezy_course_c5
	(course_id, tutor_id, course_name, posted_time)
values (2, 1, 'Second course', '2021-03-18 05:45:00');

/* 테이블이 존재한다면 삭제한다 */

drop table if exists ezy_course_c6;

/* 테이블을 생성한다 */
/* 주의: 마지막필드 뒤에 쉼표를 넣지 말자. */

create table ezy_course_c6
(
	course_id serial primary key,
	tutor_id INT not null,
	course_name varchar(140) not null,
	course_description varchar(2000),
	course_format varchar(30),
	course_structure varchar(200),
	course_duration varchar(30),
	course_price INT,
	course_language varchar(30),
	course_level varchar(30),
	posted_time TIMESTAMP default now()
);
