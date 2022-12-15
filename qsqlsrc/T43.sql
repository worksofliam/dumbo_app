create or replace table T43 (
  primcol integer not null GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
  chardata varchar(30),
  PRIMARY KEY (primcol)
);