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