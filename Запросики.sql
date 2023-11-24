use Ych_PR_KM
--лаб 2
--1.	Вывести ФИО, специализацию и дату рождения всех академиков.
SELECT a.FIO, s.Name, a.Date_Born  From dbo.Academics a 
Join dbo.Specialization s on a.Id_Specialization = s.Id_Spezialization
--2.	Создать вычисляемое поле «О присвоении звания», 
--которое содержит информацию об академиках в виде: 
--«Петров Петр Петрович получил звание в 1974».
SELECT a.FIO + ' получил звание в ' + convert(char, a.Year_rank) AS Информация
FROM dbo.Academics a

--3.	Вывести ФИО академиков и вычисляемое поле 
--«Через 5 лет после присвоения звания».
select a.FIO, (a.Year_rank + 5) as 'Через 5 лет после присвоения звания' 
From dbo.Academics a
--4.	Вывести список годов присвоения званий, убрав дубликаты.
Select distinct a.Year_rank from dbo.Academics a

--5.	Вывести список академиков, отсортированный по убыванию даты рождения.
 Select a.FIO, a.Date_Born From dbo.Academics a
 order by a.Date_Born desc
--6.	Вывести список академиков, 
--отсортированный в обратном алфавитном порядке специализаций, 
--по убыванию года присвоения звания, и в алфавитном порядке ФИО.
 Select a.FIO, a.Year_rank , s.Name From dbo.Academics a
join dbo.Specialization s on a.Id_Specialization = s.Id_Spezialization
order by s.Name  desc
--7.	Вывести первую строку из списка академиков, 
--отсортированного в обратном ал-фавитном порядке ФИО.
select top 1 * FROM dbo.Academics a
ORDER BY a.FIO ASC

--8.	Вывести фамилию академика, который раньше всех получил звание.
select a.FIO, a.Year_rank From dbo.Academics a
where a.Year_rank = (Select min(a.Year_rank) From dbo.Academics a)

--9.	Вывести первые 10% строк из списка академиков, 
--отсортированного в алфавитном порядке ФИО.
SELECT TOP 10 PERCENT * FROM dbo.Academics a ORDER BY a.FIO

--10.	Вывести из таблицы «Академики», 
--отсортированной по возрастанию года присво-ения звания, список академиков, 
--у которых год присвоения звания – один из первых пяти в отсортированной таблице.
SELECT TOP 5 WITH TIES * FROM dbo.Academics a ORDER BY a.Year_rank
--11.	Вывести, начиная с десятого, список академиков,
--отсортированный по возраста-нию даты рождения.
SELECT * FROM dbo.Academics a ORDER BY a.Date_Born OFFSET 9 ROWS
--12.	Вывести девятую и десятую строку из списка академиков,
--отсортированного в ал-фавитном порядке ФИО.
SELECT * FROM dbo.Academics a
ORDER BY a.FIO 
OFFSET 8 ROWS
FETCH NEXT 2 ROWS ONLY


---- Лаб 3 
--1.	Вывести названия и столицы пяти наибольших стран по площади.
select top 5 c.Name_Country, c.Capital, c.Square
from dbo.Country c
order by c.Square desc

--2.	Вывести список африканских стран, 
--население которых не превышает 1 млн. чел.
select c.Name_Country, c.Capital, c.Square, c.Population from dbo.Country c
where c.Id_Continent = 3 AND c.Population<=1000000

--3.	Вывести список стран, население которых больше 5 млн. чел., а площадь меньше
--100	тыс. кв. км, и они расположены не в Европе.
select c.Name_Country, c.Capital, c.Square, c.Population from dbo.Country c
where (c.Population >= 5000000) AND (c.Square <= 100000) AND (c.Id_Continent != 1)
--4.	Вывести список стран Северной и Южной Америки, население которых больше
--20	млн. чел., или стран Африки, у которых население больше 30 млн. чел.
select c.Name_Country, c.Capital, c.Square, c.Population from dbo.Country c
where ((c.Id_Continent=4 or c.Id_Continent=5) and c.Population>=20000000)
or (c.Id_Continent= 3 and c.Population>=30000000)
--5.	Вывести список стран, население которых составляет 
--от 10 до 100 млн. чел., а пло-щадь не больше 500 тыс. кв. км.
select c.Name_Country, c.Capital, c.Square, c.Population from dbo.Country c
where (c.Population between 10000000 and 100000000)
and (c.Square !> 500000)
--6.	Вывести список стран, названия которых не начинаются с буквы «К».
select c.Name_Country, c.Capital, c.Square, c.Population from dbo.Country c
where c.Name_Country not LIKE 'К%'
--7.	Вывести список стран, в названии которых третья буква – «а», 
--а предпоследняя – «и».
select c.Name_Country, c.Capital, c.Square, c.Population from dbo.Country c
where c.Name_Country like '__а%и%'
--8.	Вывести список стран, в названии которых вторая буква – гласная.
select c.Name_Country, c.Capital, c.Square, c.Population from dbo.Country c
where c.Name_Country like '_[ауеэоыяию]%'
--9.	Вывести список стран, названия которых начинаются с букв от «К» до «П».
select c.Name_Country, c.Capital, c.Square, c.Population from dbo.Country c
where c.Name_Country like '[К-П]%'
--10.	Вывести список стран, названия которых начинаются с букв от «А» до «Г»,
--но не с буквы «Б».
select c.Name_Country, c.Capital, c.Square, c.Population from dbo.Country c
where (c.Name_Country like '[А-Г]%') and ( c.Name_Country like '[^Б]%')
--11.	Вывести список стран, столицы которых есть в базе.
select c.Name_Country, c.Capital, c.Square, c.Population from dbo.Country c
where c.Capital is not null
--12.	Вывести список стран Африки, Северной и Южной Америки.
select c.Name_Country, c.Capital, c.Square, c.Population, co.Name from dbo.Country c
join dbo.Continent co on c.Id_Continent=co.Id_Continent
where c.Id_Continent in (3,4,5)

--4
--1.	Вывести список академиков, отсортированный по количеству символов в ФИО.
select a.FIO, LEN(a.FIO) as 'Кол-во символов в ФИО' from dbo.Academics a
order by  'Кол-во символов в ФИО'
--2.	Вывести список академиков, убрать лишние пробелы в ФИО.
select TRIM(a.FIO) as ФИО from dbo.Academics a
--3.	Найти позиции «ов» в ФИО каждого академика. Вывести ФИО и номер позиции.
select a.FIO, CHARINDEX('ов',a.FIO) as Позиция_ов from dbo.Academics a
--4.	Вывести ФИО и последние две буквы специализации для каждого академика.
select a.FIO, Right(s.Name, 2) from dbo.Academics a 
join dbo.Specialization s on a.Id_Specialization=s.Id_Spezialization
--5.	Вывести список академиков, ФИО в формате Фамилия и Инициалы.
select a.FIO, SUBSTRING(a.FIO, 1, CHARINDEX(' ', a.FIO) - 1) + SUBSTRING(a.FIO, CHARINDEX(' ', a.FIO), 2)
+ '.' + SUBSTRING(a.FIO, CHARINDEX(' ', a.FIO,CHARINDEX(' ',a.FIO) + 1), 2) + '.' as 'Фамилия инициалы'
From dbo.Academics a
--6.	Вывести список специализаций в правильном и обратном виде. Убрать дубликаты.
Select s.Name , REVERSE(s.Name )as ФИО_Обр 
from dbo.Specialization s
--уже сделали нф
--7.	Вывести свою фамилию в одной строке столько раз, сколько вам лет.
print REPLICATE(' Корнилова и Марушкина ', 18)
--8.	Вывести абсолютное значение функций2 (2) −   (3  2) с точностью два знака
--после десятичной запятой.
--game over
--9.	Вывести количество дней до конца семестра.
SELECT
DATEDIFF(DAY, '20230630', GETDATE()) AS Оставшиеся_дни_до_окончания_семестра
--10.	Вывести количество месяцев от вашего рождения.
SELECT
DATEDIFF(WEEK, '20050812', GETDATE()) AS Количество_прожитых_недель
--11.	Вывести ФИО и високосность года рождения каждого академика.
SELECT a.FIO, a.Date_Born, CASE ISDATE(STR(YEAR(a.Date_Born))+'0229') WHEN 1 THEN 'Високосный' ELSE 'Невисокосный' END AS какой_год_рождения
FROM dbo.Academics a;
--12.	Вывести список специализаций без повторений. 
--Для каждой специализации выве-сти «длинный» или «короткий», 
--в зависимости от количества символов.
SELECT s.Name, CASE WHEN len( s.Name)>(SELECT avg( len( s.Name)) FROM dbo.Specialization s) THEN 'длинный'
WHEN len( s.Name)<(SELECT avg( len( s.Name)) FROM dbo.Specialization s) THEN 'короткий'
ELSe 'равно' end
FROM dbo.Specialization s



