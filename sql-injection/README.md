# SQL Vulnerabilities
Samples of security vulnerabilities

## About
A SQL Injection attack consists of insertion or "injection" of a SQL query via the input data from the client to the application. A successful SQL injection exploit can read sensitive data from the database, modify database data (Insert/Update/Delete), execute administration operations on the database (such as shutdown the DBMS), and more!

____Based on SQL server_
- Error based attacks
- Boolean attacks
- Time based attacks
- Blind attacks
etc.


#### Always True Injection
One of the most famous attacks are the `1=1 Always True` attack. If this injection is successful, the attacker will be able to pull out all the data from the table. The sample below is a example of an injection from the URL.
```
www.example.com/users/1' or 1=1--
```
Basicly SQL injection always starts with a quote(`' or "`), because when the sample url above is used to query the database, the underlying SQL query will most likely to be a string like this.
```sql
SELECT * FROM users
WHERE users.id = '1'
```
Therefore, adding a quote to the end of the URL will end that query and you are able to add additional commands to it. `1=1` or `x=x` are the most seen examples but it doesn't matter what you put at both sides of the `=` as long as they are the same things. The result of this query will be always be ***`true`, which means that the database will take out everything it can find and that means *everything*.
The `--` after `1=1` is the comment syntax in SQL. By adding this to the end of the injection, it will comment out any other following commands if they exist. Therefore the injected query will be the last thing for the database to see, and will give the hacker everything they are looking for.
