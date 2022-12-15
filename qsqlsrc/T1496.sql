create or replace table T1496 (
  primcol integer not null GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
  chardata varchar(30),
  PRIMARY KEY (primcol)
);