--5 
--1.	Вывести минимальную площадь стран.
select min(c.Square) as минимальную_площадь  from dbo.Country c
--2.	Вывести наибольшую по населению страну в Северной и Южной Америке.
select max(c.Population) as наибольшую_по_населению_страну,co.Name
from dbo.Country c join dbo.Continent co on c.Id_Continent=co.Id_Continent
where c.Id_Continent = 4 or c.Id_Continent = 5
group by co.Name

--3.	Вывести среднее население стран. Результат округлить до одного знака.
select ROUND(AVG(CAST(c.Population AS FLOAT)), 1) AS Среднее_население
from dbo.Country c
--4.	Вывести количество стран, у которых название заканчивается на «ан», 
--кроме стран, у которых название заканчивается на «стан».
SELECT c.Name_Country FROM dbo.Country c
where c.Name_Country like('%ан') AND c.Name_Country not like('%стан')

--5.	Вывести количество континентов, где есть страны, название которых начинается с
--буквы «Р».
SELECT count( c2.Id_Continent) FROM dbo.Country c JOIN dbo.Continent c2 ON c.Id_Continent = c2.Id_Continent
where c.Name_Country like('Р%') 


--6.	Сколько раз страна с наибольшей площадью больше, чем страна с наименьшей площадью?
SELECT max(c.Square)/min(c.Square) FROM dbo.Country c
SELECT max(c.Square)FROM dbo.Country c
SELECT min(c.Square) FROM dbo.Country c
--7.	Вывести количество стран с населением больше, чем 100 млн. чел. на каждом кон-тиненте. Результат отсортировать по количеству стран по возрастанию.
SELECT  c2.Name, COUNT(*) AS количество_стран
FROM  dbo.Country c JOIN dbo.Continent c2 ON c.Id_Continent = c2.Id_Continent
WHERE  c.Population > 100000000
GROUP BY c2.Name
ORDER BY количество_стран ASC;
--8.	Вывести количество стран по количеству букв в названии. Результат отсортировать по убыванию.

SELECT COUNT(*) AS количество_стран, LEN(c.Name_Country) 
FROM dbo.Country c
GROUP BY LEN(c.Name_Country) 
ORDER BY LEN(c.Name_Country)  DESC;

--9.	Ожидается, что через 20 лет население мира вырастет на 10%. Вывести список континентов с прогнозируемым населением:
select  c.Name_Country , c.Population + (c.Population/100)*10 FROM dbo.Country c 

--10.	Вывести список континентов, где разница по площади между наибольшими и наименьшими странами не более в 10000 раз:
SELECT  c2.Name 
FROM  dbo.Country c JOIN dbo.Continent c2 ON c.Id_Continent = c2.Id_Continent
GROUP BY   c2.Name 
HAVING MAX(CAST(c.Square AS bigint)) <=10000 * MIN(CAST(c.Square AS bigint))  

--11.	Вывести среднюю длину названий Африканских стран.
SELECT AVG(LEN( c.Name_Country)) AS средняя_длина
FROM  dbo.Country c JOIN dbo.Continent c2 ON c.Id_Continent = c2.Id_Continent
WHERE  c2.Name = 'Африка';
--12.	Вывести список континентов, у которых средняя плотность среди стран с населе-нием более 1 млн. чел. больше, чем 30 чел. на кв. км.
SELECT   c2.Name
FROM  dbo.Country c JOIN dbo.Continent c2 ON c.Id_Continent = c2.Id_Continent
WHERE  c.Population > 1000000
GROUP BY   c2.Name
HAVING AVG( c.Population /  c.Square) > 30;


--6

--1.	Вывести из таблиц «Кафедра», «Специальность» и «Студент» данные о студентах, 
--которые обучаются на данном факультете (например, «ит»).
select s.Id_Student, s.LastName_Student, s2.Id_Speciality,s2.Name_Speciality, d.Cipher, d.Name_Departament
from Student s join Speciality s2 on s.Id_Speciality =s2.Id_Speciality join Departament d on s2.CipherID = d.Cipher 
join faculty a on a.Abbreviation = d.AbbreviationID
where a.Abbreviation = 'ит'

--2.	Вывести из таблиц «Кафедра», «Специальность» и «Сотрудник» данные о выпус-кающих кафедрах
--(факультет, шифр, название, фамилию заведующего). Выпускающей счита-ется та кафедра, на которую есть ссылки 
--в таблице «Специальность».
select d.AbbreviationID, d.Cipher,d.Name_Departament, e.LastName   from Departament d join Speciality s2  on d.Cipher = s2.CipherID 
 join Employee e on e.CipherID = s2.CipherID
where d.Cipher = s2.CipherID
--3.	Вывести в запросе для каждого сотрудника номер и фамилию его непосредствен-ного руководителя. 
--Для заведующих кафедрами поле руководителя оставить пустым.
select e.Id_Number, e.LastName, e1.Id_Number, e1.LastName from Employee e join Employee e1 on e.CipherID = e1.CipherID
--4.	Вывести список студентов, сдавших минимум два экзамена.
select s.Id_Student, count(e.Grade) Количество_сданных_экзаменов from Student s join Exame e on e.Id_Student = s.Id_Student
group by s.Id_Student
Having count(e.Grade) >= 2
--5.	Вывести список инженеров с зарплатой, меньшей 20000 руб.
select * from  Pozition p join Employee e1 on p.Id_Pozition= e1.Id_Pozition
where p.Salary < 20000.00 and p.Name_Pozition = 'инженер' 
--6.	Вывести список студентов, сдавших экзамены в заданной аудитории.
select * from Student s join Exame e on e.Id_Student = s.Id_Student
where e.Auditoria = 'т505'
--7.	Вывести из таблиц «Студент» и «Экзамен» учетные номера и фамилии студентов, 
--а также количество сданных экзаменов и средний балл для каждого студента только для тех студентов, 
--у которых средний балл не меньше заданного (например, 4).
select s.Id_Student, s.LastName_Student, count(e.Grade) 'Количество сданных экзаменов', avg(e.Grade) 'Средний балл'
from Student s join Exame e on e.Id_Student = s.Id_Student
group by s.Id_Student, s.LastName_Student
having avg(e.Grade) >= 4
--8.	Вывести список заведующих кафедрами и их зарплаты, и степень.
select e.LastName, p.Salary, b.Rang
from Employee e join  Pozition p on e.Id_Pozition = p.Id_Pozition 
join Boss b on b.Id_Boss = e.Id_Boss
where p.Id_Pozition  = 1
--9.	Вывести список профессоров. все норм 
select t.Id_Teacher from Teacher t join Rank r on t.Id_Rank = r.Id_Rank
where r.Id_Rank = 1
--10.	Вывести название дисциплины, фамилию, должность и степень преподавателя, 
--дату и место проведения экзаменов в хронологическом порядке в заданном интервале даты.
select d.Name_Discipline,  d2.Name_Degree, e.Date_Exam, e.Auditoria from Discipline d
join Exame e on e.Id_Discipline = d.Id_Discipline 
join Employee e2 on e2.Id_Number=e.Id_Teacher join Degree d2 on d2.Id_Degree = e2.Id_Degree

ORDER BY e.Date_Exam 
--11.	Вывести фамилию преподавателей, принявших более трех экзаменов.
select e1.LastName, count(e.Date_Exam) количество from Employee e2 join Exame e on e.Id_Teacher = e2.Id_Number
join Employee e1 on e1.Id_Number = e2.Id_Number
group by e1.LastName
Having count(e.Date_Exam) > 3
--12.	Вывести список студентов, не сдавших ни одного экзамена в указанной дате.
 SELECT * from Student s left outer join Exame e on e.Id_Student = s.Id_Student
where e.Date_Exam IS NULL

