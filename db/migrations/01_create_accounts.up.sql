CREATE TABLE IF NOT EXISTS accounts (
    id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT
);

CREATE INDEX IF NOT EXISTS idx_accounts_id ON accounts (id);