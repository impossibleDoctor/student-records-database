-- In this SQL file, write (and comment!) the typical SQL queries users will run on your database



-- INSERT NEW SCHOOL
INSERT INTO "schools"
VALUES (123456,'Harvard University Online',1,'Pangasinan 1');

-- INSERT TEACHERS
INSERT INTO "teachers"
VALUES (1,'Carter','A','Zenke');

-- INSERT SUBJECTS
INSERT INTO "subjects"
VALUES
    (3001,'CS',50,'Academic'),
    (3002,'AI',50,'Academic');

-- INSERT COMPONENTS
INSERT INTO "components"
VALUES
    (1,'Quarterly Assessment',20),
    (2,'Quarterly Assessment',25),
    (3,'Performance Tasks',40),
    (4,'Performance Tasks',50),
    (5,'Performance Tasks',60),
    (6,'Written Work',20),
    (7,'Written Work',25),
    (8,'Written Work',30),
    (9,'Written Work',40);

-- INSERT SUBJECT COMPONENTS
INSERT INTO "subject_components"
VALUES
    (3001,2), (3001,4), (3001,7);

-- INSERT CLASSES
INSERT INTO "classes"
VALUES (1,'CS 50 Summer 2024 A.Y. 2023-2024 2nd Sem',3001,1,123456,2023,2);

-- INSERT STUDENTS
INSERT INTO "students"
VALUES
    (1,'James',NULL,'Smith','2000-01-01','M'),
    (2,'Michael',NULL,'Smith','2000-01-02','M'),
    (3,'Robert',NULL,'Smith','2000-01-02','M'),
    (4,'Maria',NULL,'Garcia','2000-01-02','F'),
    (5,'David',NULL,'Smith','2000-01-02','M'),
    (6,'Maria',NULL,'Rodriguez','2000-01-02','F'),
    (7,'Mary Smith',NULL,'Smith','2000-01-02','F'),
    (8,'Maria',NULL,'Hernandez','2000-01-02','F'),
    (9,'Maria',NULL,'Martinez','2000-01-02','F'),
    (10,'James',NULL,'Johnson','2000-01-02','M');

-- INSERT STUDENT SCHOOLS
INSERT INTO "students_schools"
VALUES
    (1,1,123456,'2018-06-01',NULL),
    (2,2,123456,'2018-06-01',NULL),
    (3,3,123456,'2018-06-01',NULL),
    (4,4,123456,'2018-06-01',NULL),
    (5,5,123456,'2018-06-01',NULL),
    (6,6,123456,'2018-06-01',NULL),
    (7,7,123456,'2018-06-01',NULL),
    (8,8,123456,'2018-06-01',NULL),
    (9,9,123456,'2018-06-01',NULL),
    (10,10,123456,'2018-06-01',NULL)

-- Assign STUDENT CLASSES
INSERT INTO "student_classes"
VALUES
    (1,1), (2,1), (3,1), (4,1), (5,1), (6,1), (7,1), (8,1), (9,1), (10,1);

-- Give assessments
INSERT INTO "assessments"
VALUES
    (1,'WW1',30,3001,7,1),
    (2,'WW2',20,3001,7,1),
    (3,'WW3',20,3001,7,1),
    (4,'WW4',20,3001,7,1),
    (5,'WW5',15,3001,7,1),
    (6,'PT1',25,3001,4,1),
    (7,'PT2',50,3001,4,1),
    (8,'PT3',100,3001,4,1),
    (9,'PT4',100,3001,4,1),
    (10,'PT5',20,3001,4,1),
    (11,'QA1',50,3001,2,1);

-- Assign assessments
INSERT INTO "class_assessments"
VALUES
    (1,1,1,NULL),
    (2,1,2,NULL),
    (3,1,3,NULL),
    (4,1,4,NULL),
    (5,1,5,NULL),
    (6,1,6,NULL),
    (7,1,7,NULL),
    (8,1,8,NULL),
    (9,1,9,NULL),
    (10,1,10,NULL),
    (11,1,11,NULL);

