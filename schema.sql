CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100),
    email VARCHAR(150),
    role VARCHAR(50),
    created_at TIMESTAMP
);

CREATE TABLE GardenSections (
    section_id INT PRIMARY KEY AUTO_INCREMENT,
    section_name VARCHAR(100),
    location VARCHAR(255),
    description TEXT
);

CREATE TABLE ArchitecturePlans (
    plan_id INT PRIMARY KEY AUTO_INCREMENT,
    section_id INT,
    created_by INT,
    plan_name VARCHAR(150),
    plan_file VARCHAR(255),
    status VARCHAR(50),
    created_at TIMESTAMP,
    FOREIGN KEY(section_id) REFERENCES GardenSections(section_id),
    FOREIGN KEY(created_by) REFERENCES Users(user_id)
);

CREATE TABLE ActivityLogs (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    action VARCHAR(255),
    action_time TIMESTAMP,
    FOREIGN KEY(user_id) REFERENCES Users(user_id)
);
