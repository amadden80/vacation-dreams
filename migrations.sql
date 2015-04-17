

CREATE DATABASE rest_vacation_application;

\c rest_vacation_application

CREATE TABLE vacations (
  id SERIAL PRIMARY KEY,
  location VARCHAR(255)
);
