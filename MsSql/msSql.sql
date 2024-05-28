

CREATE TABLE directions (

id INT IDENTITY ,

name VARCHAR(255) NOT NULL,

PRIMARY KEY(id)

);

CREATE TABLE groups (

id INT IDENTITY,

name VARCHAR(255) NOT NULL,

dir_id INT,

PRIMARY KEY(id),

FOREIGN KEY(dir_id) REFERENCES directions (id)

);

CREATE TABLE students (

id INT IDENTITY,

name VARCHAR(255) NOT NULL,

birth date not NULL,

addres VARCHAR(255),

email VARCHAR(255),

group_id INT,

budget Bit,

PRIMARY KEY(id),

FOREIGN KEY(group_id) REFERENCES groups (id)

);

CREATE TABLE  phone (

id INT IDENTITY,

student_id INT,

number VARCHAR(255) NOT NULL,

PRIMARY KEY(id),

FOREIGN KEY(student_id) REFERENCES students (id)

);

CREATE TABLE  subjects (

id INT IDENTITY,

name VARCHAR(255) NOT NULL,

PRIMARY KEY(id)

);

CREATE TABLE  teachers (

id INT IDENTITY,

name VARCHAR(255) NOT NULL,

PRIMARY KEY(id)

);

CREATE TABLE teachers_dirs_subjects (

id INT IDENTITY,

subject_id INT,

teacher_id INT,

direction_id INT,

PRIMARY KEY(id),

FOREIGN KEY(subject_id) REFERENCES subjects (id),

FOREIGN KEY(direction_id) REFERENCES directions (id),

FOREIGN KEY(teacher_id) REFERENCES teachers (id)

);

CREATE TABLE time_pair (

id INT IDENTITY,

start_pair TIME,

end_pair TIME,

PRIMARY KEY(id)

);

CREATE TABLE marks (

id int NOT NULL IDENTITY,

student_id int DEFAULT NULL,

subj_teacher_id int DEFAULT NULL,

mark int DEFAULT NULL,

PRIMARY KEY (id),


CONSTRAINT marks_ibfk_1 FOREIGN KEY (student_id) REFERENCES students (id),

CONSTRAINT marks_ibfk_2 FOREIGN KEY (subj_teacher_id) REFERENCES teachers_dirs_subjects (id)

);

CREATE TABLE lessons_schedule (

id int NOT NULL IDENTITY,

subj_teacher_id int DEFAULT NULL,

number_pair int DEFAULT NULL,

date date DEFAULT NULL,

PRIMARY KEY (id),


CONSTRAINT lessons_schedule_ibfk_1 FOREIGN KEY (subj_teacher_id) REFERENCES teachers_dirs_subjects (id),

CONSTRAINT lessons_schedule_ibfk_2 FOREIGN KEY (number_pair) REFERENCES time_pair (id)

);

CREATE TABLE attendence (

id int NOT NULL IDENTITY,

schedule_id int DEFAULT NULL,

student_id int DEFAULT NULL,

presense bit DEFAULT NULL,

PRIMARY KEY (id),



CONSTRAINT attendence_ibfk_1 FOREIGN KEY (schedule_id) REFERENCES lessons_schedule (id),

CONSTRAINT attendence_ibfk_2 FOREIGN KEY (student_id) REFERENCES students (id)

);

INSERT INTO directions (name) VALUES ('economy');

INSERT INTO directions (name) VALUES ('management');

INSERT INTO directions (name) VALUES ('information systems and technologies');

INSERT into groups (name, dir_id) VALUES('E1', 1);

INSERT into groups (name, dir_id) VALUES('E2', 1);

INSERT into groups (name, dir_id) VALUES('E3', 1);

INSERT into groups (name, dir_id) VALUES('M1', 2);

INSERT into groups (name, dir_id) VALUES('M2', 2);

INSERT into groups (name, dir_id) VALUES('M3', 2);

INSERT into groups (name, dir_id) VALUES('I1', 3);

INSERT into groups (name, dir_id) VALUES('I2', 3);

INSERT into groups (name, dir_id) VALUES('I3', 3);





INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Koshelev Gleb Fyodorovich', '2003-05-23', 'Smolenskaya oblast gorod Solnechnogorsk, shosse Slavy, 77','rettoufifette-3213@yopmail.com', 1, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Ovsyannikov Oleg Viktorovich', '2000-01-31', 'Novgorodskaya oblast gorod Krasnogorsk, v"ezd Balkanskaya, 70','kagrolloukautreu-9274@yopmail.com', 1, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('CHernysheva Sofya Mihajlovna', '2000-11-16', 'Vladimirskaya oblast gorod Dorohovo, ul. Gogolya, 64','zahoiquaqueike-6390@yopmail.com', 1, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Stepanov Nikolaj Denisovich', '2000-02-10', 'Kurganskaya oblast gorod Luhovicy, nab. Lenina, 54','naudofrafremi-5006@yopmail.com', 1, 0);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Bogdanov Maksim Daniilovich', '2000-04-09', ' Kurskaya oblast gorod Taldom, per. CHekhova, 52','vefrocippodoi-8850@yopmail.com', 1, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('SHCHeglova Aleksandra Andreevna', '2001-02-08', 'Ulyanovskaya oblast gorod Lotoshino, shosse Kosiora, 21','guyoratuppoi-1819@yopmail.com', 1, 0);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Efimova Taisiya Georgievna', '2003-08-29', 'Murmanskaya oblast gorod Egorevsk, pl. Gogolya, 70','vauragreuruye-2851@yopmail.com', 1, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Zaharov Artyom Pavlovich', '2002-07-14', 'Ryazanskaya oblast gorod Dmitrov, shosse Slavy, 84','rettoufifette-3213@yopmail.com', 2, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Akimov Miron Ivanovich', '2004-04-21', 'CHitinskaya oblast gorod Pushkino, pl. Lenina, 31','texezoupeuleu-3695@yopmail.com', 2, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Kasyanova Milana Aleksandrovna', '2001-12-28', 'Sverdlovskaya oblast gorod Mozhajsk, pr. Domodedovskaya, 87','lironnivusso-7755@yopmail.com', 2, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Andreeva Taisiya Daniilovna', '2002-09-14', 'Orenburgskaya oblast gorod Zarajsk, shosse CHekhova, 58','kiffoihappauye-2193@yopmail.com', 2, 0);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Naumov Mark Nikitich', '2004-08-07', 'Tulskaya oblast gorod Naro-Fominsk, per. Lenina, 61','brauzapojafoi-6310@yopmail.com', 2, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('SHilov Dmitrij Kirillovich', '2002-03-22', 'Tulskaya oblast gorod Istra, pl. Buharestskaya, 18','naurobeutreipu-1414@yopmail.com', 2, 0);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Markov Ivan Matveevich', '2001-01-11', ' Samarskaya oblast gorod Mytishchi, shosse Slavy, 71','sabasummapra-6033@yopmail.com', 2, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Pugachev Platon Mironovich', '2001-08-20', 'Lipeckaya oblast gorod Lotoshino, bulvar 1905 goda, 83','bapeveixallu-5053@yopmail.com', 3, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Aleksandrov Ivan Bogdanovich', '2002-01-13', 'Volgogradskaya oblast gorod CHekhov, pl. CHekhova, 25','neibreisauranou-8516@yopmail.com', 3, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Volkov Semyon Zaharovich', '1998-08-24', 'Novgorodskaya oblast gorod Krasnogorsk, bulvar Budapeshtstkaya, 58','weulezauffave-3199@yopmail.com', 3, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Muravev Lev Vyacheslavovich', '1999-05-24', 'Voronezhskaya oblast gorod Mozhajsk, shosse Gogolya, 47','japrazimuyi-1421@yopmail.com', 3, 0);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Borodin Roman Egorovich', '2001-08-01', 'Astrahanskaya oblast gorod Ozyory, pl. Lomonosova, 89','jousottoudoizau-3682@yopmail.com', 3, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Vinogradov Maksim Artyomovich', '1999-05-03', 'Pskovskaya oblast gorod Kolomna, shosse Ladygina, 45','tagojeuquitreu-4910@yopmail.com', 3, 0);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Vasileva Anna Denisovna', '2003-12-05', 'Kemerovskaya oblast gorod Ramenskoe, pl. Buharestskaya, 89','vetrigraweva-5606@yopmail.com', 3, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Egorov Dmitrij Dmitrievich', '2004-10-26', 'CHitinskaya oblast gorod Taldom, bulvar Balkanskaya, 31','fuffoipegaxoi-8137@yopmail.com', 4, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Konovalova Vera Ivanovna', '1999-04-19', 'Vladimirskaya oblast gorod Pushkino, pl. Buharestskaya, 58','fonnouneraudda-5626@yopmail.com', 4, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Kuznecov Roman Ivanovich', '2002-09-27', 'Kurganskaya oblast gorod Naro-Fominsk, per. Kosmonavtov, 12','gotopreyoivou-2467@yopmail.com', 4, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Kozhevnikova Viktoriya Andreevna', '1998-09-18', 'Sahalinskaya oblast gorod SHahovskaya, shosse Ladygina, 08','tounnaucifrewa-3340@yopmail.com', 4, 0);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Snegirev Aleksandr Evgenevich', '2001-01-25', 'Tyumenskaya oblast gorod Orekhovo-Zuevo, ul. Ladygina, 66','peimmeujissita-5198@yopmail.com', 4, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Klyueva Margarita Mironovna', '1998-10-02', 'CHelyabinskaya oblast gorod Zarajsk, pr. Lenina, 18','deimabollegru-2127@yopmail.com', 4, 0);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Mihajlov Artyom Danielevich', '2002-02-07', 'Astrahanskaya oblast gorod Vidnoe, per. Lomonosova, 88','wouffagevaci-3221@yopmail.com', 4, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Stepanova Anna Mihajlovna', '1998-04-30', 'Sahalinskaya oblast gorod Balashiha, v"ezd CHekhova, 89','frogoifririze-1531@yopmail.com', 5, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Kravcov Lev Daniilovich', '2000-09-18', 'Leningradskaya oblast gorod SHCHyolkovo, per. Budapeshtstkaya, 57','baummajupalle-2401@yopmail.com', 5, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Kuznecova Anna YUrevna', '2000-08-03', 'Kurskaya oblast gorod Dmitrov, per. Domodedovskaya, 89','vaxiyacoudu-4776@yopmail.com', 5, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Sedov Grigorij Pavlovich', '2004-03-02', 'Volgogradskaya oblast gorod SHCHyolkovo, pr. Kosmonavtov, 71','quatroicedaya-1889@yopmail.com', 5, 0);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Mironov Mihail Ilich', '2000-12-21', 'Kostromskaya oblast gorod Istra, per. Gogolya, 29','grefauceummeupo-9261@yopmail.com', 5, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Zubova Alina Mihajlovna', '2001-11-30', 'Kaluzhskaya oblast gorod Kolomna, spusk Slavy, 66','gucrusuttipre-6224@yopmail.com', 5, 0);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('SHaposhnikova Viktoriya Daniilovna', '1998-04-22', 'Penzenskaya oblast gorod SHatura, v"ezd Domodedovskaya, 49','kebreddeuriso-1944@yopmail.com', 5, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Kuznecov Grigorij Savvich', '2000-06-23', 'Tomskaya oblast gorod Klin, nab. Kosiora, 71','mofumaurucru-6730@yopmail.com', 6, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Ivanova Alisa Kirillovna', '2003-08-26', 'Arhangelskaya oblast gorod Dmitrov, per. Gagarina, 19','keummoutaujefa-4500@yopmail.com', 6, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Kostin Lev Andreevich', '2002-10-22', 'Orenburgskaya oblast gorod Klin, bulvar Ladygina, 47','cruquoyeiddesu-3718@yopmail.com', 6, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Fedorova Polina Alekseevna', '2004-07-23', 'Tyumenskaya oblast gorod Voskresensk, bulvar Buharestskaya, 88','fropewixeso-2785@yopmail.com', 6, 0);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Sokolova Anna Romanovna', '2003-11-18', 'Lipeckaya oblast gorod Sergiev Posad, shosse Gogolya, 29','xisoivenoiheu-9690@yopmail.com', 6, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Grishina Valeriya Mihajlovna', '2003-11-26', 'Ryazanskaya oblast gorod Kolomna, pl. Kosmonavtov, 18','nelisanoibra-5431@yopmail.com', 6, 0);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Stepanova Viktoriya Egorovna', '2003-11-13', 'Samarskaya oblast gorod Istra, spusk Gagarina, 07','prillilleippofo-5906@yopmail.com', 6, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Grigoreva Miroslava Andreevna', '1998-04-16', 'Tyumenskaya oblast gorod Pavlovskij Posad, pl. Lenina, 13','lauxagrexabeu-8526@yopmail.com', 7, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Kuznecova Adelina Lvovna', '1999-08-17', 'Tambovskaya oblast gorod Lyubercy, v"ezd Stalina, 74','kereutrafoyi-3467@yopmail.com', 7, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Savelev Artyom Aleksandrovich', '2001-11-06', 'Saratovskaya oblast gorod Kolomna, pl. Stalina, 35','joppoubravoulo-7430@yopmail.com', 7, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Belyakova Ameliya Artyomovna', '1998-09-07', 'Vologodskaya oblast gorod Luhovicy, ul. Slavy, 07','xalaugrosseiju-1070@yopmail.com', 7, 0);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Panina Darya Vladimirovna', '1998-07-23', 'Saratovskaya oblast gorod Zarajsk, spusk Lenina, 40','weimmafomayo-2422@yopmail.com', 7, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Antonova Karolina Ivanovna', '2003-09-19', 'Novgorodskaya oblast gorod Domodedovo, shosse Lomonosova, 74','garafraumazu-7994@yopmail.com', 7, 0);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Pokrovskaya Eva Mihajlovna', '1999-09-22', 'Moskovskaya oblast gorod Podolsk, nab. Lomonosova, 64','yubreubradonnu-6526@yopmail.com', 7, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Kuznecova Ekaterina Artyomovna', '2003-01-24', 'Amurskaya oblast gorod Moskva, ul. Stalina, 84','gimeppiquebro-4065@yopmail.com', 8, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Grigorev Elisej Mironovich', '2002-08-03', 'Samarskaya oblast gorod Volokolamsk, pr. Ladygina, 36','brocrattocigou-4077@yopmail.com', 8, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Vysockaya Mariya Romanovna', '2003-09-03', 'Sahalinskaya oblast gorod Sergiev Posad, per. Kosiora, 81','kettowoicreigei-2864@yopmail.com', 8, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Spiridonova Evgeniya Maksimovna', '2002-08-11', 'Vladimirskaya oblast gorod Volokolamsk, spusk 1905 goda, 17','tequehoixourou-7075@yopmail.com', 8, 0);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Novikova Darya Denisovna', '2002-09-06', 'Tyumenskaya oblast gorod Noginsk, per. Stalina, 32','noiprulalleye-2601@yopmail.com', 8, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Kuznecova Viktoriya Matveevna', '2002-06-15', 'Rostovskaya oblast gorod Zarajsk, bulvar Gogolya, 88','pidiprolella-6241@yopmail.com', 8, 0);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Soboleva Mariya Olegovna', '2004-12-28', 'Ulyanovskaya oblast gorod Orekhovo-Zuevo, spusk CHekhova, 43','japattouteucou-4005@yopmail.com', 8, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Gavrilov Andrej Eminovich', '2002-12-08', 'Kurskaya oblast gorod Egorevsk, pl. Balkanskaya, 17','nuguproupropru-1400@yopmail.com', 9, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Bessonova Angelina Daniilovna', '2002-01-28', 'Tulskaya oblast gorod Orekhovo-Zuevo, shosse Balkanskaya, 33','graucevujetu-8552@yopmail.com', 9, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Korovina Milana Stepanovna', '2001-02-25', 'Murmanskaya oblast gorod Vidnoe, pl. Budapeshtstkaya, 70','fauleufossaupre-8358@yopmail.com', 9, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Osipova Mariya Sergeevna', '2001-09-23', 'Ulyanovskaya oblast gorod Serebryanye Prudy, pl. Lomonosova, 95','nusseusseupauza-5855@yopmail.com', 9, 0);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Orlova Stefaniya Artyomovna', '2003-03-13', 'Irkutskaya oblast gorod Stupino, ul. Kosmonavtov, 01','creippaubrassinno-5151@yopmail.com', 9, 1);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Sokolov Stepan Egorovich', '2001-03-01', 'CHelyabinskaya oblast gorod Sergiev Posad, spusk Ladygina, 99','traboppafrobroi-3400@yopmail.com', 9, 0);

