INSERT INTO users (current_status) -- will not work coz full_name == null
VALUES ('employed');

INSERT INTO users (full_name, current_status) -- will work coz full_name != null AND yearly_salary has no constraint
VALUES ('Manuel Lorenz', 'self-employed');

