CREATE TABLE Lessons (
    id SMALLINT PRIMARY KEY,
    lesson_name VARCHAR(100) NOT NULL,
    lesson_content ,
    video_url VARCHAR(100) NOT NULL,
    course_position ,
    created_at TIMESTAMPZ DEFAULT NOW(),
    updated_at TIMESTAMPZ DEFAULT NOW(),
    course_url VARCHAR(100) NOT NULL,
    deleted BOOLEAN
)

CREATE TABLE Courses (
    id SMALLINT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    course_discription TEXT,
    created_at TIMESTAMPZ DEFAULT NOW(),
    updated_at TIMESTAMPZ DEFAULT NOW(),
    deleted BOOLEAN
)

CREATE TABLE Modules (
    id SMALLINT PRIMARY KEY,
    module_name VARCHAR(100) NOT NULL,
    module_discription TEXT,
    created_at TIMESTAMPZ DEFAULT NOW(),
    updated_at TIMESTAMPZ DEFAULT NOW(),
    deleted BOOLEAN
)

CREATE TABLE Programs (
    id SMALLINT PRIMARY KEY,
    program_name VARCHAR(100) NOT NULL,
    program_price FLOAT,
    program_type VARCHAR(100) NOT NULL,
    created_at TIMESTAMPZ DEFAULT NOW(),
    updated_at TIMESTAMPZ DEFAULT NOW()
)