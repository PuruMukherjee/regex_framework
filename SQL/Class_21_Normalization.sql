CREATE DATABASE sql_wknd_normalization;

USE sql_wknd_normalization;
--- NORMALIZATION

DROP TABLE IF EXISTS my_contacts;

CREATE TABLE my_contacts
	(
		contact_id INT NOT NULL PRIMARY KEY IDENTITY(1,1)
		,last_name VARCHAR(30) NOT NULL
		,first_name VARCHAR(30) NOT NULL
		,email VARCHAR(50) NOT NULL
		,gender CHAR(1) NOT NULL
		,birthday DATE NOT NULL
		,profession VARCHAR(50) NOT NULL
		,zip_code CHAR(6) NOT NULL
		,city_name VARCHAR(40) NOT NULL
		,state_name VARCHAR(40) NOT NULL
		,[status]  VARCHAR(20) NOT NULL
		,interests VARCHAR(100) NOT NULL
		,seeking VARCHAR(100) NOT NULL
	);



INSERT INTO my_contacts(last_name,
    first_name,email,gender,birthday,profession,zip_code,city_name,state_name,status,interests,
    seeking)VALUES('Ahluwalia', 'Advik','advik_ahluwalia@dummyemail.com','M','1991-10-10','Dentist','759646',
    'Cochin', 'Kerela', 'Single', 'Cycling,Trekking,Coding', 'References,Job'
    );
INSERT INTO my_contacts(last_name,
    first_name,email,gender,birthday,profession,zip_code,city_name,state_name,status,interests,
    seeking)VALUES('Anand', 'Asmee','asmee_anand@dummyemail.com','M','1991-10-10','Engineer','636964',
    'Vijaywada', 'Andra Pradesh', 'Single', 'Swimming,Athletics,Marathon', 'Common Interest,Job'
    );
INSERT INTO my_contacts(last_name,
    first_name,email,gender,birthday,profession,zip_code,city_name,state_name,status,interests,
    seeking)VALUES('Basu', 'Krishna','krishna_basu@dummyemail.com','M','1991-10-10','Architect','355597',
    'Kolkata', 'West Bengal', 'Single', 'Cycling,Hiking,Swimming', 'Relationship,Job'
    );
INSERT INTO my_contacts(last_name,
    first_name,email,gender,birthday,profession,zip_code,city_name,state_name,status,interests,
    seeking)VALUES('Das', 'Advik','advik_das@dummyemail.com','M','1991-10-10','Physician','365266',
    'Indore', 'Madhya Pradesh', 'Single', 'Athletics,Cricket,Boxing', 'Relationship,Common Interest'
    );
INSERT INTO my_contacts(last_name,
    first_name,email,gender,birthday,profession,zip_code,city_name,state_name,status,interests,
    seeking)VALUES('Ghosh', 'Navya','navya_ghosh@dummyemail.com','M','1991-10-10','Software Developer','658598',
    'Kannur', 'Kerela', 'Single', 'Cycling,Hiking,Cricket', 'Job,References'
    );
INSERT INTO my_contacts(last_name,
    first_name,email,gender,birthday,profession,zip_code,city_name,state_name,status,interests,
    seeking)VALUES('Ahluwalia', 'Mithila','mithila_ahluwalia@dummyemail.com','M','1991-10-10','Chef','688587',
    'Vijaywada', 'Andra Pradesh', 'Single', 'Cricket,Trekking,Athletics', 'References,Training'
    );
INSERT INTO my_contacts(last_name,
    first_name,email,gender,birthday,profession,zip_code,city_name,state_name,status,interests,
    seeking)VALUES('Kumar', 'Ishaan','ishaan_kumar@dummyemail.com','M','1991-10-10','Dentist','397968',
    'Cochin', 'Kerela', 'Single', 'Athletics,Hiking,Trekking', 'References,Training'
    );
INSERT INTO my_contacts(last_name,
    first_name,email,gender,birthday,profession,zip_code,city_name,state_name,status,interests,
    seeking)VALUES('Jha', 'Anika','anika_jha@dummyemail.com','M','1991-10-10','Engineer','366372',
    'Nashik', 'Maharashtra', 'Single', 'Cycling,Boxing,Athletics', 'Job,References'
    );
