// config.js
require("dotenv").config(); // loads variables from .env if it exists

const MYSQLSERVER = process.env.MYSQLSERVER || "localhost";
const MYSQLUSER = process.env.MYSQLUSER || "reactusr";
const MYSQLPASSWORD = process.env.MYSQLPASSWORD || "SqlUserPass1";
const MYSQLDB = process.env.MYSQLDB || "reactdb";

// Debug print
console.log("=== MySQL Configuration ===");
console.log("MYSQLSERVER:", MYSQLSERVER);
console.log("MYSQLUSER:", MYSQLUSER);
console.log("MYSQLPASSWORD:", MYSQLPASSWORD);
console.log("MYSQLDB:", MYSQLDB);
console.log("============================");

module.exports = {
  HOST: MYSQLSERVER,
  USER: MYSQLUSER,
  PASSWORD: MYSQLPASSWORD,
  DB: MYSQLDB,
  dialect: "mysql",
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000,
  },
};
