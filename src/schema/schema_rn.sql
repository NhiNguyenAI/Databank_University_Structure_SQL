DROP TABLE  listen;  
DROP TABLE  prerequisite;
DROP TABLE  test;
DROP TABLE  Lectures;
DROP TABLE  Student;
DROP TABLE  Assistants;
DROP TABLE  Professors;

CREATE TABLE  Student
       (MatrNr         INTEGER PRIMARY KEY,
        Name           VARCHAR(30) NOT NULL,
        Semester       INTEGER);

CREATE TABLE  Professors
       (PersNr         INTEGER PRIMARY KEY,
        Name           VARCHAR(30) NOT NULL,
        Rang           CHAR(2) CHECK (Rang in ('C2', 'C3', 'C4')),
        Raum           INTEGER UNIQUE);

CREATE TABLE  Assistants
       (PersNr         INTEGER PRIMARY KEY,
        Name           VARCHAR(30) NOT NULL,
        Fachgebiet     VARCHAR(30),
        Boss           INTEGER,
        FOREIGN KEY    (Boss) REFERENCES Professors);

CREATE TABLE  Lectures
       (VorlNr         INTEGER PRIMARY KEY,
        Titel          VARCHAR(30),
        SWS            INTEGER,
        gelesenVon     INTEGER REFERENCES Professors);

CREATE TABLE  listen
       (MatrNr         INTEGER REFERENCES Student ON DELETE CASCADE,
        VorlNr         INTEGER REFERENCES Lectures ON DELETE CASCADE,
        PRIMARY KEY    (MatrNr, VorlNr));

CREATE TABLE  prerequisite
       (Vorgaenger     INTEGER REFERENCES Lectures ON DELETE CASCADE,
        Nachfolger     INTEGER REFERENCES Lectures ON DELETE CASCADE,
        PRIMARY KEY    (Vorgaenger, Nachfolger));

CREATE TABLE  test
       (MatrNr         INTEGER REFERENCES Student ON DELETE CASCADE,
        VorlNr         INTEGER REFERENCES Lectures,
        PersNr         INTEGER REFERENCES Professors,
        Note           NUMERIC(2,1) CHECK (Note between 0.7 and 5.0),
        PRIMARY KEY    (MatrNr, VorlNr));
