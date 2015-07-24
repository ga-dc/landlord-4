DROP TABLE IF EXIST tenants;
DROP TABLE IF EXIST apartments;

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  address TEXT NOT NULL,
  monthly_rent TEXT,
  sqft INT,
  num_beds INT,
  num_baths INT
);

CREATE TABLE tenants (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  age INT,
  gender TEXT,
  apartment_id INTEGER REFERENCES apartments(id)
)