INSERT INTO my_contacts(last_name,
    first_name,email,gender,birthday,profession,zip_code,city_name,state_name,status,interests,
    seeking)VALUES('Khatri', 'Dhruv','dhruv_khatri@dummyemail.com','M','1991-10-10','Dentist','688284',
    'Pune', 'Maharashtra', 'Single', 'Swimming,Photography,Badminton', 'References,Common Interest'
    );
INSERT INTO my_contacts(last_name,
    first_name,email,gender,birthday,profession,zip_code,city_name,state_name,status,interests,
    seeking)VALUES('Bhatt', 'Dhruv','dhruv_bhatt@dummyemail.com','M','1991-10-10','Engineer','722294',
    'Bhopal', 'Madhya Pradesh', 'Single', 'Hiking,Swimming,Cricket', 'Relationship,References'
    );
INSERT INTO my_contacts(last_name,
    first_name,email,gender,birthday,profession,zip_code,city_name,state_name,status,interests,
    seeking)VALUES('Arya', 'Advik','advik_arya@dummyemail.com','M','1991-10-10','Lawyer','829346',
    'Bokaro', 'Jharkhand', 'Single', 'Athletics,Badminton,Photography', 'References,Common Interest'
    );
INSERT INTO my_contacts(last_name,
    first_name,email,gender,birthday,profession,zip_code,city_name,state_name,status,interests,
    seeking)VALUES('Jain', 'Kashvi','kashvi_jain@dummyemail.com','M','1991-10-10','Lawyer','632475',
    'Pune', 'Maharashtra', 'Single', 'Coding,Athletics,Badminton', 'Common Interest,Job'
    );
INSERT INTO my_contacts(last_name,
    first_name,email,gender,birthday,profession,zip_code,city_name,state_name,status,interests,
    seeking)VALUES('Acharya', 'Mahika','mahika_acharya@dummyemail.com','M','1991-10-10','Accountant','225676',
    'Ranchi', 'Jharkhand', 'Single', 'Athletics,Coding,Cricket', 'Training,References'
    );
INSERT INTO my_contacts(last_name,
    first_name,email,gender,birthday,profession,zip_code,city_name,state_name,status,interests,
    seeking)VALUES('Banerjee', 'Kashvi','kashvi_banerjee@dummyemail.com','M','1991-10-10','Lawyer','878335',
    'Jamshedpur', 'Jharkhand', 'Single', 'Badminton,Cycling,Trekking', 'Training,Relationship'
    );
INSERT INTO my_contacts(last_name,
    first_name,email,gender,birthday,profession,zip_code,city_name,state_name,status,interests,
    seeking)VALUES('Khatri', 'Mithila','mithila_khatri@dummyemail.com','M','1991-10-10','Physician','769466',
    'Gwalior', 'Madhya Pradesh', 'Single', 'Boxing,Athletics,Hiking', 'References,Common Interest'
    );
INSERT INTO my_contacts(last_name,
    first_name,email,gender,birthday,profession,zip_code,city_name,state_name,status,interests,
    seeking)VALUES('Ahuja', 'Raj','raj_ahuja@dummyemail.com','M','1991-10-10','Engineer','286382',
    'Vishakapatnam', 'Andra Pradesh', 'Single', 'Cycling,Badminton,Swimming', 'References,Common Interest'
    );
INSERT INTO my_contacts(last_name,
    first_name,email,gender,birthday,profession,zip_code,city_name,state_name,status,interests,
    seeking)VALUES('Khatri', 'Navya','navya_khatri@dummyemail.com','M','1991-10-10','Chef','354487',
    'Kolkata', 'West Bengal', 'Single', 'Hiking,Coding,Marathon', 'Relationship,References'
    );
INSERT INTO my_contacts(last_name,
    first_name,email,gender,birthday,profession,zip_code,city_name,state_name,status,interests,
    seeking)VALUES('Agarwal', 'Rebecca','rebecca_agarwal@dummyemail.com','M','1991-10-10','Dentist','278454',
    'Mumbai', 'Maharashtra', 'Single', 'Boxing,Coding,Hiking', 'Relationship,Job'
    );
INSERT INTO my_contacts(last_name,
    first_name,email,gender,birthday,profession,zip_code,city_name,state_name,status,interests,
    seeking)VALUES('Laghari', 'Ishita','ishita_laghari@dummyemail.com','M','1991-10-10','Dentist','462499',
    'Indore', 'Madhya Pradesh', 'Single', 'Boxing,Trekking,Badminton', 'Relationship,Training'
    );
