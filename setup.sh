#!/bin/bash
echo "🚀 Starting environment setup..."

# 1. Initialize Next.js app with React, Tailwind, and structural defaults
npx create-next-app@latest learner-app --ts=false --src-dir=false --app --import-alias="@/*" --eslint --tailwind --use-npm

# 2. Enter project directory
cd learner-app

# 3. Install SQL driver packages
npm install sqlite3 sqlite

# 4. Spin up a script to seed the initial local SQLite database
node -e "
const sqlite3 = require('sqlite3');
const db = new sqlite3.Database('database.db');
db.serialize(() => {
  db.run('CREATE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, email TEXT)');
    db.run(\"INSERT INTO users (name, email) VALUES ('Alice', 'alice@example.com'), ('Bob', 'bob@example.com')\");
      console.log('✅ SQL Database initialized successfully with active seed data!');
      });
      db.close();
      "

      echo "🎉 Setup complete! Starting the development server..."
npm run dev
