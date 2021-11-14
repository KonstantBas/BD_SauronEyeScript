/*Fraction*/
INSERT INTO Fraction (name) VALUES('Изенгард'); /*id 0*/ 
INSERT INTO Fraction (name) VALUES('Гондор'); /*id 1*/ 
INSERT INTO Fraction (name) VALUES('Мордор'); /*id 2*/ 
INSERT INTO Fraction (name) VALUES('Ривенделл'); /*id 3*/ 

/*Army*/
INSERT INTO Army (army_name, fraction_id, commander, race) VALUES('Авангард Сарумана', 0, 'Саруман', 'Урук-хай'); /*id 0*/
INSERT INTO Army (army_name, fraction_id, commander, race) VALUES('Отряд Боромира', 1, 'Боромир' 'Люди'); /*id 1*/
INSERT INTO Army (army_name, fraction_id, commander, race) VALUES('Гарнизон Итилиэна', 2, 'Командир-орк' 'Орки'); /*id 2*/
INSERT INTO Army (army_name, fraction_id, commander, race) VALUES('Полк Элронда', 3, 'Элронд' 'Эльфы'); /*id 3*/

/*Unit*/
INSERT INTO Unit (name, army_id, power) VALUES('Копейщик урук-хай', 0, 60); /*id 0*/
INSERT INTO Unit (name, army_id, power) VALUES('Арбалетчик урук-хай', 0, 40); /*id 1*/
INSERT INTO Unit (name, army_id, power) VALUES('Мечник урук-хай', 0, 70); /*id 2*/
INSERT INTO Unit (name, army_id, power) VALUES('Берсерк урук-хай', 0, 95); /*id 3*/

INSERT INTO Unit (name, army_id, power) VALUES('Копейщик Гондора', 1, 65); /*id 4*/
INSERT INTO Unit (name, army_id, power) VALUES('Лучник Гондора', 1, 40); /*id 5*/
INSERT INTO Unit (name, army_id, power) VALUES('Мечник Гондора', 1, 70); /*id 6*/
INSERT INTO Unit (name, army_id, power) VALUES('Знаменосец Гондора', 1, 90); /*id 7*/

INSERT INTO Unit (name, army_id, power) VALUES('Копейщик Мордора', 2, 60); /*id 8*/
INSERT INTO Unit (name, army_id, power) VALUES('Лучник Мордора', 2, 45); /*id 9*/
INSERT INTO Unit (name, army_id, power) VALUES('Мечник Мордора', 2, 70); /*id 10*/
INSERT INTO Unit (name, army_id, power) VALUES('Орк-мечник Мордора', 2, 150); /*id 11*/

INSERT INTO Unit (name, army_id, power) VALUES('Копейщик Рохана', 3, 65); /*id 12*/
INSERT INTO Unit (name, army_id, power) VALUES('Лучник Рохана', 3, 30); /*id 13*/
INSERT INTO Unit (name, army_id, power) VALUES('Мечник Рохана', 3, 70); /*id 14*/
INSERT INTO Unit (name, army_id, power) VALUES('Всадник Рохана', 3, 115); /*id 15*/

/*Strength*/
INSERT INTO Strength (strength_name, target_id, unit_id, power) VALUES('Зов Рохана', 3, 12, 100);
INSERT INTO Strength (strength_name, target_id, unit_id, power) VALUES('Зов Рохана', 3, 13, 100);
INSERT INTO Strength (strength_name, target_id, unit_id, power) VALUES('Зов Рохана', 1, 14, 200);
INSERT INTO Strength (strength_name, target_id, unit_id, power) VALUES('Зов Рохана', 1, 15, 300);

INSERT INTO Strength (strength_name, target_id, unit_id, power) VALUES('Магия крови Сарумана', 15, 0, 100);
INSERT INTO Strength (strength_name, target_id, unit_id, power) VALUES('Магия крови Сарумана', 14, 1, 150);
INSERT INTO Strength (strength_name, target_id, unit_id, power) VALUES('Магия крови Сарумана', 13, 2, 350);
INSERT INTO Strength (strength_name, target_id, unit_id, power) VALUES('Магия крови Сарумана', 13, 3, 500);

/*Hero*/
INSERT INTO Hero (hero_name, ability_id, artifact_id, army_id) VALUES('Саруман', 0, 0, 0);
INSERT INTO Hero (hero_name, ability_id, artifact_id, army_id) VALUES('Боромир', 1, 1, 1);
INSERT INTO Hero (hero_name, ability_id, artifact_id, army_id) VALUES('Назгул', 2, 2, 2);
INSERT INTO Hero (hero_name, ability_id, artifact_id, army_id) VALUES('Элронд', 3, 3, 3);

/*Artifact*/
INSERT INTO Artifact (hero_id, power, artifact_name) VALUES(0, 500, 'Палантир');
INSERT INTO Artifact (hero_id, power, artifact_name) VALUES(1, 450, 'Рог Гондора');
INSERT INTO Artifact (hero_id, power, artifact_name) VALUES(3, 600, 'Меч Исильдура');

/*Ability*/
INSERT INTO Ability (hero_id, power, ability_name) VALUES(0, 200, 'Магия');
INSERT INTO Ability (hero_id, power, ability_name) VALUES(1, 250, 'Навык мечника');
INSERT INTO Ability (hero_id, power, ability_name) VALUES(2, 700, 'Крик Назгула');
INSERT INTO Ability (hero_id, power, ability_name) VALUES(3, 600, 'Призыв лесных эльфов');

/*Location*/
INSERT INTO Location (name, type_id, fort_id) VALUES('Просторы Шира', 1, NULL);
INSERT INTO Location (name, type_id, fort_id) VALUES('Пеленорские поля', 0, 0);
INSERT INTO Location (name, type_id, fort_id) VALUES('Белые горы', 2, 1);

/*Fort id*/
INSERT INTO Fort (name, location, defence_score) VALUES('Минас-Тирит', 1, 1000);
INSERT INTO Fort (name, location, defence_score) VALUES('Хельмова Падь', 1, 500);
