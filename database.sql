CREATE TABLE Lessons (
    id ,
    lesson_name ,
    lesson_content ,
    video_url ,
    course_position ,
    created_at ,
    updated_at ,
    course_url ,
    deleted
)

CREATE TABLE Courses (
    id ,
    course_name ,
    course_discription ,
    created_at ,
    updated_at ,
    deleted
)

CREATE TABLE Modules (
    id ,
    module_name ,
    module_discription ,
    created_at ,
    updated_at ,
    deleted
)

CREATE TABLE Programs (
    id ,
    program_name ,
    program_price ,
    program_type ,
    created_at ,
    updated_at 
)