INSERT INTO my_contacts(last_name,
    first_name,email,gender,birthday,profession,zip_code,city_name,state_name,status,interests,
    seeking)VALUES('Deshpande', 'Ishana','ishana_deshpande@dummyemail.com','M','1991-10-10','Software Developer','488349',
    'Kolkata', 'West Bengal', 'Single', 'Boxing,Coding,Trekking', 'References,Job'
    );
INSERT INTO my_contacts(last_name,
    first_name,email,gender,birthday,profession,zip_code,city_name,state_name,status,interests,
    seeking)VALUES('Das', 'Raj','raj_das@dummyemail.com','M','1991-10-10','Physician','495693',
    'Mysuru', 'Karnataka', 'Single', 'Cycling,Marathon,Athletics', 'Common Interest,Job'
    );
INSERT INTO my_contacts(last_name,
    first_name,email,gender,birthday,profession,zip_code,city_name,state_name,status,interests,
    seeking)VALUES('Bakshi', 'Kaia','kaia_bakshi@dummyemail.com','M','1991-10-10','Dentist','377972',
    'Chennai', 'Tamil Nadu', 'Single', 'Hiking,Coding,Boxing', 'Job,Relationship'
    );


SELECT * FROM my_contacts

-- Atomic
SELECT * FROM my_contacts
WHERE 
interests LIKE '%Swimming%'
OR
interests LIKE '%Marathon%'
OR
interests LIKE '%Athl%';


--- NORMAL FORMS
--- 1ST NORMAL
-- Every record must have a primary key
-- every column must have atomic data, more than one column should not hold the same type of data

CREATE TABLE interests
	(
		int_id INT NOT NULL
		,interest VARCHAR(100) NOT NULL
		,contact_id INT NOT NULL
		,PRIMARY KEY( int_id, contact_id) --- Composite Primary Key
		,FOREIGN KEY(contact_id) REFERENCES my_contacts(contact_id)
	);

INSERT INTO interests
VALUES
(	1,'Marathon', 1),
(	1,'Marathon', 15),
(	1,'Marathon', 18),


(	1,'Marathon', 11),
(	1,'Marathon', 16),
(	1,'Marathon', 20),

(	2,'Swimming', 1),
(	2,'Swimming', 15),
(	2,'Swimming', 19);


SELECT * FROM interests;

--- relationship between the interest and the people pursuing the interest
--- There are many people who are pursuing a single interest

SELECT * FROM my_contacts
WHERE
interests LIKE '%Swimm%';

--- a single person can pursue can pursue more than one interest
SELECT *
FROM
my_contacts
WHERE
contact_id = 1;

-- Many to Many relationship

-- RELATIONSHIp that exists while designing a table
--- One to One relationship

SELECT * FROM my_contacts;  -- parent table from where is contact_id
							-- is referred

-- we do not want everyone who has access to my_contacts to see the
-- salary and government id information of the contact
CREATE TABLE contact_salary_details
(
	contact_id INT PRIMARY KEY
	,pan_card CHAR(10) UNIQUE NOT NULL
	,salary INT NOT NULL
	,FOREIGN KEY(contact_id) REFERENCES my_contacts(contact_id)
);

-- TAN

SELECT * FROM contact_salary_details

INSERT INTO contact_salary_details VALUES(1,'IKW2WXRSPP',37762);
INSERT INTO contact_salary_details VALUES(2,'SYNSHQXG88',44495);
INSERT INTO contact_salary_details VALUES(3,'AAZJCSCKMW',37558);
INSERT INTO contact_salary_details VALUES(4,'8EEKFEERJZ',34749);
INSERT INTO contact_salary_details VALUES(5,'HRC2BYQUVW',32499);
INSERT INTO contact_salary_details VALUES(6,'QZA2D8BMT2',37315);
INSERT INTO contact_salary_details VALUES(7,'DHJLYUSCC2',48123);
INSERT INTO contact_salary_details VALUES(8,'LCWFBHFWSL',44552);
INSERT INTO contact_salary_details VALUES(9,'VMT8QTFEUV',37097);
INSERT INTO contact_salary_details VALUES(10,'GICYZW2QEV',47965);
INSERT INTO contact_salary_details VALUES(11,'EVGWLUSHPH',49106);
INSERT INTO contact_salary_details VALUES(12,'ASVMUZTJ2E',47283);
INSERT INTO contact_salary_details VALUES(13,'UDWWRRWBCR',46490);
INSERT INTO contact_salary_details VALUES(14,'E2TSFDCPG8',35919);
INSERT INTO contact_salary_details VALUES(15,'2SWSGIEGKJ',47901);
INSERT INTO contact_salary_details VALUES(16,'RYKCBLDGE8',33470);
INSERT INTO contact_salary_details VALUES(17,'FFFJSWNEDH',31017);
INSERT INTO contact_salary_details VALUES(18,'HEXUKIYZNS',43967);
INSERT INTO contact_salary_details VALUES(19,'Q22A8RMYZW',32390);
INSERT INTO contact_salary_details VALUES(20,'Y8V8RNBEND',34895);
INSERT INTO contact_salary_details VALUES(21,'ZGKUQKUZ8A',44333);
INSERT INTO contact_salary_details VALUES(22,'YDD8DYP2TX',36515);


