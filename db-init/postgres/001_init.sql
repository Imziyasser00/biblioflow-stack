CREATE TABLE IF NOT EXISTS users(
                                    id SERIAL PRIMARY KEY,
                                    email TEXT UNIQUE NOT NULL,
                                    password_hash TEXT NOT NULL,
                                    created_at TIMESTAMP DEFAULT NOW()
    );

CREATE TABLE IF NOT EXISTS tasks(
                                    id SERIAL PRIMARY KEY,
                                    user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    title TEXT NOT NULL,
    is_done BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT NOW()
    );