-- --- 7 
--1.	Вывести объединенный результат выполнения запросов, которые выбирают страны с площадью меньше 
--500 кв. км и с площадью больше 5 млн. кв. км:
SELECT c.* FROM dbo.Country c
WHERE c.Square < 500
UNION 
SELECT c.* FROM dbo.Country c
WHERE c.Square > 5000000
--2.	Вывести список стран с площадью больше 1 млн. кв. км, исключить страны с насе-лением меньше 100 млн. чел.:
SELECT c.* FROM dbo.Country c
WHERE c.Square > 1000000
EXCEPT
SELECT c.* FROM dbo.Country c
WHERE c.Population < 100000000
--3.	Вывести список стран с площадью меньше 500 кв. км и с населением меньше
--100	тыс. чел.
SELECT c.* FROM dbo.Country c
WHERE c.Square < 500
INTERSECT
SELECT c.* FROM dbo.Country c
WHERE c.Population < 100000



--лаб 8
--1.	Вывести список стран и процентное соотношение площади каждой из них к общей площади всех стран мира.
SELECT c.Name_Country, c2.Name, c.Capital, c.Population,
ROUND(cast(c.Population AS FLOAT) * 100 / 
(SELECT SUM(c.Population) FROM dbo.Country c), 3) 'Процентное соотношение'
FROM dbo.Country c JOIN dbo.Continent c2 ON c.Id_Continent = c2.Id_Continent

--2.	Вывести список стран мира, плотность населения которых больше, чем средняя плотность населения всех стран мира.
SELECT c.Name_Country, c2.Name, c.Capital, c.Population FROM dbo.Country c  JOIN dbo.Continent c2 ON c.Id_Continent = c2.Id_Continent
WHERE c.Population > (SELECT AVG(c.Population) FROM dbo.Country c)
--3.	С помощью подзапроса вывести список европейских стран, население которых меньше 5 млн. чел.
SELECT * FROM( SELECT c.Name_Country, c2.Name, c.Capital, c.Population from dbo.Country c 
JOIN dbo.Continent c2 ON c.Id_Continent = c2.Id_Continent
WHERE c.Id_Continent = 3)A WHERE Population < 5000000

--4.	Вывести список стран и процентное соотношение их площади к суммарной пло-щади той части мира, где они находятся.


SELECT
    c.Name_Country,
    c.Square / (SELECT SUM(c2.Square) FROM Country c2 WHERE c2.Id_Continent = c.Id_Continent)  AS Percent_of_Continent_Area
FROM Country c;



--5.	Вывести список стран мира, площадь которых больше, чем средняя площадь стран той части света, где они находятся.
SELECT
    c.Name_Country,
    c.Square
FROM Country c
WHERE c.Square > (SELECT AVG(c2.Square) FROM Country c2 WHERE c2.Id_Continent = c.Id_Continent);


--6.	Вывести список стран мира, которые находятся в тех частях света, средняя плот-ность населения которых превышает общемировую.
SELECT
    c.Name_Country
FROM Country c
WHERE c.Id_Continent IN (
    SELECT c2.Id_Continent
    FROM Country c2
    GROUP BY c2.Id_Continent
    HAVING AVG(c2.Population / c2.Square) > (SELECT AVG(c3.Population / c3.Square) FROM Country c3)
);

 
--7.	Вывести список южноамериканских стран, в которых живет больше людей, чем в любой африканской стране.
SELECT * FROM dbo.Country c JOIN dbo.Continent c2 ON c.Id_Continent = c2.Id_Continent
WHERE c2.Name = 'Южная Америка'
and Population> ALL(SELECT Population FROM dbo.Country c WHERE c2.Name = 'Африка')
--8.	Вывести список африканских стран, в которых живет больше людей, чем хотя бы
--в	одной южноамериканской стране.
SELECT * FROM dbo.Country c JOIN dbo.Continent c2 ON c.Id_Continent = c2.Id_Continent
WHERE c2.Name = 'Африка'
and Population> Any(SELECT Population FROM dbo.Country c WHERE c2.Name = 'Южная Америка')
--9.	Если в Африке есть хотя бы одна страна, площадь которой больше 2 млн. кв. км, вывести список всех африканских стран.
SELECT  * FROM dbo.Country c JOIN dbo.Continent c2 ON c.Id_Continent = c2.Id_Continent
WHERE c2.Name = 'Африка'
and EXISTS (SELECT c.Name_Country FROM dbo.Country c where c2.Name = 'Африка' and Square > 2000000 )
--10.	Вывести список стран той части света, где находится страна «Фиджи».
SELECT * FROM dbo.Country c
WHERE c.Id_Continent = (SELECT  c.Id_Continent FROM dbo.Country c WHERE c.Name_Country = 'Фиджи')
--11.	Вывести список стран, население которых не превышает население страны «Фи-
--джи».
SELECT c.* FROM dbo.Country c
WHERE Population !> (SELECT Population FROM dbo.Country c WHERE Name_Country = 'Фиджи')
--12.	Вывести название страны с наибольшим населением среди стран с наименьшей площадью на каждом континенте.
SELECT * FROM dbo.Country c
where Population = (SELECT MAX(МАКС_Население) 
FROM (SELECT MIN(Square) AS МАКС_Население FROM dbo.Country c join dbo.Continent c2 ON c.Id_Continent = c2.Id_Continent 
GROUP BY c2.Name)A)

--лаб 9

--1.	Создать таблицу «Управление_ВашаФамилия». Определить основной ключ, иден-тификатор, значение по умолчанию
CREATE TABLE Control_Kornilova_Marushkina
(
ID INT CONSTRAINT Control_Kornilova_MarushkinaID PRIMARY KEY,
Surname NVARCHAR(40) CONSTRAINT DF_Control_Kornilova_Marushkina DEFAULT 'Корнилова/Марушкина'
)
--2.	Создать таблицу «Страны_ВашаФамилия». Определить основной ключ, разреше-ние / запрет на NULL, условие на вводимое значение.
CREATE TABLE Countries_Kornilova_Marushkina
(
ID INT CONSTRAINT Countries_Kornilova_MarushkinaID PRIMARY KEY,
Square INT CONSTRAINT CK_Kornilova_MarushkinaSquare CHECK (Square > 10000) NOT NULL
)
--3.	Создать таблицу «Цветы_ВашаФамилия». Определить основной ключ, значения столбца «ID» сделать уникальными, для столбца «Класс» установить значение по умолчанию «Двудольные».
CREATE TABLE Flowers_Kornilova_Marushkina
(
ID INT CONSTRAINT Flowers_Kornilova_MarushkinaID PRIMARY KEY,
Class NVARCHAR(40) CONSTRAINT DF_Flowers_Kornilova_Marushkina DEFAULT 'Двудольные'
)
--4.	Создать таблицу «Животные_ВашаФамилия». Определить основной ключ, значе-ния столбца «ID» сделать уникальными, для столбца «Отряд» установить значение по умол-чанию «Хищные».
CREATE TABLE Animal_Kornilova_Marushkina
(
ID INT CONSTRAINT Animal_Kornilova_MarushkinaID PRIMARY KEY,
Otrad NVARCHAR(40) CONSTRAINT DF_Animal_Kornilova_Marushkina DEFAULT 'Хищные'
)


--лаб 10
CREATE TABLE Learner	
(				
	ID	INT PRIMARY KEY IDENTITY(1,1),
	LastName	VARCHAR(50) NOT NULL,	
	SubjectL	VARCHAR(50) NOT NULL,	
	School	VARCHAR(50) NOT NULL,	
	Scores	FLOAT CHECK ((Scores >= 0) AND (Scores <= 100)) NULL
)				
INSERT INTO dbo.Learner

VALUES
( 'Иванова','Математика', 'Лицей', 98.5),
('Петров', 'Физика', 'Лицей', 99),
('Сидоров', 'Математика', 'Лицей', 88),
('Полухина','Физика','Гимназия',78),
( 'Матвеева','Химия', 'Лицей', 92),
('Касимов', 'Химия', 'Гимназия', 68),
('Нурулин', 'Математика', 'Гимназия', 81),
('Авдеев','Физика','Лицей',87),				
('Никитина', 'Химия', 'Лицей', 94),
('Барышева','Химия','Лицей',88)			
--1.	В таблицу «Ученики» внести новую запись для ученика школы № 18 Трошкова, оценка которого по химии неизвестна.
insert into dbo.Learner 
(		LastName,SubjectL,	School)
VALUES
( 'Трошкова','Химия', 'Школа № 18')
--2.	В таблицу «Ученики» внести три строки.
INSERT INTO dbo.Learner 

