BEGIN TRANSACTION;
CREATE SEQUENCE users_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 12
  CACHE 1;
ALTER TABLE users OWNER TO testdb;
alter table testdb.users
alter column id 
set default nextval('users_id_seq');
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "email" varchar(255), "created_at" datetime, "updated_at" datetime, "encrypted_password" varchar(255), "salt" varchar(255), "remember_token" varchar(255), "status" varchar(255));
INSERT INTO "users" VALUES(10,'admin','admin@restaurant.com','2010-06-08 13:15:05','2010-06-30 13:17:00','35ef413bfd9a02e2e3e54756be6b36f3197a865d7e3f92899c177dd2ce34676e','ac43a7d6b2fdeb529ae95aece3480e49b19bdd8b3d23a0d5422847818b9b8c73','210d3da035217d3ba4bf4b780c5749569096d9dad515e90d8999f2e3ca931964','user');
INSERT INTO "users" VALUES(11,'super','super@restaurant.com','2010-06-08 13:22:50','2010-06-10 07:44:58','56154035c55fbcfb58a29fd1716db4b8575cac39e8303cee3b1b510f097c3142','73793d701fae8d988597cf2de6c99f785a393d3e8e477000b51b53d8a6ff2b3e','74b4ec3d474a84e8cfd71980c5e67ccd3f36bbacb396d68990bb4917dd10b7f9','administrator');
COMMIT;
