INSERT INTO R (A, B, C, D) VALUES
(1, 'blau', 2, 16);

INSERT INTO R (A, B, C, D) VALUES
(3, 'rot', 4, 32);

INSERT INTO R (A, B, C, D) VALUES
(5, 'gelb', 8, 64);

INSERT INTO R (A, B, C, D) VALUES
(9, 'orange', 12, 256);

INSERT INTO R (A, B, C, D) VALUES
(12, 'gelb', 16, 128);

-- Insert data into S
INSERT INTO S (A, B, C, D, E) VALUES
(3, 4, 1, 13, 128);

INSERT INTO S (A, B, C, D, E) VALUES
(3, 4, 3, 15, 64);

INSERT INTO S (A, B, C, D, E) VALUES
(9, 12, 2, 14, 32);

INSERT INTO S (A, B, C, D, E) VALUES
(12,16, NULL, 14, 16);

INSERT INTO S (A, B, C, D, E) VALUES
(9,12, 5, 14, 16);

-- Commit the changes
COMMIT;