(LastName,SubjectL,	School, Scores)

VALUES

('Никишина', 'Химия', 'Лицей', 77),

('Андреев', 'Математика', 'Школа №18', 56),

('Маркин', 'Физика', 'Гимназия', 96)


--3.	В таблице «Ученики» изменить данные Трошкова, школу исправить на № 21, пред-мет на математику, а оценку на 56.
UPDATE Learner

SET

School = 'Школа №21', SubjectL = 'Математика'

WHERE

LastName = 'Трошкова'

--4.	В таблице «Ученики» изменить данные всех учеников по химии, оценку увеличить на 10%, если она ниже 60 баллов.
update Learner
set Scores= Scores+(Scores/100)*10
where SubjectL = 'Химия' and Scores<60
--5.	В таблице «Ученики» удалить данные всех учеников из школы №21.
DELETE FROM
Learner

WHERE

School = 'Школа №21'
--6.	Создать таблицу «Гимназисты» и скопировать туда данные всех гимназистов, кроме тех, которые набрали меньше 60 баллов.
SELECT

ID

,LastName

,SubjectL

,School

,Scores

INTO

Гимназисты

FROM

Learner

WHERE

School = 'Гимназия' and Scores<60


--7.	Очистить таблицу «Гимназисты».
 
 DELETE FROM Гимназисты

-----11
-- 1.	Даны числа A и B. Найти и вывести их произведение.
DECLARE @a INT, @b INT, @c INT
SET @a = 10
SET @b = 10
SET @c = @a * @b
PRINT @c
--2.	В таблице «Ученики» найти разницу между средними баллами лицеистов и гимназистов.
DECLARE @licey FLOAT, @gimn FLOAT, @diff FLOAT 
SET @licey = ( SELECT AVG(Scores) 
FROM dbo.Learner s
WHERE School = 'Лицей' )
SET @gimn = ( SELECT AVG(Scores)
FROM dbo.Learner s
WHERE School = 'Гимназия' )
SET @diff = ABS(@licey - @gimn)
PRINT @diff
--3.	В таблице «Ученики» проверить на четность количество строк.
DECLARE @col_str int
set @col_str = (Select count(s.Id) from dbo.Learner s)
if (@col_str%2 = 0)
print N'четное = ' + CAST(@col_str AS VARCHAR(4))
else 
print N'нечетное = ' + CAST(@col_str AS VARCHAR(4))
--4.	Дано четырехзначное число. Вывести сумму его цифр.
DECLARE @sum INT, @var INT, @e INT, @d INT, @s INT, @t INT
SET @sum = 1234
SET @t = @sum / 1000
SET @s = (@sum / 100) % 10
SET @d = (@sum / 10) % 10
SET @e = @sum % 10
SET @var = @e + @d + @s + @t
PRINT '@var = ' + CAST(@var AS NVARCHAR(4))
--5.	Даны случайные целые числа a, b и c. Найти наименьшее из них.
DECLARE @A_5 INT = RAND() * 100, @B_5 INT = RAND() * 100, @C_5 INT = RAND() * 100
PRINT '@A_5 = ' + CAST(@A_5 AS NVARCHAR(3))
PRINT '@B_5 = ' + CAST(@B_5 AS NVARCHAR(3))
PRINT '@C_5 = ' + CAST(@C_5 AS NVARCHAR(3))
IF @A_5 > @B_5 AND @B_5 > @C_5
 PRINT N'Наименьшее @C_5 = ' + CAST(@C_5 AS NVARCHAR(3))
IF @A_5 > @B_5 AND @B_5 < @C_5
 PRINT N'Наименьшее @B_5 = ' + CAST(@B_5 AS NVARCHAR(3))
IF @A_5 < @B_5 AND @B_5 < @C_5
 PRINT N'Наименьшее @A_5 = ' + CAST(@A_5 AS NVARCHAR(3))
IF @A_5 < @B_5 AND @B_5 > @C_5 AND @A_5 > @C_5
 PRINT N'Наименьшее @C_5 = ' + CAST(@C_5 AS NVARCHAR(3))
IF @A_5 < @B_5 AND @B_5 > @C_5 AND @A_5 < @C_5
 PRINT N'Наименьшее @A_5 = ' + CAST(@A_5 AS NVARCHAR(3))
IF @A_5 < @B_5 AND @A_5 = @C_5
PRINT N'Наименьшее @B_5 = ' + CAST(@B_5 AS NVARCHAR(3))
IF @A_5 > @B_5 AND @B_5 = @C_5
PRINT N'Наименьшее @A_5 = ' + CAST(@A_5 AS NVARCHAR(3))
--6.	Дано случайное целое число a. Проверить, делится ли данное число на 11.
DECLARE @a_6 INT = RAND() * 100
IF @a_6 % 11 = 0
PRINT CAST(@a_6 AS VARCHAR(3)) + N' делится на 11'
ELSE
PRINT CAST(@a_6 AS VARCHAR(3)) + N' не делится на 11'
--7.	Дано случайное целое число N (N < 1000). Если оно является степенью числа 3, то вывести «Да», если не является – вывести «Нет».
DECLARE @A_7 INT = RAND() * 1000
WHILE @A_7 % 3 = 0
SET @A_7 = @A_7 / 3
IF @A_7 = 1
PRINT CAST(@a_7 AS VARCHAR(4)) + N' Да'
ELSE
PRINT CAST(@a_7 AS VARCHAR(4)) + N' Нет'
--8.	Даны случайные целые числа a и b. Найти наименьший общий кратный (НОК).
DECLARE @aNOK INT = RAND() * 1000, @bNOK INT = RAND() * 1000 
PRINT '@aNOK = ' + CAST(@aNOK AS VARCHAR(4)) 
PRINT '@bNOK = ' + CAST(@bNOK AS VARCHAR(4))
WHILE @aNOK != @bNOK
BEGIN
IF @aNOK > @bNOK
SET @aNOK = @aNOK - @bNOK
ELSE
SET @bNOK = @bNOK - @aNOK
END
PRINT N'НОK = ' + CAST(@aNOK AS VARCHAR(4))
--9.	Даны два целых числа A и B (A<B). Найти сумму квадратов всех целых чисел от A до B включительно.
DECLARE @aVER INT = 2, @bA INT = 5, @SuM1 INT = 0
WHILE @aVER <= @bA
BEGIN
SET @SuM1 = @SuM1 + (@aVER * @aVER)
SET @aVER = @aVER + 1
END
PRINT N'Сумма = ' + CAST(@SuM1 AS VARCHAR(5))
--10.	Найти первое натуральное число, которое при делении на 2, 3, 4, 5, и 6 дает остаток 1, но делится на 7.
DECLARE @A10 INT = 1
WHILE @A10 < 500
BEGIN
IF(@A10 % 2 = 1) AND (@A10 % 3 = 1) AND (@A10 % 4 = 1) AND (@A10 % 5 = 1) AND (@A10 % 6 = 1) AND (@A10 % 7 = 0)
PRINT @A10
SET @A10 = @A10 + 1
END
--11.	Вывести свою фамилию на экран столько раз, сколько в нем букв.
DECLARE @surname NVARCHAR(50)
SET @surname = N'Корнилова'
DECLARE @i INT
SET @i = 1
WHILE @i <= LEN(@surname)
BEGIN
    PRINT @surname
    SET @i = @i + 1
END
--12.	Напишите код для вывода на экран с помощью цикла:

--Н

--иНи

--жиНиж

--нжиНижн

--енжиНижне

--венжиНижнев

--авенжиНижнева

--равенжиНижневар

--травенжиНижневарт

--отравенжиНижневарто

--вотравенжиНижневартов

--свотравенжиНижневартовс

--ксвотравенжиНижневартовск
 
 DECLARE @text NVARCHAR(MAX)
SET @text = N'Нижневартовск'
DECLARE @i INT
SET @i = 1
WHILE @i <= LEN(@text)
BEGIN
    DECLARE @formattedText NVARCHAR(MAX)
    IF @i = 1
    BEGIN
        SET @formattedText = SUBSTRING(@text, 1, 1)
    END
    ELSE
    BEGIN
        SET @formattedText = REPLICATE('', LEN(@text) - @i) + REVERSE(SUBSTRING(@text, 2, @i - 1)) + SUBSTRING(@text, 1, @i)
    END    
    PRINT @formattedText
    SET @i = @i + 1
END