SELECT *
FROM
my_contacts
INNER JOIN
contact_salary_details
ON
	my_contacts.contact_id = contact_salary_details.contact_id


---   One to Many relationship

SELECT * FROM my_contacts

CREATE TABLE profession
(
	profession_id INT PRIMARY KEY IDENTITY(1,1)
	,profession VARCHAR(100) NOT NULL UNIQUE
);

INSERT INTO profession (profession)
SELECT DISTINCT profession FROM my_contacts ORDER BY profession;


SELECT * FROM profession

DROP TABLE interests;
DROP TABLE contact_salary_details;
DROP TABLE IF EXISTS  my_contacts
CREATE TABLE my_contacts
	(
		contact_id INT NOT NULL PRIMARY KEY IDENTITY(1,1)
		,last_name VARCHAR(30) NOT NULL
		,first_name VARCHAR(30) NOT NULL
		,email VARCHAR(50) NOT NULL
		,gender CHAR(1) NOT NULL
		,birthday DATE NOT NULL
		,profession INT NOT NULL
		,zip_code CHAR(6) NOT NULL
		,city_name VARCHAR(40) NOT NULL
		,state_name VARCHAR(40) NOT NULL
		,[status]  VARCHAR(20) NOT NULL
		,interests VARCHAR(100) NOT NULL
		,seeking VARCHAR(100) NOT NULL
		,FOREIGN KEY(profession) REFERENCES
				profession(profession_id)
	);


INSERT INTO my_contacts(last_name,
    first_name,email,gender,birthday,profession,zip_code,city_name,state_name,status,interests,
    seeking)VALUES('Burman', 'Parth','parth_burman@dummyemail.com','M','1991-10-10',1,'468748',
    'Belgaum', 'Karnataka', 'Single', 'Cricket,Cycling,Photography', 'References,Training'
    );
INSERT INTO my_contacts(last_name,
    first_name,email,gender,birthday,profession,zip_code,city_name,state_name,status,interests,
    seeking)VALUES('Banerjee', 'Aarav','aarav_banerjee@dummyemail.com','M','1991-10-10',1,'348286',
    'Coimbatore', 'Tamil Nadu', 'Single', 'Athletics,Cricket,Photography', 'Relationship,Job'
    );
INSERT INTO my_contacts(last_name,
    first_name,email,gender,birthday,profession,zip_code,city_name,state_name,status,interests,
    seeking)VALUES('Sharma', 'Kabir','kabir_sharma@dummyemail.com','M','1991-10-10',1,'556834',
    'Kolkata', 'West Bengal', 'Single', 'Marathon,Photography,Badminton', 'References,Job'
    );
INSERT INTO my_contacts(last_name,
    first_name,email,gender,birthday,profession,zip_code,city_name,state_name,status,interests,
    seeking)VALUES('Ghosh', 'Aarav','aarav_ghosh@dummyemail.com','M','1991-10-10',3,'438962',
    'Gwalior', 'Madhya Pradesh', 'Single', 'Cricket,Trekking,Cycling', 'Relationship,Common Interest'
    );
INSERT INTO my_contacts(last_name,
    first_name,email,gender,birthday,profession,zip_code,city_name,state_name,status,interests,
    seeking)VALUES('Agarwal', 'Aditi','aditi_agarwal@dummyemail.com','M','1991-10-10',5,'758576',
    'Kolkata', 'West Bengal', 'Single', 'Photography,Marathon,Athletics', 'Job,References'
    );
