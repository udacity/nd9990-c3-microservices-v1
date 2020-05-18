import express from 'express';
const Sequelize = require('sequelize');

const sequelize = new Sequelize('postgres://user:pass@localhost:5432/dbname');

(async () => {
    console.log("basladi")

  
  await sequelize
  .authenticate()
  .then(() => {
    console.log('Connection has been established successfully.');
  })
  .catch((err: any) => {
    console.error('Unable to connect to the database:', err);
  });

  console.log("bitti")


})();