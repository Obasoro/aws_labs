```
create table person 
(person_id SMALLINT UNSIGNED, fname varchar(20), 
lname varchar(20), 
eye_colour enum('BR', 'BL', 'GR'), 
birth_date DATE, street varchar(30), c
ity varchar(20), state varchar(20), 
country varchar(20), 
postal_code varchar(20), 
Constraint pk_person PRIMARY KEY (person_id)
);```

```desc person```
+-------------+----------------------+------+-----+---------+-------+
| Field       | Type                 | Null | Key | Default | Extra |
+-------------+----------------------+------+-----+---------+-------+
| person_id   | smallint unsigned    | NO   | PRI | NULL    |       |
| fname       | varchar(20)          | YES  |     | NULL    |       |
| lname       | varchar(20)          | YES  |     | NULL    |       |
| eye_colour  | enum('BR','BL','GR') | YES  |     | NULL    |       |
| birth_date  | date                 | YES  |     | NULL    |       |
| street      | varchar(30)          | YES  |     | NULL    |       |
| city        | varchar(20)          | YES  |     | NULL    |       |
| state       | varchar(20)          | YES  |     | NULL    |       |
| country     | varchar(20)          | YES  |     | NULL    |       |
| postal_code | varchar(20)          | YES  |     | NULL    |       |
+-------------+----------------------+------+-----+---------+-------+

```
create table favourite_food 
(person_id smallint unsigned, 
food varchar(20), 
constraint fk_fav_food_person_id primary key (person_id, food), 
constraint pk_fav_food_person_id foreign key (person_id)
    references person (person_id)
    );

```desc favourite_food```

+-----------+-------------------+------+-----+---------+-------+
| Field     | Type              | Null | Key | Default | Extra |
+-----------+-------------------+------+-----+---------+-------+
| person_id | smallint unsigned | NO   | PRI | NULL    |       |
| food      | varchar(20)       | NO   | PRI | NULL    |       |
+-----------+-------------------+------+-----+---------+-------+


### Populating and Modifying Tables
With the person and favorite_food tables in place, you can
now begin to explore the four SQL data statements: 
 [-] insert
 [-] update 
 [-] delete 
 [-] select.

Inserting Data

### 
```alter table person modify person_id smallint unsigned auto_increment;```

+-------------+----------------------+------+-----+---------+----------------+
| Field       | Type                 | Null | Key | Default | Extra          |
+-------------+----------------------+------+-----+---------+----------------+
| person_id   | smallint unsigned    | NO   | PRI | NULL    | auto_increment |
| fname       | varchar(20)          | YES  |     | NULL    |                |
| lname       | varchar(20)          | YES  |     | NULL    |                |
| eye_colour  | enum('BR','BL','GR') | YES  |     | NULL    |                |
| birth_date  | date                 | YES  |     | NULL    |                |
| street      | varchar(30)          | YES  |     | NULL    |                |
| city        | varchar(20)          | YES  |     | NULL    |                |
| state       | varchar(20)          | YES  |     | NULL    |                |
| country     | varchar(20)          | YES  |     | NULL    |                |
| postal_code | varchar(20)          | YES  |     | NULL    |                |
+-------------+----------------------+------+-----+---------+----------------+

### Insert

```insert into person 
(person_id, fname, lname, eye_colour, birth_date) 
values (null, 'william', 'Turner', 'BR', '1983-05-24');```

```
```
select person_id, fname, lname, birth_date from person;

```
+-----------+---------+--------+------------+
| person_id | fname   | lname  | birth_date |
+-----------+---------+--------+------------+
|         1 | william | Turner | 1983-05-24 |
+-----------+---------+--------+------------+

### Continue

```
insert into favourite_food (person_id, food)
    -> values (1, 'pizza');


insert into favourite_food (person_id, food) values (1, 'cookies');


insert into favourite_food (person_id, food) values (1, 'nachos');

```
```
mysql> select food from favourite_food where person_id = 1 order by food;
```

+---------+
| food    |
+---------+
| cookies |
| nachos  |
| pizza   |
+---------+

```
insert into person
  (person_id, fname, lname, eye_colour, birth_date, street, city, state, country, postal_code)
  values (null, 'obasoro', 'Olakunle', 'BR', '1985-10-30', 'Road9B, Lekki Garden Estate', 'Lagos Island', 'Lagos State', 'Nigeria', '100001');
```

```
select from person_id, fname, lname, birth_date from person;

```
+-----------+---------+----------+------------+
| person_id | fname   | lname    | birth_date |
+-----------+---------+----------+------------+
|         1 | william | Turner   | 1983-05-24 |
|         2 | obasoro | Olakunle | 1985-10-30 |
+-----------+---------+----------+------------+