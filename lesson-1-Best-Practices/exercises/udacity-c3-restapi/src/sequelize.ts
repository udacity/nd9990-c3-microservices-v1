import {Sequelize} from 'sequelize-typescript';
import { config } from './config/config';


const c = config.dev;

// Instantiate new Sequelize instance!
export const sequelize = new Sequelize({
  "username": c.username,
  "password": c.password,
  "database": c.database,
  "host":     c.host,

  dialect: 'postgres',
  storage: ':memory:',
  logging: console.log,
});

console.log("database information")
console.log("__________________________")
console.log(c.username);
console.log(c.password);
console.log(c.database);
console.log(c.host);

