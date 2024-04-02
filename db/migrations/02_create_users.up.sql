CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE INDEX IF NOT EXISTS idx_users_id ON users (id);
