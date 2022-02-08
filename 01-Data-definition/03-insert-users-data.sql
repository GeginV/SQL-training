-- For not generated (has errors)
INSERT INTO users (yearly_salary, full_name, current_status) 
VALUES (19000, 'Max Schwarz', 'self-employed'); 

INSERT INTO users (yearly_salary, full_name, current_status) 
VALUES (0, 'Greg Holz', 'unemployed');

INSERT INTO users (full_name, yearly_salary, current_status) 
VALUES ('Brandon Belmont', 10000, 'self-employed');

INSERT INTO users (full_name, yearly_salary, current_status)
 VALUES ('Muchamed Abdul', 5000 , 'employed');

-- For GENERATED
INSERT INTO users (yearly_salary, first_name, last_name, current_status) 
VALUES (19000, 'Max', 'Schwarz', 'self-employed'); 

INSERT INTO users (first_name, last_name, current_status) 
VALUES ('Greg', 'Holz', 'unemployed');

INSERT INTO users (yearly_salary, first_name, last_name, current_status) 
VALUES ( 10000, 'Brandon', 'Belmont', 'self-employed');

INSERT INTO users (yearly_salary, first_name, last_name, current_status) 
 VALUES (5000, 'Muchamed',  'Abdul', 'employed');