INSERT INTO students (name, birth, addres, email, group_id, budget) VALUES ('Isaev Maksim Timurovich', '2004-11-17', 'Astrahanskaya oblast gorod Stupino, pr. Kosiora, 57','beubocuweisa-4289@yopmail.com', 9, 1);




INSERT into subjects (name) VALUES ('computer networks');

INSERT into subjects (name) VALUES ('mathematics');

INSERT into subjects (name) VALUES ('programming');

INSERT into subjects (name) VALUES ('economics');

INSERT into subjects (name) VALUES ('philosophy');

INSERT into subjects (name) VALUES ('management');

INSERT into subjects (name) VALUES ('sociology');

INSERT into subjects (name) VALUES ('history');

INSERT into teachers (name) VALUES ('Grishin Platon Nikolaevich');

INSERT into teachers (name) VALUES ('Kuznetsova Eva Daniilovna');

INSERT into teachers (name) VALUES ('Ignatov Ilya Alexandrovich');

INSERT into teachers (name) VALUES ('Emma Viktorovna Shuvalova');

INSERT into teachers (name) VALUES ('Kuznetsova Eva Daniilovna');

INSERT into teachers (name) VALUES ('Nikita Semyonovich Komarov');

INSERT into teachers (name) VALUES ('Yakovlev Mark Artemovich');

INSERT into teachers (name) VALUES ('Queen Olesya Fyodorovna');

INSERT into teachers (name) VALUES ('Gavrilova Milana Vladimirovna');


INSERT into teachers_dirs_subjects (subject_id, teacher_id, direction_id) VALUES (1, 1, 3);

INSERT into teachers_dirs_subjects (subject_id, teacher_id, direction_id) VALUES (2, 2, 3);

INSERT into teachers_dirs_subjects (subject_id, teacher_id, direction_id) VALUES (3, 3, 3);

INSERT into teachers_dirs_subjects (subject_id, teacher_id, direction_id) VALUES (4, 4, 1);

INSERT into teachers_dirs_subjects (subject_id, teacher_id, direction_id) VALUES (5, 6, 1);

INSERT into teachers_dirs_subjects (subject_id, teacher_id, direction_id) VALUES (6, 7, 2);

INSERT into teachers_dirs_subjects (subject_id, teacher_id, direction_id) VALUES (7, 8, 2);

INSERT into teachers_dirs_subjects (subject_id, teacher_id, direction_id) VALUES (8, 9, 2);


INSERT into time_pair (start_pair, end_pair) VALUES ('08:00:00', '09:30:00');

INSERT into time_pair (start_pair, end_pair) VALUES ('09:40:00', '11:20:00');

INSERT into time_pair (start_pair, end_pair) VALUES ('11:25:00', '12:55:00');

INSERT into time_pair (start_pair, end_pair) VALUES ('15:05:00', '16:35:00');

INSERT into time_pair (start_pair, end_pair) VALUES ('16:50:00', '18:20:00');

INSERT into time_pair (start_pair, end_pair) VALUES ('18:30:00', '20:00:00');

INSERT into time_pair (start_pair, end_pair) VALUES ('20:05:00', '21:35:00');




INSERT INTO marks (student_id, subj_teacher_id, mark) VALUES

(1, 1, 2),

(1, 2, 4),

(1, 3, 4),

(2, 1, 4),

(2, 2, 2),

(2, 3, 4),

(3, 1, 4),

(3, 2, 5),

(3, 3, 3),

(4, 1, 5),

(4, 2, 4),

(4, 3, 3),

(5, 1, 5),

(5, 2, 2),

(5, 3, 2),

(6, 1, 5),

(6, 2, 2),

(6, 3, 3),

(7, 1, 3),

(7, 2, 5),

(7, 3, 5),

(8, 1, 5),

(8, 2, 5),

(8, 3, 2),

(9, 1, 4),

(9, 2, 3),

(9, 3, 4),

(10, 1, 4),

(10, 2, 4),

(10, 3, 5),

(11, 1, 4),

(11, 2, 4),

(11, 3, 2),

(12, 1, 2),

(12, 2, 4),

(12, 3, 2),

(13, 1, 4),

(13, 2, 5),

(13, 3, 3),

(14, 1, 2),

(14, 2, 2),

(14, 3, 2),

(15, 1, 5),

(15, 2, 3),

(15, 3, 4),

(16, 1, 4),

(16, 2, 2),

(16, 3, 3),

(17, 1, 4),

(17, 2, 5),

(17, 3, 2),

(18, 1, 2),

(18, 2, 3),

(18, 3, 3),

(19, 1, 3),

(19, 2, 4),

(19, 3, 4),

(20, 1, 5),

(20, 2, 3),

(20, 3, 4);

INSERT INTO marks (student_id, subj_teacher_id, mark) VALUES

(22, 4, 5),

(22, 2, 2),

(22, 5, 5),

(23, 4, 2),

(23, 2, 5),

(23, 5, 2),

(24, 4, 4),

(24, 2, 5),

(24, 5, 3),

(25, 4, 5),

(25, 2, 2),

(25, 5, 4),

(26, 4, 2),

(26, 2, 5),

(26, 5, 5),

(27, 4, 3),

(27, 2, 4),

(27, 5, 2),

(28, 4, 2),

(28, 2, 4),

(28, 5, 4),

(29, 4, 3),

(29, 2, 5),

(29, 5, 4),

