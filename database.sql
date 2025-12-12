CREATE TABLE Lessons (
    id SERIAL PRIMARY KEY,
    course_id INT NOT NULL REFERENCES Courses(id)
    name VARCHAR(100) NOT NULL,
    content TEXT NOT NULL,
    video_url VARCHAR(255) NOT NULL,
    position SMALLINT NOT NULL,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW(),
    course_url VARCHAR(255) NOT NULL,
    deleted BOOLEAN
);

CREATE TABLE Courses (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    discription TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW(),
    deleted BOOLEAN
);

CREATE TABLE Modules (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    discription TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW(),
    deleted BOOLEAN
);

CREATE TABLE Programs (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DECIMAL (10, 2),
    type VARCHAR(100) NOT NULL,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE programs_modules(
    program_id INT NOT NULL REFERENCES Programs(id),
    module_id INT NOT NULL REFERENCES Modules(id),
    PRIMARY KEY (program_id, module_id)
);

CREATE TABLE modules_courses(
    module_id INT NOT NULL REFERENCES Modules(id),
    course_id INT NOT NULL REFERENCES Courses(id),
    PRIMARY KEY (module_id, course_id)
);