-- captures isn't being used anymore (2017-02-16). This overcomplicates the process.

CREATE TABLE captures (
  id serial PRIMARY KEY,
  perm_id varchar(20),
  cap_date date,
  sex varchar(8),
  age varchar(10),
  species varchar(4),
  notes varchar,
  serial_num varchar(50),
  created_at timestamp with time zone DEFAULT now(),
  updated_at timestamp with time zone DEFAULT now(),
  deleted_at timestamp with time zone
);
