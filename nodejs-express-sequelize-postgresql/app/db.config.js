module.exports = {
  HOST: "localhost",
  USER: "fookinpelican",
  PASSWORD: "1234",
  DB: "surfin",
  dialect: "postgres",
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
};