----12
--1.	Напишите функцию для вывода названия страны с заданной столицей, и вызовите ее.

CREATE FUNCTION Func1
(@MainCity AS VARCHAR(100))
RETURNS VARCHAR(100)
AS 
BEGIN
 DECLARE @S AS VARCHAR(100) SELECT
  @S = Name_Country FROM
  Country WHERE
  Capital = @MainCity RETURN @S + ' ' + @MainCity
END


SELECT dbo.Func1('Вена')
--2. Напишите функцию для перевода населения в млн. чел. и вызовите ее.
CREATE FUNCTION Func2(
@Population AS FLOAT)
RETURNS FLOAT
AS
BEGIN DECLARE @P AS FLOAT
 SET @P = ROUND(@Population / 1000000, 2) RETURN @P
END

SELECT Name_Country,Capital , Id_Continent,
Square, dbo.Func2(Population) AS [Население млн.чел]
FROM Country 
--3. Напишите функцию для вычисления плотности населения заданной части света и вызовите ее.
CREATE FUNCTION Func_3
(@Population AS INT,@Square AS FLOAT)
RETURNS FLOAT
AS
BEGIN
 DECLARE @P AS FLOAT SET @P = ROUND(CAST(@Population AS FLOAT) / @Square, 2)
 RETURN @P
 END

SELECT
Name,Capital,
c2.Name,Population,
Square,dbo.Func_3(Population, Square) AS Плотность
FROM Country c join Continent c2 on c.Id_Continent = c2.Id_Continent
WHERE c2.Name = 'Европа'
ORDER BY Плотность DESC
--4. Напишите функцию для поиска страны, третьей по населению и вызовите ее.
Create function Func_4()
Returns VARCHAR(100)
AS BEGIN 
 DECLARE @P AS VARCHAR(100) DECLARE @M1 AS FLOAT
 DECLARE @M2 AS FLOAT DECLARE @M3 AS FLOAT
 SELECT 
  @M1 = MAX(Population) FROM 
  Country

 Select   @M2 = Max(Population)
 From Country
 Where Population < @M1
 Select   @M3 = Max(Population)
 From Country Where Population < @M2
 SELECT @P = Name_Country
 FROM Country WHERE Population = @M3
 Return @p
END

Select dbo.Func_4() AS [3 по населению страна]
--5. Напишите функцию для поиска страны с максимальным населением в заданной ча-сти света и вызовите ее. 
--Если часть света не указана, выбрать Азию.
CREATE function Func_5
(@Cont AS VARCHAR(100) = 'Азия')
returns varchar(100)as
begin
declare @p as varchar(100)
declare @m as float
select @m = max(Population)from Country c join Continent c2 on c.Id_Continent = c2.Id_Continent
where Name = @Cont
select @p = Name_Country
From Country c join Continent c2 on c.Id_Continent = c2.Id_Continent
where Name = @Cont and Population = @m 
return @p
end

select dbo.Func_5('Европа')
select dbo.Func_5(DEFAULT)
--6. Напишите функцию для замены букв в заданном слове от третьей до предпослед-ней на “тест” и 
--примените ее для столицы страны.
create function func_6
(@a as varchar(100)
)returns varchar(100)
as 
begin
return LEFT(@A, 2) + replicate('Тест', LEN(@a)-2) + RIGHT(@a,1)
end

select dbo.func_6(Capital) from Country
--7. Напишите функцию, которая возвращает количество стран, не содержащих в назва-нии заданную букву.
Create function func_7
(@c as char(1)
)returns int
as
begin
declare @k as int
select @k = Count(*) from Country
where charindex(@c, Name_Country) = 0
return @K
end

select dbo.func_7('г')
--8. Напишите функцию для возврата списка стран с площадью меньше заданного числа и вызовите ее.
Create function func_8
( @n as int)returns table
as
return (select Name_Country, Capital, Square, Population, ID_Continent from Country where Square < @N)

select * from dbo.func_8(25600)
--9. Напишите функцию для возврата списка стран с населением в интервале заданных значений и вызовите ее.
create function func_9
( @a as float, @b as float)
returns table
as return (select Name_Country, Capital, Square, Population, ID_Continent from Country 
where Population between @a and @b )

select * from dbo.func_9(100000, 10000000)
--10. Напишите функцию для возврата таблицы с названием континента и суммарным населением и вызовите ее.
create function func_10()
returns @countSpr 
table (name varchar(100), spread float)
as begin
insert @countSpr select ID_Continent, sum(Population) from Country
group by ID_Continent
return
end

select * from dbo.func_10()
--11. Напишите функцию IsPalindrom(P) целого типа, возвращающую 1, если целый па-раметр P (P > 0) является палиндромом,
--и 0 в противном случае.
CREATE FUNCTION dbo.IsPalindrom (@n AS INT)
RETURNS INT
AS
BEGIN
    DECLARE @temp AS INT
    SET @temp = @n
    DECLARE @rev AS INT
    SET @rev = 0
    DECLARE @dig AS INT
    DECLARE @result AS INT
    WHILE (@n > 0)
    BEGIN
        SET @dig = @n % 10
        SET @rev = @rev * 10 + @dig
        SET @n = @n / 10
    END
    IF (@temp = @rev)
        SET @result = 1
    ELSE
        SET @result = 0
    RETURN @result
END
SELECT dbo.IsPalindrom(121)
--12. Напишите функцию Quarter(x, y) целого типа, определяющую номер координатной четверти, содержащей точку с ненулевыми вещественными координатами (x, y).
CREATE FUNCTION Quarter(@x FLOAT, @y FLOAT)
RETURNS INT
AS
BEGIN
    DECLARE @Quadrant INT;    IF @x > 0 AND @y > 0
        SET @Quadrant = 1;    ELSE IF @x < 0 AND @y > 0
        SET @Quadrant = 2;    ELSE IF @x < 0 AND @y < 0
        SET @Quadrant = 3    ELSE IF @x > 0 AND @y < 0
        SET @Quadrant = 4;    ELSE
        SET @Quadrant = 0;
    RETURN @Quadrant;END;
--13. Напишите функцию IsPrime(N) целого типа, возвращающую 1, если целый пара-метр N (N > 1) является простым числом, и 0 в противном случае.
CREATE FUNCTION IsPrime(@N INT)
RETURNS INT
AS
BEGIN    IF @N <= 1
        RETURN 0;
    DECLARE @IsPrime INT;    SET @IsPrime = 1;
    DECLARE @Divisor INT;
    SET @Divisor = 2;
    WHILE @Divisor <= SQRT(@N)    BEGIN
        IF @N % @Divisor = 0        BEGIN
            SET @IsPrime = 0;            BREAK;
        END
        SET @Divisor = @Divisor + 1;    END
    RETURN @IsPrime;END;
--14. Напишите код для удаления созданных вами функций
DROP FUNCTION  Func1, Func2, Func3, Func4, Func5, Func6, Func7, Func8, Func9, Func10, dbo.IsPalindrom, IsPrime, Quarter


 -----13
-- 1.	Создайте представление, содержащее список африканских стран, население которых больше 10 млн. чел.,
--а площадь больше 500 тыс. кв. км, и используйте его.
 Create View View_1
 As
 Select c.* from dbo.Country c join Continent c2 on c.Id_Continent = c2.Id_Continent
 Where c.Population > 10000000 and c.Square > 500000 and c2.Name = 'Африка'
