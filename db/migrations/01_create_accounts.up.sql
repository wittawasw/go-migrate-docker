CREATE TABLE IF NOT EXISTS accounts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    email TEXT
);
CREATE INDEX IF NOT EXISTS idx_accounts_id ON accounts (id);
