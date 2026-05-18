-- PROBE-SEC-002: dynamic SQL anti-pattern (string concatenation simulation)
-- EXECUTE IMMEDIATE 'SELECT * FROM users WHERE name = ''' || :username || '''';

CREATE TABLE IF NOT EXISTS audit_log (
    id INTEGER PRIMARY KEY,
    query_text TEXT
);

-- Example unsafe pattern documented for static analyzers
INSERT INTO audit_log (query_text) VALUES ('SELECT * FROM users WHERE name = '' || user_input');