--2.	Создайте представление, содержащее список континентов, среднюю площадь стран, которые находятся на нем, среднюю плотность населения, и используйте его.
Create view View_2 (Name, Square, Population)
as
Select c2.Name 'Континент', avg(c.Square) 'Площадь',avg(c.Population/ c.Square) 'Плотность' from dbo.Country c 
join Continent c2 on c.Id_Continent = c2.Id_Continent
Group by c2.Name
--3.	Создайте представление, содержащее фамилии преподавателей, их должность, зва-ние, степень, место работы, количество их экзаменов, и используйте его.
Create view View_3
AS
Select e.LastName, p.Name_Pozition,  r.Name_Rank, d2.Name_Degree,d.Name_Departament, count(emp.Id_Exam) 'Количество экзаменов'  from  dbo.Employee e 
JOIN dbo.Exame emp ON e.Id_Number = emp.Id_Teacher 
JOIN dbo.Departament d ON e.CipherID = d.Cipher
join dbo.Pozition p on p.Id_Pozition = e.Id_Pozition
join dbo.Rank r on r.Id_Rank=e.Id_Rank
join dbo.Degree d2 on d2.Id_Degree = e.Id_Degree
GROUP BY  e.LastName, p.Name_Pozition, r.Name_Rank, d2.Name_Degree,d.Name_Departament
--4.	Создайте табличную переменную, содержащую три столбца («Номер месяца», «Название месяца», «Количество дней»), 
--заполните ее для текущего года, и используйте ее.
DECLARE @View_4 TABLE
(
    [Номер месяца] INT,
    [Название месяца] NVARCHAR(MAX),
    [Количество дней] INT
)
DECLARE @Date DATE = DATEADD(YEAR, DATEDIFF(YEAR, 0, GETDATE()), 0) -- Начало текущего года
DECLARE @Year INT = YEAR(GETDATE()) -- Текущий год
WHILE @Year = YEAR(@Date)
BEGIN
    DECLARE @MonthName NVARCHAR(MAX) = FORMAT(@Date, 'MMMM', 'ru-RU')
    DECLARE @MonthNumber INT = MONTH(@Date)
    DECLARE @DaysInMonth INT = DAY(EOMONTH(@Date))
    INSERT INTO @View_4 ([Номер месяца], [Название месяца], [Количество дней])
    VALUES (@MonthNumber, @MonthName, @DaysInMonth)
    SET @Date = DATEADD(MONTH, 1, @Date) 
END
SELECT * FROM @View_4
--5.	Создайте табличную переменную, содержащую список стран, площадь которых в
--100	раз меньше, чем средняя площадь стран на континенте, где они находятся, и используйте ее.
DECLARE @View_5 TABLE
(
Name NVARCHAR(MAX),
Square FLOAT,
Continenty NVARCHAR(MAX)
)
INSERT INTO @View_5
SELECT Name_Country, Square, c2.Name FROM dbo.Country c join Continent c2 on c.Id_Continent=c2.Id_Continent
WHERE Square * 100 < (SELECT AVG(Square) FROM dbo.Country c)
SELECT Name, Square, Continenty FROM @View_5 


--6.	Создайте локальную временную таблицу, имеющую три столбца («Номер недели», «Количество экзаменов», «Количество студентов»), заполните и используйте ее.
SELECT
DATEPART(WEEK,  Date_Exam) AS [Номер недели], 
COUNT(DISTINCT e.Id_Discipline) AS [Количество экзаменов], 
COUNT(DISTINCT e.Id_Student) AS [Количество студентов]
INTO View_6
FROM dbo.Exame e
GROUP BY DATEPART(WEEK, Date_Exam)

SELECT * FROM View_6
--7.	Создайте глобальную временную таблицу, содержащую название континентов, наибольшую и наименьшую площадь стран на них, заполните и используйте ее.
CREATE TABLE View_7
(
Continent VARCHAR(50),
Square FLOAT,
Square1 FLOAT
)
INSERT INTO View_7
(Continent, Square, Square1)
SELECT Id_Continent,
MAX(Square) AS [Наибольшая площадь],
MIN(Square) AS [Наименьшая площадь]
FROM dbo.Country c
group by Id_Continent
SELECT * FROM View_7
select * from dbo.Country
order by Square desc
--8.	С помощью обобщенных табличных выражений напишите запрос для вывода списка сотрудников, чьи зарплаты меньше, чем средняя зарплата по факультету, их зарплаты и назва-ние факультета.
WITH СЗК AS
(SELECT d.Name_Departament AS Кафедра, d.Cipher, AVG(Salary) AS [Средняя зарплата по кафедре]
FROM dbo.Employee emp
INNER JOIN dbo.Departament d ON d.Cipher = emp.CipherID join dbo.Pozition p on p.Id_Pozition= emp.Id_Pozition
GROUP BY d.Name_Departament, d.Cipher)
SELECT emp.LastName, Salary, a.Кафедра, a.[Средняя зарплата по кафедре]
FROM dbo.Employee emp
INNER JOIN СЗК a ON a.Cipher = emp.CipherID join dbo.Pozition p on p.Id_Pozition= emp.Id_Pozition
WHERE Salary < a.[Средняя зарплата по кафедре]
select * from dbo.Employee emp
--9.	Напишите команды для удаления всех созданных вами представлений.
DROP VIEW dbo.View_1

 DROP VIEW dbo.View_2

 DROP VIEW dbo.View_3 

 ------14

-- 1.	Создайте курсор, содержащий отсортированные по баллам фамилии и баллы уче-ников, откройте его, выведите первую строку, закройте и освободите курсор.
DECLARE myCursor CURSOR FOR
SELECT  LastName, Scores
FROM Learner
ORDER BY Scores DESC;
OPEN myCursor;
DECLARE @LastName NVARCHAR(MAX);
DECLARE @Scores INT;
FETCH NEXT FROM myCursor INTO @LastName, @Scores;
PRINT 'Фамилия: ' + @LastName + ', Баллы: ' + CAST(@Scores AS NVARCHAR(MAX));
CLOSE myCursor;
DEALLOCATE myCursor;
--2.	Создайте курсор с прокруткой, содержащий список учеников, откройте его, выве-дите пятую, предыдущую, с конца четвертую, следующую, первую строку, закройте и освобо-дите курсор.
DECLARE myScrollCursor CURSOR SCROLL FOR
SELECT LastName, Scores
FROM Learner
ORDER BY LastName;
OPEN myScrollCursor;
DECLARE @LastName NVARCHAR(MAX);
DECLARE @Scores INT;
FETCH ABSOLUTE 5 FROM myScrollCursor INTO @LastName, @Scores;
PRINT 'Пятая строка: Фамилия: ' + @LastName + ', Баллы: ' + CAST(@Scores AS NVARCHAR(MAX));
FETCH PRIOR FROM myScrollCursor INTO @LastName, @Scores;
PRINT 'Предыдущая строка: Фамилия: ' + @LastName + ', Баллы: ' + CAST(@Scores AS NVARCHAR(MAX));
FETCH RELATIVE -4 FROM myScrollCursor INTO @LastName, @Scores;
PRINT 'Четвертая с конца строка: Фамилия: ' + @LastName + ', Баллы: ' + CAST(@Scores AS NVARCHAR(MAX));
FETCH NEXT FROM myScrollCursor INTO @LastName, @Scores;
PRINT 'Следующая строка: Фамилия: ' + @LastName + ', Баллы: ' + CAST(@Scores AS NVARCHAR(MAX));
FETCH FIRST FROM myScrollCursor INTO @LastName, @Scores;
PRINT 'Первая строка: Фамилия: ' + @LastName + ', Баллы: ' + CAST(@Scores AS NVARCHAR(MAX));
CLOSE myScrollCursor;
DEALLOCATE myScrollCursor;

--3.	Создайте курсор с прокруткой, содержащий список учеников, откройте его, выве-дите последнюю, шесть позиций назад находящуюся, четыре позиций вперед находящуюся строку, закройте и освободите курсор.
DECLARE myScrollCursor CURSOR SCROLL FOR
SELECT LastName, Scores
FROM Learner
ORDER BY LastName;
OPEN myScrollCursor;
DECLARE @LastName NVARCHAR(MAX);
DECLARE @Scores INT;
FETCH LAST FROM myScrollCursor INTO @LastName, @Scores;
PRINT 'Последняя строка: Фамилия: ' + @LastName + ', Баллы: ' + CAST(@Scores AS NVARCHAR(MAX));
FETCH RELATIVE -6 FROM myScrollCursor INTO @LastName, @Scores;
PRINT 'Строка, находящаяся на шесть позиций назад: Фамилия: ' + @LastName + ', Баллы: ' + CAST(@Scores AS NVARCHAR(MAX));
FETCH RELATIVE 4 FROM myScrollCursor INTO @LastName, @Scores;
PRINT 'Строка, находящаяся на четыре позиции вперед: Фамилия: ' + @LastName + ', Баллы: ' + CAST(@Scores AS NVARCHAR(MAX));
CLOSE myScrollCursor;
DEALLOCATE myScrollCursor;
--4.	С помощью курсора, вычислите сумму баллов у учеников с наибольшим и наименьшим баллом.
DECLARE @MaxScore INT;
DECLARE @MinScore INT;
DECLARE myCursor CURSOR FOR
SELECT MAX(Scores) AS MaxScore, MIN(Scores) AS MinScore
FROM Learner;
OPEN myCursor;
FETCH NEXT FROM myCursor INTO @MaxScore, @MinScore;
DECLARE @SumMaxScore INT;
DECLARE @SumMinScore INT;
SET @SumMaxScore = 0;
SET @SumMinScore = 0;
DECLARE @StudentScore INT;
DECLARE maxScoreCursor CURSOR FOR
SELECT Scores
FROM Learner
WHERE Scores = @MaxScore;
OPEN maxScoreCursor;
FETCH NEXT FROM maxScoreCursor INTO @StudentScore;
WHILE @@FETCH_STATUS = 0
BEGIN
    SET @SumMaxScore = @SumMaxScore + @StudentScore;
    FETCH NEXT FROM maxScoreCursor INTO @StudentScore;
