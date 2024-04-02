CREATE SCHEMA accountant;

CREATE TABLE IF NOT EXISTS accountant.accounts (
    id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT
);

CREATE INDEX IF NOT EXISTS idx_accounts_id ON accountant.accounts (id);
