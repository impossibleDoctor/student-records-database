-- In this SQL file, write (and comment!) the schema of your database, including the CREATE TABLE, CREATE INDEX, CREATE VIEW, etc. statements that compose it

CREATE TABLE IF NOT EXISTS "schools" (
    "id" INTEGER PRIMARY KEY,
    "name" TEXT NOT NULL,
    "region" TEXT NOT NULL,
    "division" TEXT NOT NULL
);

-- The teachers
CREATE TABLE IF NOT EXISTS "teachers" (
    "id" INTEGER PRIMARY KEY,
    "first_name" TEXT NOT NULL,
    "middle_initial" TEXT,
    "last_name" TEXT NOT NULL
);

-- SUBJECTS/COURSES KNOWN
CREATE TABLE IF NOT EXISTS "subjects" (
    "id" INTEGER PRIMARY KEY,
    "name" TEXT NOT NULL,
    "level" INTEGER,
    "track" TEXT,
    UNIQUE("name", "level")
);

-- components within a subject (needed for grade computation)
CREATE TABLE IF NOT EXISTS "components" (
    "id" INTEGER PRIMARY KEY,
    "name" TEXT NOT NULL,
    "percentage" REAL
);
-- subject to components connections
CREATE TABLE IF NOT EXISTS "subject_components" (
    "subject_id" INTEGER NOT NULL,
    "component_id" INTEGER NOT NULL,
    FOREIGN KEY("subject_id") REFERENCES "subjects"("id"),
    FOREIGN KEY("component_id") REFERENCES "components"("id"),
    UNIQUE("subject_id", "component_id")
);

-- CLASSES/COURSES [section_name] OFFERED BY [school_id] IN A.Y. [year], [semester] SEM
CREATE TABLE IF NOT EXISTS "classes" (
    "id" INTEGER PRIMARY KEY,
    "name" TEXT, -- FORMAT: {subject} {grad_level} {section_name} A.Y. {year} {sem} Sem
    "subject_id" INTEGER,
    "teacher_id" INTEGER,
    "school_id" INTEGER,
    "year" INTEGER,
    "semester" INT,
    FOREIGN KEY("subject_id") REFERENCES "subjects"("id"),
    FOREIGN KEY("school_id") REFERENCES "schools"("id"),
    FOREIGN KEY("teacher_id") REFERENCES "teachers"("id")
);

-- GRADE SECTIONS in [SCHOOL] in [YEAR]
CREATE TABLE IF NOT EXISTS "grade_sections" (
    "id" INTEGER NOT NULL PRIMARY KEY,
    "grade" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "school_id" INTEGER,
    "adviser" TEXT,
    "year" INTEGER,
    FOREIGN KEY("school_id") REFERENCES "schools"("id")
);

-- THE STUDENTS
CREATE TABLE IF NOT EXISTS "students" (
    "id" INTEGER PRIMARY KEY,
    "first_name" TEXT NOT NULL,
    "middle_name" TEXT,
    "last_name" TEXT NOT NULL,
    "birth_date" DATE,
    "gender" INTEGER
);

-- all SCHOOLS STUDENT have attended
CREATE TABLE IF NOT EXISTS "students_schools" (
    "id" INTEGER PRIMARY KEY,
    "student_id" INTEGER NOT NULL,
    "school_id" INTEGER NOT NULL,
    "start_date" DATE NOT NULL,
    "end_date" DATE,
    FOREIGN KEY("student_id") REFERENCES "students"("id"),
    FOREIGN KEY("school_id") REFERENCES "schools"("id")
);

-- all SECTIONS STUDENTS belonged to
CREATE TABLE IF NOT EXISTS "students_sections" (
    "id" INTEGER PRIMARY KEY,
    "student_id" INTEGER NOT NULL,
    "section_id" INTEGER NOT NULL,
    FOREIGN KEY("student_id") REFERENCES "students"("id"),
    FOREIGN KEY("section_id") REFERENCES "grade_sections"("id"),
    UNIQUE("student_id", "section_id")
);

-- all CLASSES STUDENT were enrolled on
CREATE TABLE IF NOT EXISTS "students_classes" (
    "student_id" INTEGER NOT NULL,
    "class_id" INTEGER NOT NULL,
    FOREIGN KEY("student_id") REFERENCES "students"("id"),
    FOREIGN KEY("class_id") REFERENCES "classes"("id"),
    UNIQUE("student_id", "class_id")
);

-- ASSESSMENTS that are under certain COMPONENT
CREATE TABLE IF NOT EXISTS "assessments" (
    "id" INTEGER PRIMARY KEY,
    "name" TEXT,
    "max_score" INTEGER NOT NULL,
    "subject_id" INTEGER,
    "component_id" INTEGER NOT NULL,
    "quarter" INTEGER,
    FOREIGN KEY("component_id") REFERENCES "components"("id"),
    FOREIGN KEY("subject_id") REFERENCES "subjects"("id")
);

-- ASSESSMENTS within a CLASS
CREATE TABLE IF NOT EXISTS "class_assessments" (
    "id" INTEGER PRIMARY KEY,
    "class_id" INT NOT NULL,
    "assessment_id" INT NOT NULL,
    "date_given" DATE,
    FOREIGN KEY("class_id") REFERENCES "classes"("id"),
    FOREIGN KEY("assessment_id") REFERENCES "assessments"("id"),
    UNIQUE("class_id", "assessment_id")
);

-- SCORES of each STUDENT on a certain ASSESSMENT
CREATE TABLE IF NOT EXISTS "scores" (
    "id" INTEGER PRIMARY KEY,
    "student_id" INTEGER NOT NULL,
    "assessment_id" INTEGER NOT NULL,
    "value" REAL DEFAULT 0.0,
    FOREIGN KEY("student_id") REFERENCES "students"("id"),
    FOREIGN KEY("assessment_id") REFERENCES "assessments"("id"),
    UNIQUE("student_id", "assessment_id")
);
