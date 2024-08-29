-- Members table
CREATE TABLE Members (
    id INT PRIMARY KEY, 
    name VARCHAR(255) NOT NULL,
    age INT
);

-- WorkoutSessions table
CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

-- Data for Members table
INSERT INTO Members (id, name, age)
VALUES
    (1, 'John Smith', 30),
    (2, 'Jane Doe', 25),
    (3, 'Bob Johnson', 40);

-- Data for WorkoutSessions
INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity)
VALUES
    (1, 1, '2023-02-01', 'Morning', 'Weightlifint'),
    (2, 2, '2023-02-02', 'Morning', 'Yoga'),
    (3, 3, '2023-02-03', 'Evening', 'Cardio');

-- Uodate the workout session for Jane Doe
UPDATE WorkoutSessions
SET session_time = 'Evening'
WHERE member_id = 2;

-- Delete John Smith's record from Members table
DELETE FROM Members
WHERE name = 'John Smith';
