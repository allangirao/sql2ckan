CREATE TABLE IF NOT EXISTS test_table(
	id SERIAL PRIMARY KEY,
	description VARCHAR(200) NOT NULL
);

INSERT INTO test_table(description)
VALUES
('pgsql_desc1'),
('pgsql_desc2'),
('pgsql_desc3'),
('pgsql_desc4'),
('pgsql_desc5'),
('pgsql_desc6');
