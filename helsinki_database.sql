CREATE DATABASE Helsinki;

CREATE TABLE Helsinki.User (
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(20) NOT NULL,
  email VARCHAR(40) NOT NULL,
  password VARCHAR(20) NOT NULL
);

CREATE TABLE Helsinki.Tasks (
  task_id INT PRIMARY KEY AUTO_INCREMENT,
  task_name VARCHAR(15) NOT NULL,
  user_input VARCHAR(255)
);

CREATE TABLE Helsinki.UserTasks (
  user_id INT,
  task_id INT,
  is_completed BOOLEAN,
  PRIMARY KEY (user_id, task_id),
  FOREIGN KEY (user_id) REFERENCES Helsinki.User(user_id),
  FOREIGN KEY (task_id) REFERENCES Helsinki.Tasks(task_id)
);

CREATE TABLE Helsinki.Badges (
  badge_id INT PRIMARY KEY AUTO_INCREMENT,
  badge_name VARCHAR(30) NOT NULL,
  badge_image_path VARCHAR(255) NOT NULL,
  task_id INT,
  FOREIGN KEY (task_id) REFERENCES Helsinki.Tasks(task_id)
);