INSERT INTO my_contacts(last_name,
    first_name,email,gender,birthday,profession,zip_code,city_name,state_name,status,interests,
    seeking)VALUES('Patel', 'Krishna','krishna_patel@dummyemail.com','M','1991-10-10',4,'474753',
    'Bokaro', 'Jharkhand', 'Single', 'Badminton,Cricket,Photography', 'Training,Job'
    );
INSERT INTO my_contacts(last_name,
    first_name,email,gender,birthday,profession,zip_code,city_name,state_name,status,interests,
    seeking)VALUES('Khatri', 'Parth','parth_khatri@dummyemail.com','M','1991-10-10',2,'852589',
    'Coimbatore', 'Tamil Nadu', 'Single', 'Coding,Badminton,Athletics', 'References,Job'
    );
INSERT INTO my_contacts(last_name,
    first_name,email,gender,birthday,profession,zip_code,city_name,state_name,status,interests,
    seeking)VALUES('Jain', 'Krishna','krishna_jain@dummyemail.com','M','1991-10-10',2,'257248',
    'Kolkata', 'West Bengal', 'Single', 'Trekking,Cycling,Swimming', 'Training,Common Interest'
    );
INSERT INTO my_contacts(last_name,
    first_name,email,gender,birthday,profession,zip_code,city_name,state_name,status,interests,
    seeking)VALUES('Anand', 'Darsh','darsh_anand@dummyemail.com','M','1991-10-10',3,'483264',
    'Ranchi', 'Jharkhand', 'Single', 'Hiking,Badminton,Athletics', 'Relationship,Common Interest'
    );
INSERT INTO my_contacts(last_name,
    first_name,email,gender,birthday,profession,zip_code,city_name,state_name,status,interests,
    seeking)VALUES('Sharma', 'Aditi','aditi_sharma@dummyemail.com','M','1991-10-10',3,'623394',
    'Trichy', 'Tamil Nadu', 'Single', 'Boxing,Athletics,Photography', 'Relationship,References'
    );


SELECT * FROM my_contacts

-- ONE contact will pursue a single profession
-- but one profession will be pursued by many people
--- One to Many relationships


SELECT *
FROM
my_contacts
INNER JOIN
profession
ON
my_contacts.profession = profession.profession_id


-- Many to many relationships

DROP TABLE IF EXISTS interests ;
CREATE TABLE interests
	(
		int_id INT NOT NULL IDENTITY(1,1)
		,interest VARCHAR(100) NOT NULL
		
		,PRIMARY KEY( int_id) --- Composite Primary Key
		);

INSERT INTO interests(interest)VALUES('Hiking');
INSERT INTO interests(interest)VALUES('Cycling');
INSERT INTO interests(interest)VALUES('Coding');
INSERT INTO interests(interest)VALUES('Cricket');
INSERT INTO interests(interest)VALUES('Marathon');
INSERT INTO interests(interest)VALUES('Photography');
INSERT INTO interests(interest)VALUES('Athletics');
INSERT INTO interests(interest)VALUES('Trekking');
INSERT INTO interests(interest)VALUES('Boxing');
INSERT INTO interests(interest)VALUES('Swimming');
INSERT INTO interests(interest)VALUES('Badminton');


