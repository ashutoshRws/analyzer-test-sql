CREATE VIEW IF NOT EXISTS greeting_view AS
SELECT 'Hello, ' || name AS message FROM users;