END;
CLOSE maxScoreCursor;
DEALLOCATE maxScoreCursor;
DECLARE minScoreCursor CURSOR FOR
SELECT Scores
FROM Learner
WHERE Scores = @MinScore;
OPEN minScoreCursor;
FETCH NEXT FROM minScoreCursor INTO @StudentScore;
WHILE @@FETCH_STATUS = 0
BEGIN
    SET @SumMinScore = @SumMinScore + @StudentScore;
    FETCH NEXT FROM minScoreCursor INTO @StudentScore;
END;
CLOSE minScoreCursor;
DEALLOCATE minScoreCursor;
PRINT 'Сумма баллов у учеников с наибольшим баллом: ' + CAST(@SumMaxScore AS NVARCHAR(MAX));
PRINT 'Сумма баллов у учеников с наименьшим баллом: ' + CAST(@SumMinScore AS NVARCHAR(MAX));
CLOSE myCursor;
DEALLOCATE myCursor;
--5.	С помощью курсора, сгенерируйте строку вида «Ученики <список фамилий и названий предметов, разделенных запятыми> участвовали в олимпиаде».
DECLARE myCursor CURSOR FOR
SELECT LastName, SubjectL
FROM Learner ;
OPEN myCursor;
DECLARE @LastameName NVARCHAR(MAX);
DECLARE @LastName NVARCHAR(MAX);
DECLARE @SubjectL NVARCHAR(MAX);
SET @LastameName = 'Ученики ';
DECLARE @AddData BIT;
SET @AddData = 0;
FETCH NEXT FROM myCursor INTO @LastName, @SubjectL;
WHILE @@FETCH_STATUS = 0
BEGIN
    IF @AddData = 1
        SET @LastameName = @LastameName + ', ';
    SET @LastameName = @LastameName + @LastName + ' (' + @SubjectL + ')';
    SET @AddData = 1;
    FETCH NEXT FROM myCursor INTO @LastName, @SubjectL;
END;
CLOSE myCursor;
DEALLOCATE myCursor;
SET @LastameName = @LastameName + ' участвовали в олимпиаде';
PRINT @LastameName;
--6.	Создайте курсор, содержащий список учеников, с его помощью выведите учеников с нечетной позицией.
DECLARE myCursor CURSOR FOR
SELECT LastName
FROM Learner;
OPEN myCursor;
DECLARE @LastName NVARCHAR(MAX);
DECLARE @Position INT;
SET @Position = 1;
FETCH NEXT FROM myCursor INTO @LastName;
WHILE @@FETCH_STATUS = 0
BEGIN
    IF @Position % 2 = 1
    BEGIN
        PRINT 'Ученик с нечетной позицией: ' + @LastName;
    END
    SET @Position = @Position + 1;
    FETCH NEXT FROM myCursor INTO @LastName;
END;
CLOSE myCursor;
DEALLOCATE myCursor;
--7.	Создайте курсор, содержащий отсортированный по убыванию баллов список уче-ников, откройте его, для каждого ученика выведите фамилию, предмет, школу, баллы и про-центное соотношение баллов с предыдущим учеником.
DECLARE myCursor CURSOR FOR
SELECT LastName, SubjectL, School, Scores
FROM Learner
ORDER BY Scores DESC;
OPEN myCursor;
DECLARE @LastName NVARCHAR(MAX);
DECLARE @SubjectL NVARCHAR(MAX);
DECLARE @School NVARCHAR(MAX);
DECLARE @Scores INT;
DECLARE @LastScores INT;
DECLARE @Procent DECIMAL(5,2);
SET @LastName = '';
SET @SubjectL = '';
SET @School = '';
SET @Scores = 0;
SET @LastScores = 0;
FETCH NEXT FROM myCursor INTO @LastName, @SubjectL, @School, @Scores;
WHILE @@FETCH_STATUS = 0
BEGIN
    IF @LastScores = 0
        SET @Procent = 0;
    ELSE
        SET @Procent = (CAST(@Scores AS DECIMAL(5,2)) / CAST(@LastScores AS DECIMAL(5,2))) * 100;
    PRINT 'Фамилия: ' + @LastName;
    PRINT 'Предмет: ' + @SubjectL;
    PRINT 'Школа: ' + @School;
    PRINT 'Баллы: ' + CAST(@Scores AS NVARCHAR(MAX));
    PRINT 'Процентное соотношение с предыдущим учеником: ' + CAST(@Procent AS NVARCHAR(MAX)) + '%';
    PRINT '---------------------------------------';
    SET @LastScores = @Scores;
    FETCH NEXT FROM myCursor INTO @LastName, @SubjectL, @School, @Scores;
END;
CLOSE myCursor;
DEALLOCATE myCursor;


------------15
--1.	Вывести список учеников и разницу между баллами ученика и максимальным бал-лом в каждой строке.
 SELECT s.LastName, s.Scores, s.Scores - MAX(s.Scores) OVER() AS Разница FROM dbo.Learner s
--2.	Вывести список учеников и процентное соотношение к среднему баллу в каждой строке.
SELECT s.LastName, s.Scores, s.Scores * 100 / AVG(s.Scores) OVER() AS Процент  FROM dbo.Learner s
--3.	Вывести список учеников и минимальный балл в школе в каждой строке.
SELECT s.LastName, MIN(s.Scores) OVER(PARTITION BY s.School) AS Мин_балл  FROM dbo.Learner s
--4.	Вывести список учеников и суммарный балл в школе в каждой строке, отсортиро-вать по школам в оконной функции.
SELECT s.LastName, SUM(s.Scores) OVER(PARTITION BY s.School ORDER BY s.School) AS сумм_балл FROM dbo.Learner s
--5.	Вывести список учеников и номер строки при сортировке по фамилиям в обратном алфавитном порядке.
SELECT ROW_NUMBER() OVER (ORDER BY s.LastName DESC) AS Номер_строки, s.LastName
FROM dbo.Learner s
ORDER BY s.LastName DESC
--6.	Вывести список учеников, номер строки внутри школы и количество учеников в школе при сортировке по баллам по убыванию.
  SELECT  ROW_NUMBER() OVER (PARTITION BY s.School ORDER BY s.Scores DESC),
s.LastName,  COUNT(*) OVER (PARTITION BY s.School)
FROM  dbo.Learner s
ORDER BY  s.Scores DESC
--7.	Вывести список учеников и ранг по баллам.
SELECT s.LastName,  s.Scores,RANK() OVER (ORDER BY s.Scores DESC) AS ранг
FROM dbo.Learner s
--8.	Вывести список учеников и сжатый ранг по баллам. Результат отсортировать по фамилии в алфавитном порядке.
SELECT  s.LastName, s.Scores,  DENSE_RANK() OVER (ORDER BY s.Scores DESC) AS сжатый_ранг
FROM  dbo.Learner s
ORDER BY  s.LastName ASC
--9.	Вывести список учеников, распределенных по пяти группам по фамилии.
SELECT
NTILE(5) OVER(ORDER BY s.LastName) AS Группа,s.LastName,s.SubjectL,s.School,s.Scores
FROM
dbo.Learner s
--10.	Вывести список учеников, распределенных по трем группам по баллам внутри школы.
SELECT
NTILE(3) OVER(ORDER BY s.Scores) AS Группа ,s.LastName,s.SubjectL,s.School,s.Scores
FROM
dbo.Learner s
WHERE s.School = 'Лицей'
--11.	Вывести список учеников и разницу с баллами ученика, находящегося выше на три позиции при сортировке по возрастанию баллов.
SELECT  s.LastName,
  s.Scores,  s.Scores - LAG(s.Scores, 3) OVER (ORDER BY s.Scores ASC) AS Разница
