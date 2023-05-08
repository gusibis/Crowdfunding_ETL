-- drop table campaingn;
-- drop table subcategory;
-- drop table category;
-- drop table contacts;

CREATE TABLE contacts (
  contact_id integer PRIMARY KEY,
  first_name varchar(255) NOT NULL,
  last_name varchar (255) NOT NULL,
  email varchar (255) NOT NULL
);

CREATE TABLE category (
  category_id varchar (255) PRIMARY KEY,
  category varchar (255)  NOT NULL
);

CREATE TABLE subcategory (
  subcategory_id varchar (255) PRIMARY KEY,
  subcategory varchar (255) NOT NULL
);

CREATE TABLE campaingn (
  cf_id integer,
  contact_id integer PRIMARY KEY,
  company_name varchar (255) NOT NULL,
  short_description varchar NOT NULL,
  goal integer,
  pledged integer,
  outcome varchar (255),
  backers_count integer,
  country varchar (255),
  currency varchar (255), 
  launched_date date  NOT NULL,
  end_date date  NOT NULL,
  category_id varchar (255) NOT NULL,
  FOREIGN KEY (category_id) REFERENCES category (category_id),
  subcategory_id varchar (255) NOT NULL,
  FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);
