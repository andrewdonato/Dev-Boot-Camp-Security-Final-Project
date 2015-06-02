# SQL Vulnerabilities
Samples of security vulnerabilities

## About
A SQL Injection attack consists of insertion or "injection" of a SQL query via the input data from the client to the application. A successful SQL injection exploit can read sensitive data from the database, modify database data (Insert/Update/Delete), execute administration operations on the database (such as shutdown the DBMS), and more!

### SQL injection
Based on SQL server

- Error based attacks
- Boolean attacks
- Time based attacks
- Blind attacks
etc.


#### Always true
One of the most famous attacks are the `1=1 Always True` attack. If this injection is successful, the attacker will be able to pull out all the data (depending on what table you are injecting) from the database.
```
www.example.com/users/1**' or 1=1--**
```

