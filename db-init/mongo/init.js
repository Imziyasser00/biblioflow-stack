db = db.getSiblingDB('biblio_logs');
db.createCollection('logs');
db.logs.createIndex({ ts: 1 });
db.createUser({ user: 'loguser', pwd: 'logpass', roles: [{ role: 'readWrite', db: 'biblio_logs' }] });
