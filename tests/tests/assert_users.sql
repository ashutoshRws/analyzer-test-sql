-- Test fixture: expect one user named tester
SELECT COUNT(*) AS user_count FROM users WHERE name = 'tester';