-- Score students
INSERT INTO "scores"("student_id", "assessment_id", "value")
VALUES
    (1, 1, 22), (1, 2, 10), (1, 3, 0), (1, 4, 18), (1, 5, 0), (1, 6, 25), (1, 7, 46), (1, 8, 0), (1, 9, 95), (1, 10, 19), (1, 11, 38),
    (2, 1, 24), (2, 2, 16), (2, 3, 18), (2, 4, 21), (2, 5, 15), (2, 6, 25), (2, 7, 42), (2, 8, 95), (2, 9, 91), (2, 10, 20), (2, 11, 48),
    (3, 1, 18), (3, 2, 12), (3, 3, 12), (3, 4, 13), (3, 5, 14), (3, 6, 25), (3, 7, 46), (3, 8, 90), (3, 9, 94), (3, 10, 18), (3, 11, 28),
    (4, 1, 19), (4, 2, 7), (4, 3, 12), (4, 4, 14), (4, 5, 14), (4, 6, 25), (4, 7, 42), (4, 8, 94), (4, 9, 94), (4, 10, 20), (4, 11, 42),
    (5, 1, 11), (5, 2, 7), (5, 3, 8), (5, 4, 18), (5, 5, 13), (5, 6, 25), (5, 7, 44), (5, 8, 91), (5, 9, 94), (5, 10, 15), (5, 11, 28),
    (6, 1, 22), (6, 2, 11), (6, 3, 14), (6, 4, 17), (6, 5, 14), (6, 6, 25), (6, 7, 45), (6, 8, 91), (6, 9, 95), (6, 10, 15), (6, 11, 41),
    (7, 1, 11), (7, 2, 7), (7, 3, 9), (7, 4, 10), (7, 5, 12), (7, 6, 25), (7, 7, 46), (7, 8, 90), (7, 9, 94), (7, 10, 16), (7, 11, 28),
    (8, 1, 16), (8, 2, 0), (8, 3, 7), (8, 4, 7), (8, 5, 15), (8, 6, 25), (8, 7, 45), (8, 8, 94), (8, 9, 92), (8, 10, 18), (8, 11, 26),
    (9, 1, 11), (9, 2, 10), (9, 3, 14), (9, 4, 15), (9, 5, 0), (9, 6, 25), (9, 7, 46), (9, 8, 95), (9, 9, 93), (9, 10, 21), (9, 11, 41),
    (10, 1, 21), (10, 2, 9), (10, 3, 11), (10, 4, 12), (10, 5, 15), (10, 6, 25), (10, 7, 46), (10, 8, 94), (10, 9, 91), (10, 10, 20), (10, 11, 44);

-- Find all the students enrolled in a certain class
SELECT CONCAT("students"."first_name",' ', "students"."last_name") AS "Name"
FROM "students"
JOIN "students_classes"
ON "students"."id" = "students_classes"."student_id"
JOIN "classes"
ON "classes"."id" = "students_classes"."class_id"
WHERE "classes"."id" = 1; -- class_id is hard-coded
-- A class is identified by its school AND name

-- List all classes
SELECT * FROM "classes";

-- List all the quizzes given to a class ordered by component
SELECT
    "assessments"."name" AS "assessment",
    "components"."name" AS "subject_component"
FROM "assessments"
JOIN "class_assessments"
ON "assessments"."id" = "class_assessments"."assessment_id"
JOIN "classes"
ON "class_assessments"."class_id" = "classes"."id"
JOIN "components"
ON "assessments"."component_id" = "components"."id"
WHERE "classes"."id" = 1 -- class_id is hard-coded
ORDER BY "subject_component";

-- List all scores of a certain student in a certain class
SELECT
    "assessments"."name",
    "scores"."value"
FROM "scores"
JOIN "assessments"
ON "assessments"."id" = "scores"."assessment_id"
WHERE "scores"."student_id" = 2;