CREATE TABLE contact_interest
(
	contact_id INT NOT NULL
	,int_id INT NOT NULL
	,PRIMARY KEY(contact_id, int_id)
	,FOREIGN KEY(contact_id) REFERENCES my_contacts(contact_id)
	,FOREIGN KEY(int_id) REFERENCES interests(int_id)
);
INSERT INTO contact_interest VALUES(1,2);
INSERT INTO contact_interest VALUES(1,4);
INSERT INTO contact_interest VALUES(1,3);
INSERT INTO contact_interest VALUES(2,2);
INSERT INTO contact_interest VALUES(2,3);
INSERT INTO contact_interest VALUES(2,2);
INSERT INTO contact_interest VALUES(3,5);
INSERT INTO contact_interest VALUES(3,3);
INSERT INTO contact_interest VALUES(3,4);
INSERT INTO contact_interest VALUES(4,2);
INSERT INTO contact_interest VALUES(4,1);
INSERT INTO contact_interest VALUES(4,4);
INSERT INTO contact_interest VALUES(5,1);
INSERT INTO contact_interest VALUES(5,2);
INSERT INTO contact_interest VALUES(5,1);
INSERT INTO contact_interest VALUES(6,1);
INSERT INTO contact_interest VALUES(6,2);
INSERT INTO contact_interest VALUES(6,2);
INSERT INTO contact_interest VALUES(7,5);
INSERT INTO contact_interest VALUES(7,4);
INSERT INTO contact_interest VALUES(7,1);
INSERT INTO contact_interest VALUES(8,5);
INSERT INTO contact_interest VALUES(8,1);
INSERT INTO contact_interest VALUES(8,2);
INSERT INTO contact_interest VALUES(9,3);
INSERT INTO contact_interest VALUES(9,3);
INSERT INTO contact_interest VALUES(9,5);
INSERT INTO contact_interest VALUES(10,3);
INSERT INTO contact_interest VALUES(10,2);
INSERT INTO contact_interest VALUES(10,2);
INSERT INTO contact_interest VALUES(11,3);
INSERT INTO contact_interest VALUES(11,2);
INSERT INTO contact_interest VALUES(11,5);
INSERT INTO contact_interest VALUES(12,2);
INSERT INTO contact_interest VALUES(12,3);
INSERT INTO contact_interest VALUES(12,2);
INSERT INTO contact_interest VALUES(13,1);
INSERT INTO contact_interest VALUES(13,4);
INSERT INTO contact_interest VALUES(13,5);
INSERT INTO contact_interest VALUES(14,4);
INSERT INTO contact_interest VALUES(14,4);
INSERT INTO contact_interest VALUES(14,3);
INSERT INTO contact_interest VALUES(15,2);
INSERT INTO contact_interest VALUES(15,3);
INSERT INTO contact_interest VALUES(15,1);
INSERT INTO contact_interest VALUES(16,5);
INSERT INTO contact_interest VALUES(16,1);
INSERT INTO contact_interest VALUES(16,5);
INSERT INTO contact_interest VALUES(17,5);
INSERT INTO contact_interest VALUES(17,2);
INSERT INTO contact_interest VALUES(17,1);
INSERT INTO contact_interest VALUES(18,3);
INSERT INTO contact_interest VALUES(18,1);
INSERT INTO contact_interest VALUES(18,3);
INSERT INTO contact_interest VALUES(19,2);
INSERT INTO contact_interest VALUES(19,4);
INSERT INTO contact_interest VALUES(19,5);
INSERT INTO contact_interest VALUES(20,1);
INSERT INTO contact_interest VALUES(20,1);
INSERT INTO contact_interest VALUES(20,1);
INSERT INTO contact_interest VALUES(21,2);
INSERT INTO contact_interest VALUES(21,5);
INSERT INTO contact_interest VALUES(21,2);


SELECT * FROM contact_interest

SELECT * FROM my_contacts

ALTER TABLE my_contacts
DROP COLUMN interests;


-- 2ND NORMAL FORM
-- 1st Normal form
-- the table should not have any PARTIAL FUNCTIONAL DEPENDENCY


-- What is the meaning of Partial Functional Dependency

DROP TABLE IF EXISTS contact_interest;
CREATE TABLE contact_interest
(
	contact_id INT NOT NULL
	,int_id INT NOT NULL
	,interest_poc VARCHAR(100) NOT NULL
	,PRIMARY KEY(contact_id, int_id)
	,FOREIGN KEY(contact_id) REFERENCES my_contacts(contact_id)
	,FOREIGN KEY(int_id) REFERENCES interests(int_id)
);


