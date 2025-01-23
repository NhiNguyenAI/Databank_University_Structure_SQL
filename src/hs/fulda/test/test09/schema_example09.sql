/* Choose the database to create the table
*  Use this syntax if you connect with SQL Server and have multiple databases
*/
-- USE Databank_Course;

DROP TABLE T1
DROP TABLE T2
-- Create the User_Table
CREATE TABLE T1 (
                ID  INTEGER PRIMARY KEY, 
                A   INTEGER ,                
                B   VARCHAR(150) NOT NULL,      
                C   INTEGER,               
                D   VARCHAR(150) NOT NULL   
);

CREATE TABLE T2 (
                ID  INTEGER PRIMARY KEY, 
                E   INTEGER,                
                B   VARCHAR(150) NOT NULL,      
                C   INTEGER                           
);