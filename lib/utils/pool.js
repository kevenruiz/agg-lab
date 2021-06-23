const { Pool } = require('pg');

const pool = new Pool({
  connectionString: 'postgres://student:alchemy@dvd-rentals.cxuumjqqqkri.us-west-2.rds.amazonaws.com:5432/dvdrental',
  ssl: process.env.PGSSLMODE && { rejectUnauthorized: false }
});

module.exports = pool;