INSERT INTO contact_interest VALUES(1,1, 'Ishana Laghari');
INSERT INTO contact_interest VALUES(1,2, 'Krishna Bakshi');
INSERT INTO contact_interest VALUES(1,5, 'Aarav Ghosh');
INSERT INTO contact_interest VALUES(2,2, 'Krishna Bakshi');
INSERT INTO contact_interest VALUES(2,1, 'Ishana Laghari');
INSERT INTO contact_interest VALUES(2,4, 'Ananya Agarwal');
INSERT INTO contact_interest VALUES(3,5, 'Aarav Ghosh');
INSERT INTO contact_interest VALUES(3,3, 'Anala Ganguly');
INSERT INTO contact_interest VALUES(3,2, 'Krishna Bakshi');
INSERT INTO contact_interest VALUES(4,3, 'Anala Ganguly');
INSERT INTO contact_interest VALUES(4,4, 'Ananya Agarwal');
INSERT INTO contact_interest VALUES(4,1, 'Ishana Laghari');
INSERT INTO contact_interest VALUES(5,1, 'Ishana Laghari');
INSERT INTO contact_interest VALUES(5,5, 'Aarav Ghosh');
INSERT INTO contact_interest VALUES(5,3, 'Anala Ganguly');
INSERT INTO contact_interest VALUES(6,3, 'Anala Ganguly');
INSERT INTO contact_interest VALUES(6,3, 'Anala Ganguly');
INSERT INTO contact_interest VALUES(6,3, 'Anala Ganguly');
INSERT INTO contact_interest VALUES(7,5, 'Aarav Ghosh');
INSERT INTO contact_interest VALUES(7,2, 'Krishna Bakshi');
INSERT INTO contact_interest VALUES(7,3, 'Anala Ganguly');
INSERT INTO contact_interest VALUES(8,4, 'Ananya Agarwal');
INSERT INTO contact_interest VALUES(8,4, 'Ananya Agarwal');
INSERT INTO contact_interest VALUES(8,4, 'Ananya Agarwal');
INSERT INTO contact_interest VALUES(9,2, 'Krishna Bakshi');
INSERT INTO contact_interest VALUES(9,1, 'Ishana Laghari');
INSERT INTO contact_interest VALUES(9,4, 'Ananya Agarwal');
INSERT INTO contact_interest VALUES(10,1, 'Ishana Laghari');
INSERT INTO contact_interest VALUES(10,1, 'Ishana Laghari');
INSERT INTO contact_interest VALUES(10,4, 'Ananya Agarwal');
INSERT INTO contact_interest VALUES(11,3, 'Anala Ganguly');
INSERT INTO contact_interest VALUES(11,2, 'Krishna Bakshi');
INSERT INTO contact_interest VALUES(11,5, 'Aarav Ghosh');
INSERT INTO contact_interest VALUES(12,4, 'Ananya Agarwal');
INSERT INTO contact_interest VALUES(12,1, 'Ishana Laghari');
INSERT INTO contact_interest VALUES(12,4, 'Ananya Agarwal');
INSERT INTO contact_interest VALUES(13,1, 'Ishana Laghari');
INSERT INTO contact_interest VALUES(13,4, 'Ananya Agarwal');
INSERT INTO contact_interest VALUES(13,5, 'Aarav Ghosh');
INSERT INTO contact_interest VALUES(14,5, 'Aarav Ghosh');
INSERT INTO contact_interest VALUES(14,1, 'Ishana Laghari');
INSERT INTO contact_interest VALUES(14,5, 'Aarav Ghosh');
INSERT INTO contact_interest VALUES(15,3, 'Anala Ganguly');
INSERT INTO contact_interest VALUES(15,1, 'Ishana Laghari');
INSERT INTO contact_interest VALUES(15,5, 'Aarav Ghosh');
INSERT INTO contact_interest VALUES(16,5, 'Aarav Ghosh');
INSERT INTO contact_interest VALUES(16,4, 'Ananya Agarwal');
INSERT INTO contact_interest VALUES(16,2, 'Krishna Bakshi');
INSERT INTO contact_interest VALUES(17,1, 'Ishana Laghari');
INSERT INTO contact_interest VALUES(17,2, 'Krishna Bakshi');
INSERT INTO contact_interest VALUES(17,1, 'Ishana Laghari');
INSERT INTO contact_interest VALUES(18,3, 'Anala Ganguly');
INSERT INTO contact_interest VALUES(18,3, 'Anala Ganguly');
INSERT INTO contact_interest VALUES(18,5, 'Aarav Ghosh');
INSERT INTO contact_interest VALUES(19,4, 'Ananya Agarwal');
INSERT INTO contact_interest VALUES(19,2, 'Krishna Bakshi');
INSERT INTO contact_interest VALUES(19,4, 'Ananya Agarwal');
INSERT INTO contact_interest VALUES(20,4, 'Ananya Agarwal');
INSERT INTO contact_interest VALUES(20,4, 'Ananya Agarwal');
INSERT INTO contact_interest VALUES(20,2, 'Krishna Bakshi');
INSERT INTO contact_interest VALUES(21,2, 'Krishna Bakshi');
INSERT INTO contact_interest VALUES(21,4, 'Ananya Agarwal');
INSERT INTO contact_interest VALUES(21,3, 'Anala Ganguly');



SELECT * FROM contact_interest
order by int_id

