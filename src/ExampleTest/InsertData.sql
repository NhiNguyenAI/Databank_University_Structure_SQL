/* Choose the database to create the table
*  Use this syntax if you connect with SQL Server and have multiple databases
*/
-- USE Databank_Course;

-- Insert sample data into T1
INSERT INTO T1 (ID, A, B, C, D)
VALUES
    (1,1, 'blau', 10, 'X'),
    (2,2, 'blau', 40, 'X'),
    (3,3, 'rosa', 30, 'S'),
    (4,4, 'orange', 10, 'M'),
    (5,5, 'orange', 20, 'M'),
    (6,6, 'orange', 50, 'X'),
    (7,7, 'orange', 50, 'X'),
    (8,8, 'magenta', 50, 'S'),
    (9,9, 'magenta', 40, 'S'),
    (10,10, 'violett', 10, 'XXL'),
    (11,11, 'violett', 10, 'XXL'),
    (12,12, 'violett', 10, 'M');

INSERT INTO T2 (ID, E, B, C)
VALUES
    (1,2, 'blau', 20),
    (2,4, 'blau', 40),
    (3,4, 'blau', 50),
    (4,6, 'orange', 20),
    (5,6, 'orange', 50),
    (6,8, 'orange', 50);