-- lIST GRADES FOR ALL THE STUDENTS
WITH "per_component_summations" AS (
    SELECT
        "student_id",
        SUM("scores"."value") * 1.0 AS "sums",
        SUM("assessments"."max_score") AS "max",
        "components"."percentage" * 0.01 AS "weight"
    FROM "scores"
    JOIN "assessments"
    ON "scores"."assessment_id" = "assessments"."id"
    JOIN "class_assessments"
    ON "class_assessments"."assessment_id" = "assessments"."id"
    JOIN "components"
    ON "assessments"."component_id" = "components"."id"
    WHERE "class_id" = 1 -- this is hard coded, in prestatement
    GROUP BY "student_id", "assessments"."component_id"
)
SELECT
    CONCAT("students"."first_name", ' ', "students"."last_name") AS "Name",
    CAST(ROUND(SUM("sums" / "max" * "weight"), 2) * 100 AS INTEGER) AS "Initial grade"
FROM "per_component_summations"
JOIN "students"
ON "students"."id" = "per_component_summations"."student_id"
GROUP BY "student_id"
ORDER BY "students"."gender" DESC, "name" ASC;

-- More info about computation of grades; all students in a class
-- BIG ASSUMPTION HERE: THERE ARE 3 COMPONENTS PER SUBJECT NAMELY: Written Work, Quarterly Assessment and Performance Task
WITH
    "complete" AS (
        SELECT
            "student_id",
            "assessments"."name" AS "asssessment",
            "components"."name" AS "component_name",
            "components"."percentage" * 0.01 AS "component_weight",
            "scores"."value" AS "score",
            "assessments"."max_score" as "max_score"
        FROM "students"
        JOIN "scores"
        ON "scores"."student_id" = "students"."id"
        JOIN "assessments"
        ON "assessments"."id" = "scores"."assessment_id"
        JOIN "class_assessments"
        ON "class_assessments"."assessment_id" = "assessments"."id"
        JOIN "classes"
        ON "classes"."id" = "class_assessments"."class_id"
        JOIN "components"
        ON "components"."id" = "assessments"."component_id"
        WHERE "classes"."id" = 1 -- this is hard coded, in prestatement
    ),
    "w" AS (
        SELECT
            "student_id",
            SUM("score") * 1.0 AS "sum",
            SUM("max_score") as "max",
            "component_weight"
        FROM "complete"
        WHERE "component_name" = 'Written Work'
        GROUP BY "student_id"
    ),
    "qa" AS (
        SELECT
            "student_id",
            SUM("score") * 1.0 AS "sum",
            SUM("max_score") as "max",
            "component_weight"
        FROM "complete"
        WHERE "component_name" = 'Quarterly Assessment'
        GROUP BY "student_id"
    ),
    "pt" AS (
        SELECT
            "student_id",
            SUM("score") * 1.0 AS "sum",
            SUM("max_score") as "max",
            "component_weight"
        FROM "complete"
        WHERE "component_name" = 'Performance Tasks'
        GROUP BY "student_id"
    )
SELECT
    CONCAT("students"."first_name", ' ', "students"."last_name") AS "Name",
    "w"."sum" AS "WW score",
    "w"."max" AS "max",
    "w"."component_weight" AS "weight",
    "w"."sum" / "w"."max" * "w"."component_weight" AS "WW",
    "pt"."sum" AS "PT SCORE",
    "pt"."max" AS "MAX",
    "pt"."component_weight" AS "weight",
    "pt"."sum" / "pt"."max" * "pt"."component_weight" AS "PT",
    "qa"."sum" AS "QA SCORE",
    "qa"."max" AS "MAX",
    "qa"."component_weight" AS "weight",
    "qa"."sum" / "qa"."max" * "qa"."component_weight" AS "QA",
    ROUND(("w"."sum" / "w"."max" * "w"."component_weight") +
    ("qa"."sum" / "qa"."max" * "qa"."component_weight") +
    ("pt"."sum" / "pt"."max" * "pt"."component_weight"), 4) * 100 AS "Intial Grade"
FROM "w"
JOIN "qa" ON "w"."student_id" = "qa"."student_id"
JOIN "pt" ON "pt"."student_id" = "qa"."student_id"
JOIN "students" ON "students"."id" = "w"."student_id";


-- Delete a score
DELETE FROM "scores"
WHERE "scores"."student_id" = 1
    AND "scores"."assessment_id" = 1;

-- Update a score
UPDATE "scores"
SET "value" = 90
WHERE "scores"."student_id" = 1
    AND "scores"."assessment_id" = 2;
