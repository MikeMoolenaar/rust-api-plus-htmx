-- Add migration script here
-- I use sqlite
CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at INTEGER NOT NULL DEFAULT CURRENT_TIMESTAMP
)