FROM   dbo.Learner s
ORDER BY  s.Scores ASC
--12.	Вывести список учеников и разницу с баллами следующего ученика при сорти-ровке по убыванию баллов, значение по умолчанию использовать 0.
 SELECT s.LastName AS ученик, COALESCE(s.Scores - s1.Scores, 0) AS разница_с_следующим_учеником
FROM dbo.Learner s
LEFT JOIN dbo.Learner s1 ON s.ID = s1.ID + 1
ORDER BY s.Scores DESC;
--------16

--1.	Напишите запрос, который выводит максимальный балл учеников по школам, по каждому предмету по каждой школе и промежуточные итоги.
SELECT MAX(s.Scores) 'Максимальный балл', s.School, s.SubjectL FROM dbo.Learner s 
GROUP BY s.SubjectL, s.School WITH ROLLUP
--2.	Напишите запрос, который выводит минимальный балл учеников по школам и по предметам, и промежуточные итоги.
SELECT s.SubjectL, 
s.School,MIN(s.Scores) AS мин_балл 
FROM dbo.Learner s 
GROUP BY s.SubjectL, s.School WITH CUBE 
--3.	Напишите запрос, который выводит средний балл учеников по школам и по предметам.
 SELECT s.SubjectL,s.School,AVG(s.Scores) AS средний_балл 
FROM dbo.Learner s 
GROUP BY GROUPING SETS(s.SubjectL, s.School) 
--4.	Напишите запрос, который выводит количество учеников по каждой школе по пред-метам и промежуточные итоги. NULL значения заменить на соответствующий текст.
SELECT COALESCE(s.SubjectL,  'ИТОГО') AS Предмет,COALESCE(s.School, 'Итого') AS Школа, 
COUNT(s.LastName) AS Количество
FROM dbo.Learner s 
GROUP BY ROLLUP(s.SubjectL, s.School) 
--5.	Напишите запрос, который выводит суммарный балл учеников по школам и по пред-метам, и промежуточные итоги. В итоговых строках NULL значения заменить на соответству-ющий текст в зависимости от группировки.
SELECT 
IIF(GROUPING(s.SubjectL)=1, 'ИТОГО', s.SubjectL) AS Предмет, 
IIF(GROUPING(s.School)=1, 'Итого', s.School) AS Школа , 
COUNT(s.LastName) AS Количество
FROM dbo.Learner s 
GROUP BY CUBE(s.SubjectL,s.School)
--6.	Напишите запрос, который выводит максимальный балл учеников по школам и по предметам. В итоговых строках NULL значения заменить на соответствующий текст в зави-симости от уровней группировки.
SELECT CASE GROUPING_ID(s.SubjectL, s.School) 
WHEN 1 THEN 'Итого по предметам' 
WHEN 3 THEN 'Итого' 
ELSE ''END AS Итого ,
ISNULL(s.SubjectL, '') AS Предмет,ISNULL(s.School, '') AS Школа ,MAX(s.Scores) AS Количество
FROM dbo.Learner s
GROUP BY ROLLUP(s.SubjectL, s.School) 
--7.	Напишите запрос, который выводит средний балл учеников по школам в столбцы.
SELECT s.School, AVG(s.Scores) AS Average_Score
FROM dbo.Learner s 
GROUP BY s.School
--8.	Напишите запрос, который выводит средний балл учеников по школам в столбцы и по предметам в строки.
SELECT s.SubjectL, AVG(CASE WHEN s.School = 'Гимназия' THEN s.Scores END) AS 'Гимназия', 
AVG(CASE WHEN s.School = 'Лицей' THEN s.Scores END) AS 'Лицей'FROM dbo.Learner s
GROUP BY s.SubjectL;
--9.	Напишите запрос, который выводит названия предметов, фамилии учеников и школы в один столбец.
  SELECT CONCAT(s.SubjectL, ', ', s.LastName, ', ', s.School) AS Info
 FROM dbo.Learner s
 --------17
 
--1.	Создайте и запустите динамический SQL-запрос, выбирающий первые N строк из заданной таблицы.
DECLARE @DSQL VARCHAR(100)
DECLARE @TN VARCHAR(50)
SET @TN = 'Ученики'
SET @DSQL = 'SELECT top 3 * from dbo.Learner s' + @TN
EXECUTE (@DSQL)
--2.	Создайте и запустите динамический SQL-запрос, выбирающий все страны из таб-лицы «Страны», последняя буква названия которых расположена в заданном диапазоне.
DECLARE @L1 CHAR(1)
DECLARE @L2 CHAR(1)
SET @L1 = 'а'
SET @L2 = 'д'
EXECUTE ('SELECT c.* FROM dbo.Country c WHERE c.Name_Country LIKE ''%[' + @L1 + '-' + @L2 +']''')
--3.	Создайте временную таблицу #Temp и добавьте к ней название столбцов таблицы «Страны». 
--Создайте курсор, который, построчно читая таблицу #Temp, выбирает каждый раз соответствующий столбец из таблицы «Страны».
CREATE TABLE #Temp (
  Name VARCHAR(255),
  Capital VARCHAR(255),
  Square FLOAT,
  Population BIGINT,
  Continent VARCHAR(255)
);
INSERT INTO #Temp (Name, Capital, Square, Population, Continent)
SELECT Name_Country, Capital, Square, Population, c2.Name
FROM Country c join dbo.Continent c2 on c.Id_Continent = c2.Id_Continent;
DECLARE cursor_countries1 CURSOR FOR 
SELECT Name, Capital, Square, Population, Continent
FROM #Temp;
DECLARE @Name VARCHAR(255),
        @Capital VARCHAR(255),
        @Square FLOAT,
        @Population BIGINT,
        @Continent VARCHAR(255);
OPEN cursor_countries1;
FETCH NEXT FROM cursor_countries1 INTO @Name, @Capital, @Square, @Population, @Continent;
WHILE @@FETCH_STATUS = 0
BEGIN
PRINT @Name;
FETCH NEXT FROM cursor_countries1 INTO @Name, @Capital, @Square, @Population, @Continent;
END
CLOSE cursor_countries1;
DEALLOCATE cursor_countries1;
DROP TABLE #Temp;
--4.	Создайте процедуру, которая принимает как параметр список столбцов, название таблицы и выбирает заданные столбцы из заданной таблицы.
CREATE PROCEDURE SelectColumnsFromTable(
    @columns VARCHAR(MAX),
    @tableName VARCHAR(100)
)
AS
BEGIN
    DECLARE @sqlQuery NVARCHAR(MAX)
    SET @sqlQuery = 'SELECT ' + @columns + ' FROM ' + @tableName  
    EXEC sp_executesql @sqlQuery
END
EXEC SelectColumnsFromTable 'Name, Capital, Square', 'Countrу'
--5.	Создайте процедуру, принимающую как параметр список столбцов, название таб-лицы, название проверяемого столбца, знак сравнения, значение проверки и выбирающую за-данные столбцы из заданной таблицы в заданных условиях.
CREATE PROCEDURE SelectProcedur
    @Columns NVARCHAR(MAX),
    @TableName NVARCHAR(MAX),
    @CheckColumn NVARCHAR(MAX),
    @ComparisonOperator NVARCHAR(2),
    @ComparisonValue INT
AS
BEGIN
    DECLARE @SQL NVARCHAR(MAX)
    SET @SQL = 'SELECT ' + @Columns + ' FROM ' + @TableName + ' WHERE ' + @CheckColumn + ' ' + @ComparisonOperator + ' ' + CAST(@ComparisonValue AS NVARCHAR(MAX)) 
    EXEC sp_executesql @SQL
END
EXEC SelectProcedur 'Name, Capital, Square', 'Countrу', 'Population', '>', 100000
--6.	Выберите список европейских стран из таблицы «Страны» и экспортируйте в RAW формате XML.
Select c.* from dbo.Country c join Continent c2 on c.Id_Continent= c2.Id_Continent
Where c2.Name = 'Европа'
For XML RAW
--7.	Выберите список стран с населением больше 100 млн. чел. из таблицы «Страны» и экспортируйте в PATH формате XML.
Select c.* from dbo.Country c
Where c.Population > 100000000
For XML PATH
--8.	Выберите список учеников из школы «Лицей» из таблицы «Ученики» и экспорти-руйте в PATH формате JSON
Select s.* from dbo.Learner s
Where s.School = 'Лицей'
FOR JSON PATH