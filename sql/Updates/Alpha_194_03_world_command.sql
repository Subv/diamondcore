

DELETE FROM command WHERE name = 'stable';
INSERT INTO command (name, security, help) VALUES
('stable',3,'Syntax: .stable\r\n\r\nShow your pet stable.');
