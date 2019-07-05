1

mysql> select pays.nom, fabrique.nom from pays left join fabrique on pays.id = fabrique.id_pays;
+---------+---------------+
| nom     | nom           |
+---------+---------------+
| Senegal | Simplon_Dakar |
| Maroc   | Simplon_Rabat |
+---------+---------------+
2 rows in set (0.07 sec)


2

mysql> select nom from fabrique where ville = 'Dakar';
+---------------+
| nom           |
+---------------+
| Simplon_Dakar |
+---------------+
1 row in set (0.04 sec)


3

mysql> select pays.nom from pays left join fabrique on fabrique.id_pays>=2;
+---------+
| nom     |
+---------+
| Senegal |
| Maroc   |
+---------+
2 rows in set (0.48 sec)


4

mysql> select cohorte.nombre_apprenant, fabrique.nom from cohorte left join fabrique on cohorte.id = fabrique.id;
+------------------+---------------+
| nombre_apprenant | nom           |
+------------------+---------------+
|               26 | Simplon_Dakar |
|               26 | Simplon_Rabat |
+------------------+---------------+
2 rows in set (0.03 sec)


5

mysql> select referentiel.nom_ref, fabrique.nom from referentiel left join fabrique on fabrique.id = referentiel.id;
+------------------+---------------+
| nom_ref          | nom           |
+------------------+---------------+
| referent_digital | Simplon_Dakar |
| referent_digital | Simplon_Rabat |
+------------------+---------------+
2 rows in set (0.00 sec)


6

mysql> select nom, prenom from apprenant left join contrat on apprenant.id = contrat.id;
+-------+---------+
| nom   | prenom  |
+-------+---------+
| Fall  | Robert  |
| Ndong | Raphael |
+-------+---------+
2 rows in set (0.10 sec)


7

mysql> alter table cohorte add ouverte boolean;
Query OK, 0 rows affected (1.25 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc cohorte;
+------------------+------------+------+-----+---------+----------------+
| Field            | Type       | Null | Key | Default | Extra          |
+------------------+------------+------+-----+---------+----------------+
| id               | int(11)    | NO   | PRI | NULL    | auto_increment |
| date_debut       | date       | NO   |     | NULL    |                |
| date_fin         | date       | NO   |     | NULL    |                |
| nombre_apprenant | int(11)    | NO   |     | NULL    |                |
| ouverte          | tinyint(1) | YES  |     | NULL    |                |
+------------------+------------+------+-----+---------+----------------+
5 rows in set (0.05 sec)


8

mysql> desc apprenant;
+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| id             | int(11)     | NO   | PRI | NULL    | auto_increment |
| nom            | varchar(45) | NO   |     | NULL    |                |
| prenom         | varchar(45) | NO   |     | NULL    |                |
| statut         | varchar(45) | NO   |     | NULL    |                |
| date_naissance | date        | NO   |     | NULL    |                |
| sexe           | tinyint(1)  | NO   |     | NULL    |                |
| email          | varchar(45) | NO   |     | NULL    |                |
| tel            | int(11)     | NO   |     | NULL    |                |
| id_referentiel | int(11)     | NO   | MUL | NULL    |                |
| id_cohorte     | int(11)     | NO   | MUL | NULL    |                |
| id_fabrique    | int(11)     | NO   | MUL | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+
11 rows in set (0.04 sec)

mysql> alter table apprenant modify sexe char(1);
Query OK, 2 rows affected (4.09 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> desc apprenant;
+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| id             | int(11)     | NO   | PRI | NULL    | auto_increment |
| nom            | varchar(45) | NO   |     | NULL    |                |
| prenom         | varchar(45) | NO   |     | NULL    |                |
| statut         | varchar(45) | NO   |     | NULL    |                |
| date_naissance | date        | NO   |     | NULL    |                |
| sexe           | char(1)     | YES  |     | NULL    |                |
| email          | varchar(45) | NO   |     | NULL    |                |
| tel            | int(11)     | NO   |     | NULL    |                |
| id_referentiel | int(11)     | NO   | MUL | NULL    |                |
| id_cohorte     | int(11)     | NO   | MUL | NULL    |                |
| id_fabrique    | int(11)     | NO   | MUL | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+
11 rows in set (0.04 sec)

