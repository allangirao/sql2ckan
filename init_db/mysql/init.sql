USE ckan;

CREATE TABLE IF NOT EXISTS test_table(
	id INT AUTO_INCREMENT PRIMARY KEY,
	description VARCHAR(200) NOT NULL
);

INSERT INTO test_table(description)
VALUES
('mysql_desc1'),
('mysql_desc2'),
('mysql_desc3'),
('mysql_desc4'),
('mysql_desc5'),
('mysql_desc6');