--- if there is any NON KEY column that can change if the key column changes
--- then we say that the NON KEY column is PARTIALLY FUNCTIONALLY DEPENDENT
---- on the key columns


SELECT * FROM interests WHERE int_id = 3


CREATE TABLE interest_guru
(
	master_id INT PRIMARY KEY IDENTITY(1,1)
	,int_id INT NOT NULL
	,guru_name VARCHAR(100) NOT NULL
);

INSERT INTO interest_guru
(
	int_id, guru_name
)
SELECT DISTINCT int_id, interest_poc
FROM
contact_interest

SELECT * FROM interest_guru

ALTER TABLE  contact_interest
DROP COLUMN interest_poc;

SELECT 
*
FROM
contact_interest

--- where we have a table and all the columns of the table make up 
--- the primary key


SELECT 
*
FROM
contact_interest  -- this table is in second normal form

SELECT *
FROM interests --- this confers to second normal form


SELECT * FROM my_contacts

SELECT * FROM interest_guru


--- 3rd Normal Form
SELECT * FROM my_contacts

-- transitive functional dependency

--- 3rd Normal form
--- would be a table that confers to the 2nd Normal Form
--- and there is no TRANSITIVE FUNCTIONAL DEPENDENCY


CREATE TABLE zip_code
(
	zip_code CHAR(6) PRIMARY KEY
	,city VARCHAR(100) NOT NULL
	,state_name VARCHAR(50) NOT NULL
);

INSERT INTO zip_code
SELECT DISTINCT zip_code, city_name, state_name
FROM
my_contacts;


SELECT * FROM zip_code;

ALTER TABLE my_contacts
DROP COLUMN city_name;

ALTER TABLE my_contacts
DROP column state_name;


ALTER TABLE my_contacts
ADD CONSTRAINT zip_code_zip_code_fk
FOREIGN KEY(zip_code) REFERENCES zip_code(zip_code);


EXEC sp_help @objname='my_contacts';

--- violate the foreign key reference on the zip_code
--- i will see the name of the constraint zip_code_zip_code_fk
--- in the error message
INSERT INTO my_contacts
	(
		first_name
		,last_name
		,email
		,profession
		,zip_code
		,gender
		,birthday
		,[status]
		,seeking
	)VALUES
		(
			'Ananth'
			,'Sundaram'
			,'ananthsundar@dummyemail.com'
			,1
			,'787878' -- this zip code does not exists in the zip_code table
			,'M'
			,'1988-10-12'
			,'Married'
			,'Job,references'
			);



----- get the top 5 employee from each departments whose salaries are closest--  or farthest from the average salary using CTEUSE sql_wkday_20240228;---> STEP 1 > calculate the average salary for each departmentSELECT employee_dept, AVG(salary) AS avg_salaryFROM employeesGROUP BY employee_dept-- The above query will give the average salary of every department-- Convert the above query into a CTEWITH department_avg_salaryAS(	SELECT employee_dept, AVG(salary) AS avg_salary	FROM employees	GROUP BY employee_dept),-- Use the above CTE to calculate the difference in salary of each employee-- from the average salarysalary_diffAS(SELECT e.*		,department_avg_salary.avg_salary AS avg_salary		---substract the salary from the avg_salary		,(e.salary - avg_salary) AS salary_difference		--- calculate the ABS salary difference between salary and average salary		,ABS(e.salary - avg_salary) AS abs_salary_difference	FROM		employees AS e	INNER JOIN		department_avg_salary	ON		e.employee_dept = department_avg_salary.employee_dept)--Rank each employee based on the lowest abs salary differnence-- in his or her department--- GET THE top 5 employees in each department with the lowest salary differenceSELECT *FROM(SELECT *,		DENSE_RANK() OVER (PARTITION BY employee_dept							ORDER BY abs_salary_difference ASC) AS salary_diff_rank		,'Lowest Salary Difference' AS salary_descriptionFROMsalary_diff) AS inn_queryWHERE inn_query.salary_diff_rank <=5--- UNION ALL the lowest salary difference with the highest salary differenceUNION ALL-- The below code will give the --- top 5 highest salary difference between salary and average in each departmentSELECT *FROM(SELECT *,		DENSE_RANK() OVER (PARTITION BY employee_dept							ORDER BY abs_salary_difference DESC) AS salary_diff_rank		,'Highest Salary Difference' AS salary_descriptionFROMsalary_diff) AS inn_queryWHERE	inn_query.salary_diff_rank <= 5