(30, 4, 5),

(30, 2, 5),

(30, 5, 4),

(31, 4, 2),

(31, 2, 2),

(31, 5, 3),

(32, 4, 5),

(32, 2, 2),

(32, 5, 2),

(33, 4, 3),

(33, 2, 3),

(33, 5, 3),

(34, 4, 3),

(34, 2, 5),

(34, 5, 4),

(35, 4, 5),

(35, 2, 2),

(35, 5, 2),

(36, 4, 3),

(36, 2, 2),

(36, 5, 2),

(37, 4, 4),

(37, 2, 3),

(37, 5, 2),

(38, 4, 4),

(38, 2, 3),

(38, 5, 5),

(39, 4, 4),

(39, 2, 5),

(39, 5, 3),

(40, 4, 5),

(40, 2, 4),

(40, 5, 4),

(41, 4, 2),

(41, 2, 5),

(41, 5, 5);

INSERT INTO marks (student_id, subj_teacher_id, mark) VALUES

(43, 6, 2),

(43, 7, 2),

(43, 8, 5),

(44, 6, 2),

(44, 7, 2),

(44, 8, 2),

(45, 6, 5),

(45, 7, 4),

(45, 8, 5),

(46, 6, 4),

(46, 7, 5),

(46, 8, 3),

(47, 6, 5),

(47, 7, 3),

(47, 8, 2),

(48, 6, 5),

(48, 7, 3),

(48, 8, 3),

(49, 6, 2),

(49, 7, 2),

(49, 8, 2),

(50, 6, 4),

(50, 7, 4),

(50, 8, 5),

(51, 6, 4),

(51, 7, 3),

(51, 8, 3),

(52, 6, 3),

(52, 7, 2),

(52, 8, 3),

(53, 6, 2),

(53, 7, 3),

(53, 8, 3),

(54, 6, 4),

(54, 7, 2),

(54, 8, 3),

(55, 6, 4),

(55, 7, 5),

(55, 8, 2),

(56, 6, 2),

(56, 7, 5),

(56, 8, 5),

(57, 6, 4),

(57, 7, 4),

(57, 8, 4),

(58, 6, 4),

(58, 7, 3),

(58, 8, 5),

(59, 6, 5),

(59, 7, 3),

(59, 8, 3),

(60, 6, 5),

(60, 7, 4),

(60, 8, 5),

(61, 6, 5),

(61, 7, 3),

(61, 8, 4),

(62, 6, 2),

(62, 7, 4),

(62, 8, 4);



INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (1, 1, '2023-09-4');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (4, 1, '2023-09-4');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (6, 1, '2023-09-4');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (2, 2, '2023-09-5');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (2, 2, '2023-09-5');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (7, 2, '2023-09-5');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (3, 2, '2023-09-6');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (5, 2, '2023-09-6');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (8, 2, '2023-09-6');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (2, 2, '2023-09-7');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (2, 2, '2023-09-7');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (6, 2, '2023-09-7');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (2, 2, '2023-09-8');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (4, 2, '2023-09-8');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (8, 2, '2023-09-8');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (1, 1, '2023-09-11');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (4, 1, '2023-09-11');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (6, 1, '2023-09-11');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (2, 2, '2023-09-12');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (2, 2, '2023-09-12');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (7, 2, '2023-09-12');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (3, 2, '2023-09-13');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (5, 2, '2023-09-13');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (8, 2, '2023-09-13');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (2, 2, '2023-09-14');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (2, 2, '2023-09-14');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (6, 2, '2023-09-14');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (2, 2, '2023-09-15');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (4, 2, '2023-09-15');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (8, 2, '2023-09-15');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (1, 1, '2023-09-18');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (4, 1, '2023-09-18');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (6, 1, '2023-09-18');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (2, 2, '2023-09-19');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (2, 2, '2023-09-19');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (7, 2, '2023-09-19');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (3, 2, '2023-09-20');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (5, 2, '2023-09-20');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (8, 2, '2023-09-20');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (2, 2, '2023-09-21');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (2, 2, '2023-09-21');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (6, 2, '2023-09-21');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (2, 2, '2023-09-22');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (4, 2, '2023-09-22');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (8, 2, '2023-09-22');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (1, 1, '2023-09-25');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (4, 1, '2023-09-25');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (6, 1, '2023-09-25');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (2, 2, '2023-09-26');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (2, 2, '2023-09-26');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (7, 2, '2023-09-26');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (3, 2, '2023-09-27');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (5, 2, '2023-09-27');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (8, 2, '2023-09-27');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (2, 2, '2023-09-28');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (2, 2, '2023-09-28');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (6, 2, '2023-09-28');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (2, 2, '2023-09-29');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (4, 2, '2023-09-29');

INSERT into lessons_schedule (subj_teacher_id, number_pair, date) VALUES (8, 2, '2023-09-29');


INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 1, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 1, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 1, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 1, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 1, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 1, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 1, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 1, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 1, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 1, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 1, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 1, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 1, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 1, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 1, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 1, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 1, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 1, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 1, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 1, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 1, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 1, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 1, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 1, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 1, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 1, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 2, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 2, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 2, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 2, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 2, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 2, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 2, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 2, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 2, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 2, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 2, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 2, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 2, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 2, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 2, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 2, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 2, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 2, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 2, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 2, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 2, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 2, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 2, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 2, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 2, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 2, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 3, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 3, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 3, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 3, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 3, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 3, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 3, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 3, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 3, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 3, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 3, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 3, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 3, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 3, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 3, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 3, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 3, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 3, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 3, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 3, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 3, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 3, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 3, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 3, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 3, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 3, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 3, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 3, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 3, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 3, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 3, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 3, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 3, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 3, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 3, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 3, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 3, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 3, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 3, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 3, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 3, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 3, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 3, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 3, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 3, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 3, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 3, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 3, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 3, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 3, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 3, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 3, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 3, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 3, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 3, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 3, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 3, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 3, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 3, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 3, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 4, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 4, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 4, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 4, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 4, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 4, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 4, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 4, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 4, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 4, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 4, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 4, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 4, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 4, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 4, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 4, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 4, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 4, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 4, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 4, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 4, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 4, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 4, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 4, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 4, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 4, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 4, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 4, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 4, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 4, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 4, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 4, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 4, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 4, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 4, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 4, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 4, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 4, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 4, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 4, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 4, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 4, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 4, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 4, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 4, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 4, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 4, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 4, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 4, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 4, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 4, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 4, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 4, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 4, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 4, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 4, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 4, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 4, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 4, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 4, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 5, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 5, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 5, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 5, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 5, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 5, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 5, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 5, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 5, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 5, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 5, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 5, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 5, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 5, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 5, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 5, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 5, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 5, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 5, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 5, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 5, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 5, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 5, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 5, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 5, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 5, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 5, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 5, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 5, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 5, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 5, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 5, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 5, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 5, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 5, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 5, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 5, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 5, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 5, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 5, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 5, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 5, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 5, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 5, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 5, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 5, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 5, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 5, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 5, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 5, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 5, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 5, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 5, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 5, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 5, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 5, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 5, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 5, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 5, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 5, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 6, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 6, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 6, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 6, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 6, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 6, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 6, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 6, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 6, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 6, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 6, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 6, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 6, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 6, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 6, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 6, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 6, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 6, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 6, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 6, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 6, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 6, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 6, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 6, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 6, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 6, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 6, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 6, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 6, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 6, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 6, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 6, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 6, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 6, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 6, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 6, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 6, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 6, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 6, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 6, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 6, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 6, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 6, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 6, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 6, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 6, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 6, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 6, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 6, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 6, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 6, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 6, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 6, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 6, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 6, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 6, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 6, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 6, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 6, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 6, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 7, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 7, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 7, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 7, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 7, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 7, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 7, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 7, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 7, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 7, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 7, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 7, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 7, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 7, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 7, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 7, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 7, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 7, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 7, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 7, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 7, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 7, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 7, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 7, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 7, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 8, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 8, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 8, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 8, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 8, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 8, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 8, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 8, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 8, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 8, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 8, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 8, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 8, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 8, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 8, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 8, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 8, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 8, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 8, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 8, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 8, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 8, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 8, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 8, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 8, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 8, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 8, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 8, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 8, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 8, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 8, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 8, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 8, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 8, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 8, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 8, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 8, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 8, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 8, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 8, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 8, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 8, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 8, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 8, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 8, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 8, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 8, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 8, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 8, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 8, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 8, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 8, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 8, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 8, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 8, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 8, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 8, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 8, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 8, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 8, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 9, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 9, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 9, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 9, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 9, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 9, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 9, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 9, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 9, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 9, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 9, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 9, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 9, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 9, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 9, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 9, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 9, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 9, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 9, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 9, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 9, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 9, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 9, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 9, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 9, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 9, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 10, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 10, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 10, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 10, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 10, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 10, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 10, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 10, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 10, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 10, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 10, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 10, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 10, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 10, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 10, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 10, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 10, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 10, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 10, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 10, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 10, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 10, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 10, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 10, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 10, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 10, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 11, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 11, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 11, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 11, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 11, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 11, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 11, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 11, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 11, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 11, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 11, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 11, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 11, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 11, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 11, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 11, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 11, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 11, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 11, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 11, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 11, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 11, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 11, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 11, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 11, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 11, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 12, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 12, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 12, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 12, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 12, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 12, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 12, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 12, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 12, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 12, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 12, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 12, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 12, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 12, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 12, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 12, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 12, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 12, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 12, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 12, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 12, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 12, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 12, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 12, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 12, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 12, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 12, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 12, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 12, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 12, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 12, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 12, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 12, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 12, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 12, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 12, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 12, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 12, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 12, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 12, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 12, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 12, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 12, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 12, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 12, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 12, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 12, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 12, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 12, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 12, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 12, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 12, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 12, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 12, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 12, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 12, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 12, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 12, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 12, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 12, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 13, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 13, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 13, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 13, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 13, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 13, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 13, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 13, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 13, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 13, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 13, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 13, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 13, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 13, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 13, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 13, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 13, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 13, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 13, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 13, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 13, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 13, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 13, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 13, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 13, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 13, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 13, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 13, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 13, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 13, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 13, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 13, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 13, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 13, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 13, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 13, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 13, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 13, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 13, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 13, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 13, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 13, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 13, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 13, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 13, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 13, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 13, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 13, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 13, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 13, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 13, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 13, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 13, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 13, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 13, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 13, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 13, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 13, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 13, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 13, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 14, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 14, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 14, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 14, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 14, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 14, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 14, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 14, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 14, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 14, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 14, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 14, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 14, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 14, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 14, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 14, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 14, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 14, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 14, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 14, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 14, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 14, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 14, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 14, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 14, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 14, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 15, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 15, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 15, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 15, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 15, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 15, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 15, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 15, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 15, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 15, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 15, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 15, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 15, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 15, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 15, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 15, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 15, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 15, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 15, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 15, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 15, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 15, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 15, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 15, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 15, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 15, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 15, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 15, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 15, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 15, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 15, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 15, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 15, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 15, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 15, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 15, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 15, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 15, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 15, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 15, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 15, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 15, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 15, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 15, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 15, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 15, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 15, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 15, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 15, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 15, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 15, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 15, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 15, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 15, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 15, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 15, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 15, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 15, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 15, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 15, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 16, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 16, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 16, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 16, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 16, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 16, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 16, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 16, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 16, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 16, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 16, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 16, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 16, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 16, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 16, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 16, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 16, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 16, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 16, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 16, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 16, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 16, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 16, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 16, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 16, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 17, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 17, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 17, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 17, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 17, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 17, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 17, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 17, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 17, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 17, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 17, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 17, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 17, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 17, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 17, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 17, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 17, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 17, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 17, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 17, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 17, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 17, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 17, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 17, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 17, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 17, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 17, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 17, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 17, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 17, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 17, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 17, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 17, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 17, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 17, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 17, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 17, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 17, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 17, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 17, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 17, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 17, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 17, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 17, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 17, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 17, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 17, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 17, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 17, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 17, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 17, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 17, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 17, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 17, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 17, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 17, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 17, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 17, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 17, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 17, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 18, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 18, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 18, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 18, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 18, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 18, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 18, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 18, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 18, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 18, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 18, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 18, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 18, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 18, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 18, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 18, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 18, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 18, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 18, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 18, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 18, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 18, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 18, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 18, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 18, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 18, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 18, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 18, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 18, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 18, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 18, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 18, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 18, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 18, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 18, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 18, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 18, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 18, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 18, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 18, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 18, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 18, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 18, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 18, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 18, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 18, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 18, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 18, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 18, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 18, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 18, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 18, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 18, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 18, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 18, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 18, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 18, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 18, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 18, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 18, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 19, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 19, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 19, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 19, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 19, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 19, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 19, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 19, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 19, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 19, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 19, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 19, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 19, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 19, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 19, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 19, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 19, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 19, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 19, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 19, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 19, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 19, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 19, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 19, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 19, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 19, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 19, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 19, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 19, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 19, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 19, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 19, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 19, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 19, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 19, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 19, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 19, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 19, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 19, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 19, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 19, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 19, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 19, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 19, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 19, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 19, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 19, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 19, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 19, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 19, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 19, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 19, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 19, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 19, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 19, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 19, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 19, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 19, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 19, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 19, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 20, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 20, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 20, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 20, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 20, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 20, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 20, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 20, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 20, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 20, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 20, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 20, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 20, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 20, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 20, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 20, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 20, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 20, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 20, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 20, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 20, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 20, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 20, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 20, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 20, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 20, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 20, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 20, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 20, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 20, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 20, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 20, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 20, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 20, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 20, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 20, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 20, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 20, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 20, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 20, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 20, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 20, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 20, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 20, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 20, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 20, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 20, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 20, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 20, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 20, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 20, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 20, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 20, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 20, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 20, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 20, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 20, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 20, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 20, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 20, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 21, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 21, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 21, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 21, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 21, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 21, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 21, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 21, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 21, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 21, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 21, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 21, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 21, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 21, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 21, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 21, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 21, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 21, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 21, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 21, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 21, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 21, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 22, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 22, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 22, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 22, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 22, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 22, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 22, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 22, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 22, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 22, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 22, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 22, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 22, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 22, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 22, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 22, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 22, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 22, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 22, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 22, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 22, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 22, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 22, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 22, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 22, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 22, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 22, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 22, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 22, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 22, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 22, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 22, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 22, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 22, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 22, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 22, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 22, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 22, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 22, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 22, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 22, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 22, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 22, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 22, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 22, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 22, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 22, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 22, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 22, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 22, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 22, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 22, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 22, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 22, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 22, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 22, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 22, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 22, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 22, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 22, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 23, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 23, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 23, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 23, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 23, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 23, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 23, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 23, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 23, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 23, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 23, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 23, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 23, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 23, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 23, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 23, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 23, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 23, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 23, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 23, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 23, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 23, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 23, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 23, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 23, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 23, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 23, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 23, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 23, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 23, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 23, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 23, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 23, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 23, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 23, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 23, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 23, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 23, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 23, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 23, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 23, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 23, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 23, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 23, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 23, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 23, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 23, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 23, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 23, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 23, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 23, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 23, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 23, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 23, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 23, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 23, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 23, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 23, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 23, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 23, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 24, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 24, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 24, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 24, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 24, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 24, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 24, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 24, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 24, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 24, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 24, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 24, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 24, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 24, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 24, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 24, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 24, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 24, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 24, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 24, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 24, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 24, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 24, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 24, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 24, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 24, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 24, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 24, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 24, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 24, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 24, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 24, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 24, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 24, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 24, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 24, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 24, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 24, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 24, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 24, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 24, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 24, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 24, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 24, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 24, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 24, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 24, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 24, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 24, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 24, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 24, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 24, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 24, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 24, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 24, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 24, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 24, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 24, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 24, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 24, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 25, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 25, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 25, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 25, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 25, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 25, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 25, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 25, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 25, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 25, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 25, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 25, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 25, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 25, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 25, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 25, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 25, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 25, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 25, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 25, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 25, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 25, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 25, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 25, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 25, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 25, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 25, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 25, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 25, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 25, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 25, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 25, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 25, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 25, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 25, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 25, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 25, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 25, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 25, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 25, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 25, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 25, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 25, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 25, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 25, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 25, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 25, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 25, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 25, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 25, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 25, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 25, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 25, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 25, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 25, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 25, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 25, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 25, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 25, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 25, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 26, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 26, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 26, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 26, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 26, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 26, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 26, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 26, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 26, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 26, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 26, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 26, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 26, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 26, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 26, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 26, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 26, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 26, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 26, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 26, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 26, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 26, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 26, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 26, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 26, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 26, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 26, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 26, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 26, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 26, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 26, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 26, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 26, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 26, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 26, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 26, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 26, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 26, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 26, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 26, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 26, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 26, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 26, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 26, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 26, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 26, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 26, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 26, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 26, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 26, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 26, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 26, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 26, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 26, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 26, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 26, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 26, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 26, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 26, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 26, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 27, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 27, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 27, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 27, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 27, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 27, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 27, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 27, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 27, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 27, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 27, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 27, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 27, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 27, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 27, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 27, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 27, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 27, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 27, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 27, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 27, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 27, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 27, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 27, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 27, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 27, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 27, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 27, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 27, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 27, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 27, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 27, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 27, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 27, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 27, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 27, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 27, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 27, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 27, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 27, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 27, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 27, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 27, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 27, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 27, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 27, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 27, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 27, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 27, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 27, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 27, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 27, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 27, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 27, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 27, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 27, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 27, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 27, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 27, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 27, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 28, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 28, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 28, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 28, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 28, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 28, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 28, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 28, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 28, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 28, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 28, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 28, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 28, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 28, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 28, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 28, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 28, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 28, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 28, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 28, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 28, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 28, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 28, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 28, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 28, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 28, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 28, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 28, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 28, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 28, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 28, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 28, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 28, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 28, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 28, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 28, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 28, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 28, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 28, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 28, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 28, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 28, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 28, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 28, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 28, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 28, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 28, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 28, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 28, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 28, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 28, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 28, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 28, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 28, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 28, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 28, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 28, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 28, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 28, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 28, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 29, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 29, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 29, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 29, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 29, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 29, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 29, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 29, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 29, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 29, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 29, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 29, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 29, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 29, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 29, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 29, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 29, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 29, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 29, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 29, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 29, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 29, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 29, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 29, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 29, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 29, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 29, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 29, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 29, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 29, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 29, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 29, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 29, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 29, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 29, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 29, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 29, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 29, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 29, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 29, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 29, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 29, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 29, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 29, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 29, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 29, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 29, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 29, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 29, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 29, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 29, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 29, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 29, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 29, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 29, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 29, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 29, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 29, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 29, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 29, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 30, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 30, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 30, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 30, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 30, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 30, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 30, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 30, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 30, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 30, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 30, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 30, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 30, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 30, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 30, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 30, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 30, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 30, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 30, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 30, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 30, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 30, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 30, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 30, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 31, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 31, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 31, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 31, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 31, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 31, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 31, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 31, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 31, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 31, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 31, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 31, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 31, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 31, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 31, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 31, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 31, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 31, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 31, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 31, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 31, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 31, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 31, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 31, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 31, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 32, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 32, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 32, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 32, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 32, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 32, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 32, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 32, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 32, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 32, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 32, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 32, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 32, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 32, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 32, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 32, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 32, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 32, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 32, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 32, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 32, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 32, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 32, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 32, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 32, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 32, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 32, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 32, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 32, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 32, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 32, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 32, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 32, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 32, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 32, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 32, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 32, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 32, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 32, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 32, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 32, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 32, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 32, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 32, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 32, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 32, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 32, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 32, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 32, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 32, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 32, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 32, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 32, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 32, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 32, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 32, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 32, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 32, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 32, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 32, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 33, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 33, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 33, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 33, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 33, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 33, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 33, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 33, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 33, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 33, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 33, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 33, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 33, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 33, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 33, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 33, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 33, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 33, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 33, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 33, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 33, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 33, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 33, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 33, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 33, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 33, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 34, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 34, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 34, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 34, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 34, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 34, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 34, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 34, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 34, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 34, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 34, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 34, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 34, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 34, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 34, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 34, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 34, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 34, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 34, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 34, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 34, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 34, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 34, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 34, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 35, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 35, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 35, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 35, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 35, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 35, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 35, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 35, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 35, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 35, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 35, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 35, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 35, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 35, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 35, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 35, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 35, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 35, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 35, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 35, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 35, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 35, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 35, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 35, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 35, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 35, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 35, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 35, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 35, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 35, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 35, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 35, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 35, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 35, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 35, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 35, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 35, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 35, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 35, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 35, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 35, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 35, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 35, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 35, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 35, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 35, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 35, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 35, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 35, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 35, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 35, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 35, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 35, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 35, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 35, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 35, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 35, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 35, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 35, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 35, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 36, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 36, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 36, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 36, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 36, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 36, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 36, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 36, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 36, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 36, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 36, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 36, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 36, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 36, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 36, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 36, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 36, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 36, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 36, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 36, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 36, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 36, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 36, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 36, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 36, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 36, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 37, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 37, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 37, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 37, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 37, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 37, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 37, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 37, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 37, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 37, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 37, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 37, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 37, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 37, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 37, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 37, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 37, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 37, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 37, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 37, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 37, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 37, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 37, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 37, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 37, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 37, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 37, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 37, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 37, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 37, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 37, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 37, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 37, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 37, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 37, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 37, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 37, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 37, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 37, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 37, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 37, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 37, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 37, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 37, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 37, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 37, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 37, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 37, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 37, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 37, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 37, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 37, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 37, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 37, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 37, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 37, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 37, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 37, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 37, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 37, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 38, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 38, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 38, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 38, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 38, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 38, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 38, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 38, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 38, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 38, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 38, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 38, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 38, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 38, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 38, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 38, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 38, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 38, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 38, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 38, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 38, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 38, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 38, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 38, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 38, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 38, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 38, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 38, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 38, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 38, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 38, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 38, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 38, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 38, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 38, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 38, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 38, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 38, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 38, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 38, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 38, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 38, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 38, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 38, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 38, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 38, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 38, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 38, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 38, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 38, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 38, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 38, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 38, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 38, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 38, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 38, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 38, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 38, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 38, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 38, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 39, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 39, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 39, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 39, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 39, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 39, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 39, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 39, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 39, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 39, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 39, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 39, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 39, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 39, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 39, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 39, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 39, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 39, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 39, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 39, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 39, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 39, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 39, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 39, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 39, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 39, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 39, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 39, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 39, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 39, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 39, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 39, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 39, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 39, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 39, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 39, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 39, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 39, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 39, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 39, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 39, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 39, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 39, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 39, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 39, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 39, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 39, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 39, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 39, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 39, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 39, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 39, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 39, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 39, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 39, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 39, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 39, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 39, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 39, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 39, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 40, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 40, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 40, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 40, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 40, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 40, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 40, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 40, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 40, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 40, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 40, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 40, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 40, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 40, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 40, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 40, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 40, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 40, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 40, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 40, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 40, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 40, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 40, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 40, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 40, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 40, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 40, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 40, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 40, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 40, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 40, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 40, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 40, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 40, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 40, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 40, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 40, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 40, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 40, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 40, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 40, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 40, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 40, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 40, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 40, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 40, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 40, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 40, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 40, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 40, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 40, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 40, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 40, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 40, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 40, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 40, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 40, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 40, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 40, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 40, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 41, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 41, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 41, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 41, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 41, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 41, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 41, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 41, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 41, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 41, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 41, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 41, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 41, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 41, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 41, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 41, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 41, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 41, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 41, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 41, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 41, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 41, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 41, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 41, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 41, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 41, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 41, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 41, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 41, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 41, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 41, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 41, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 41, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 41, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 41, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 41, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 41, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 41, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 41, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 41, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 41, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 41, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 41, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 41, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 41, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 41, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 41, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 41, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 41, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 41, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 41, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 41, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 41, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 41, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 41, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 41, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 41, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 41, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 41, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 41, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 42, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 42, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 42, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 42, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 42, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 42, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 42, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 42, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 42, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 42, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 42, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 42, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 42, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 42, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 42, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 42, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 42, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 42, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 42, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 42, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 42, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 42, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 42, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 42, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 42, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 42, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 43, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 43, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 43, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 43, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 43, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 43, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 43, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 43, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 43, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 43, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 43, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 43, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 43, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 43, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 43, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 43, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 43, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 43, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 43, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 43, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 43, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 43, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 43, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 43, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 43, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 43, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 43, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 43, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 43, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 43, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 43, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 43, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 43, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 43, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 43, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 43, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 43, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 43, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 43, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 43, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 43, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 43, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 43, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 43, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 43, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 43, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 43, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 43, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 43, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 43, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 43, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 43, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 43, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 43, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 43, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 43, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 43, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 43, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 43, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 43, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 44, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 44, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 44, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 44, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 44, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 44, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 44, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 44, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 44, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 44, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 44, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 44, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 44, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 44, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 44, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 44, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 44, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 44, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 44, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 44, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 44, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 44, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 44, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 44, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 45, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 45, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 45, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 45, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 45, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 45, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 45, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 45, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 45, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 45, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 45, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 45, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 45, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 45, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 45, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 45, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 45, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 45, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 45, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 45, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 45, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 45, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 45, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 45, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 45, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 45, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 45, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 45, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 45, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 45, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 45, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 45, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 45, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 45, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 45, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 45, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 45, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 45, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 45, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 45, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 45, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 45, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 45, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 45, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 45, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 45, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 45, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 45, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 45, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 45, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 45, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 45, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 45, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 45, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 45, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 45, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 45, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 45, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 45, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 45, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 46, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 46, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 46, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 46, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 46, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 46, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 46, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 46, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 46, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 46, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 46, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 46, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 46, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 46, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 46, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 46, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 46, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 46, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 46, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 46, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 46, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 46, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 46, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 46, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 46, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 46, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 46, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 46, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 46, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 46, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 46, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 46, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 46, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 46, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 46, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 46, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 46, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 46, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 46, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 46, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 46, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 46, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 46, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 46, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 46, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 46, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 46, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 46, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 46, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 46, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 46, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 46, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 46, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 46, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 46, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 46, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 46, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 46, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 46, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 46, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 47, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 47, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 47, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 47, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 47, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 47, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 47, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 47, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 47, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 47, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 47, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 47, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 47, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 47, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 47, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 47, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 47, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 47, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 47, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 47, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 47, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 47, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 47, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 47, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 47, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 47, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 47, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 47, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 47, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 47, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 47, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 47, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 47, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 47, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 47, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 47, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 47, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 47, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 47, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 47, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 47, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 47, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 47, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 47, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 47, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 47, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 47, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 47, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 47, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 47, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 47, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 47, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 47, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 47, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 47, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 47, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 47, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 47, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 47, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 47, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 48, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 48, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 48, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 48, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 48, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 48, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 48, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 48, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 48, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 48, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 48, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 48, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 48, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 48, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 48, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 48, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 48, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 48, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 48, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 48, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 48, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 48, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 48, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 48, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 48, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 48, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 48, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 48, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 48, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 48, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 48, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 48, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 48, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 48, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 48, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 48, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 48, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 48, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 48, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 48, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 48, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 48, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 48, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 48, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 48, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 48, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 48, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 48, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 48, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 48, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 48, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 48, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 48, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 48, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 48, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 48, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 48, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 48, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 48, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 48, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 49, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 49, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 49, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 49, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 49, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 49, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 49, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 49, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 49, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 49, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 49, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 49, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 49, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 49, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 49, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 49, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 49, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 49, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 49, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 49, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 49, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 49, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 49, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 49, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 49, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 49, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 49, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 49, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 49, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 49, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 49, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 49, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 49, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 49, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 49, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 49, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 49, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 49, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 49, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 49, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 49, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 49, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 49, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 49, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 49, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 49, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 49, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 49, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 49, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 49, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 49, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 49, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 49, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 49, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 49, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 49, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 49, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 49, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 49, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 49, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 50, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 50, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 50, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 50, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 50, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 50, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 50, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 50, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 50, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 50, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 50, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 50, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 50, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 50, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 50, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 50, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 50, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 50, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 50, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 50, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 50, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 50, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 50, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 50, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 50, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 50, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 50, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 50, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 50, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 50, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 50, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 50, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 50, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 50, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 50, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 50, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 50, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 50, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 50, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 50, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 50, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 50, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 50, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 50, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 50, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 50, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 50, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 50, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 50, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 50, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 50, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 50, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 50, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 50, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 50, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 50, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 50, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 50, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 50, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 50, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 51, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 51, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 51, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 51, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 51, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 51, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 51, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 51, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 51, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 51, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 51, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 51, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 51, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 51, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 51, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 51, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 51, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 51, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 51, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 51, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 51, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 51, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 51, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 51, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 51, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 51, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 51, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 51, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 51, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 51, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 51, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 51, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 51, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 51, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 51, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 51, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 51, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 51, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 51, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 51, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 51, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 51, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 51, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 51, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 51, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 51, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 51, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 51, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 51, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 51, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 51, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 51, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 51, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 51, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 51, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 51, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 51, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 51, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 51, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 51, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 52, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 52, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 52, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 52, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 52, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 52, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 52, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 52, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 52, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 52, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 52, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 52, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 52, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 52, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 52, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 52, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 52, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 52, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 52, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 52, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 52, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 52, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 52, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 52, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 53, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 53, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 53, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 53, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 53, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 53, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 53, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 53, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 53, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 53, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 53, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 53, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 53, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 53, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 53, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 53, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 53, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 53, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 53, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 53, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 53, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 53, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 53, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 53, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 53, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 53, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 53, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 53, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 53, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 53, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 53, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 53, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 53, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 53, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 53, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 53, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 53, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 53, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 53, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 53, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 53, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 53, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 53, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 53, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 53, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 53, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 53, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 53, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 53, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 53, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 53, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 53, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 53, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 53, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 53, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 53, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 53, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 53, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 53, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 53, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 54, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 54, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 54, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 54, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 54, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 54, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 54, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 54, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 54, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 54, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 54, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 54, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 54, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 54, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 54, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 54, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 54, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 54, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 54, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 54, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 54, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 54, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 54, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 54, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 54, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 54, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 54, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 54, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 54, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 54, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 54, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 54, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 54, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 54, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 54, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 54, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 54, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 54, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 54, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 54, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 54, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 54, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 54, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 54, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 54, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 54, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 54, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 54, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 54, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 54, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 54, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 54, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 54, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 54, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 54, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 54, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 54, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 54, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 54, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 54, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 55, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 55, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 55, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 55, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 55, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 55, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 55, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 55, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 55, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 55, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 55, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 55, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 55, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 55, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 55, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 55, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 55, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 55, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 55, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 55, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 55, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 55, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 55, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 55, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 55, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 55, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 55, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 55, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 55, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 55, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 55, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 55, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 55, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 55, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 55, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 55, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 55, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 55, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 55, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 55, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 55, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 55, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 55, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 55, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 55, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 55, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 55, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 55, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 55, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 55, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 55, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 55, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 55, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 55, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 55, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 55, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 55, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 55, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 55, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 55, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 56, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 56, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 56, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 56, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 56, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 56, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 56, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 56, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 56, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 56, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 56, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 56, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 56, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 56, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 56, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 56, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 56, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 56, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 56, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 56, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 56, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 56, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 56, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 56, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 56, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 56, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 56, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 56, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 56, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 56, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 56, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 56, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 56, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 56, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 56, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 56, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 56, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 56, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 56, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 56, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 56, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 56, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 56, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 56, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 56, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 56, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 56, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 56, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 56, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 56, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 56, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 56, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 56, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 56, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 56, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 56, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 56, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 56, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 56, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 56, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 57, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 57, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 57, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 57, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 57, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 57, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 57, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 57, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 57, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 57, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 57, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 57, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 57, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 57, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 57, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 57, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 57, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 57, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 57, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 57, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 57, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 57, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 57, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 57, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 57, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 57, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 57, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 57, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 57, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 57, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 57, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 57, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 57, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 57, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 57, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 57, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 57, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 57, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 57, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 57, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 57, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 57, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 57, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 57, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 57, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 57, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 57, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 57, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 57, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 57, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 57, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 57, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 57, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 57, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 57, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 57, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 57, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 57, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 57, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 57, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 58, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 58, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 58, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 58, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 58, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 58, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 58, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 58, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 58, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 58, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 58, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 58, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 58, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 58, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 58, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 58, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 58, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 58, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 58, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 58, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 58, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 58, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 58, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 58, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 58, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 58, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 58, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 58, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 58, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 58, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 58, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 58, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 58, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 58, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 58, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 58, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 58, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 58, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 58, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 58, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 58, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 58, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 58, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 58, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 58, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 58, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 58, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 58, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 58, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 58, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 58, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 58, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 58, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 58, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 58, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 58, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 58, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 58, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 58, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 58, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 59, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 59, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 59, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 59, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 59, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 59, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 59, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 59, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 59, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 59, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 59, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 59, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 59, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 59, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 59, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 59, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 59, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 59, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 59, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 59, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 59, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 59, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 59, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 59, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 59, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 59, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 59, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 59, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 59, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 59, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 59, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 59, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 59, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 59, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 59, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 59, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 59, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 59, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 59, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 59, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 59, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 59, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 59, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 59, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 59, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 59, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 59, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 59, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 59, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 59, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 59, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 59, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 59, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 59, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 59, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 59, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 59, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 59, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 59, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 59, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 60, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 60, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 60, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 60, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 60, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 60, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 60, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 60, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 60, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 60, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 60, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 60, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 60, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 60, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 60, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 60, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 60, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 60, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 60, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 60, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 60, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 60, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 60, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 60, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 60, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 60, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 60, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 60, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 60, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 60, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 60, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 60, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 60, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 60, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 60, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 60, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 60, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 60, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 60, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 60, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 60, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 60, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 60, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 60, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 60, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 60, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 60, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 60, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 60, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 60, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 60, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 60, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 60, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 60, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 60, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 60, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 60, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 60, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 60, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 60, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 61, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 61, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 61, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 61, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 61, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 61, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 61, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 61, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 61, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 61, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 61, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 61, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 61, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 61, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 61, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 61, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 61, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 61, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 61, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 61, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 61, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 61, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 61, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 61, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 61, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 61, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 61, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 61, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 61, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 61, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 61, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 61, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 61, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 61, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 61, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 61, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 61, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 61, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 61, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 61, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 61, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 61, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 61, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 61, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 61, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 61, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 61, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 61, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 61, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 61, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 61, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 61, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 61, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 61, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 61, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 61, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 61, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 61, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 61, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 61, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 62, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 62, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 62, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 62, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 62, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 62, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 62, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 62, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 62, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 62, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 62, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 62, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 62, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 62, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 62, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 62, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 62, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 62, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 62, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 62, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 62, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 62, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 62, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 62, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 62, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 62, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 62, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 62, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 62, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 62, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 62, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 62, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 62, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 62, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 62, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 62, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 62, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 62, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 62, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 62, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 62, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 62, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 62, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 62, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 62, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 62, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 62, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 62, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 62, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 62, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 62, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 62, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 62, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 62, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 62, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 62, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 62, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 62, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 62, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 62, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (1, 63, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (2, 63, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (3, 63, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (4, 63, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (5, 63, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (6, 63, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (7, 63, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (8, 63, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (9, 63, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (10, 63, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (11, 63, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (12, 63, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (13, 63, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (14, 63, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (15, 63, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (16, 63, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (17, 63, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (18, 63, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (19, 63, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (20, 63, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (21, 63, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (22, 63, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (23, 63, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (24, 63, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (25, 63, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (26, 63, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (27, 63, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (28, 63, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (29, 63, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (30, 63, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (31, 63, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (32, 63, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (33, 63, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (34, 63, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (35, 63, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (36, 63, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (37, 63, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (38, 63, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (39, 63, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (40, 63, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (41, 63, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (42, 63, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (43, 63, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (44, 63, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (45, 63, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (46, 63, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (47, 63, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (48, 63, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (49, 63, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (50, 63, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (51, 63, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (52, 63, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (53, 63, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (54, 63, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (55, 63, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (56, 63, 0);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (57, 63, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (58, 63, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (59, 63, 1);
INSERT INTO attendence (schedule_id, student_id, presense) VALUES (60, 63, 0);



