# SQL Vulnerabilities
A SQL Injection attack consists of insertion or "injection" of a SQL query via the input data from the client to the application. A successful SQL injection exploit can read sensitive data from the database, modify database data (Insert/Update/Delete), execute administration operations on the database (such as shutdown the DBMS), and more!  

- Standard Injection
- Union Exploitation
- Error Based Exploitation
- Boolean Exploitation
- Time Delay Exploitation
  
etc.


#### Standard Injection
One of the most famous attacks are the `1=1 Always True` standard injections. If this injection is successful, the attacker will be able to pull out all the data from the current table. The sample below is a example of an injection from the URL.
```url
www.example.com/users/1' or 1=1--
```

:*Standard Injection Sample*:
![Standard Always True Injection sample](img/always-true.png)
:*%27 and %20 is how the browser interpret ' and space*:


Basicly SQL injections always start with a quote(`' or "`), because when the sample url above is used to query the database, the underlying SQL query will most likely to be a string like this.
```sql
SELECT * FROM users
WHERE users.id = '1'
```
Therefore, adding a quote to the end of the URL will end that query and you are able to add additional commands to it. `1=1` or `x=x` are the most seen examples but it doesn't matter what you put at both sides of the `=` as long as they are the same things. The result of this query will be always be `true`, which means that the database will take out everything it can find and that means *everything*.
The `--` after `1=1` is the comment syntax in SQL. By adding this to the end of the injection, it will comment out any other following commands after the injected query. Therefore the injected query will be the last thing for the database to see, and will give the hacker everything they are looking for.



#### Union Exploitation
The Union operator is used in SQL injections to join a extra query to the original query purposely by the attacker. The result of the forged query will be joined with the original query and allows the attacker to gain access to the columns and values of other tables. An example of a Union Injection in the URL will look like this.
```url
www.example.com/users/1' union select 1,1 from vote--
```
The SQL query in the example above is trying to do something like this.
```sql
SELECT * FROM users
WHERE users.id = 1
UNION
SELECT 1, 1 FROM votes
```
What this query is trying to do is to first select a user from the user table with the id 1 *and also* select the column 1 and 1 from the table votes. I suppossed some people are confused at this point. What in the world does `1, 1` do? This is actually a combination of Union Exploitation and Error Based Exploitation (I will go into details about this later). In the place of `1, 1`, it would be replaced column names of the table the attacker is looking for. So I think it will make more sense if I write it like this.
```sql
SELECT * FROM users
WHERE users.id = 1
UNION
SELECT votes.id, votes.user_id FROM votes
```
This is an effective way of extracting values from the database when you know the name of the tables or columns.

*Abstract example*
```url
<URL>' union select <column name> from <table name>
```



#### Error Based Exploitation
Error Based Exploitation are a way for an attacker to gain information about the database by intentionally passing the wrong syntax when injecting queries. It's a way for an attacker to guess what kind of tables or columns there are in the database when the attacker can't exploit the SQL injection vulnerability using techniques like the `Union Exploitation`.  
  
An example of an Error Based Exploitation on the URL will look like this.
```url
www.example.com/users/1' union select 1,1 from vote--
```
This look familiar doesn't it? That's right, this is one of the example I used in the Union Exploitation technique. You may wonder why I'm repeating this, but it will make sense if you take a look at the picture below.
  
*Error Based Exploitation sample 1*
![Union Exploitation sample 1](img/error-1.png)

The high lighted part in the URL is the same as the example above. If you take a look at the 2 smaller high lights, you can see that they are actually giving the attacker(which is me in this case) some information about the columns in the database. The error is telling us the type of the attribute of that table, so let's take a look at what will happen when we change one of the ones to a string instead of an integer?  

*Error Based Exploitation sample 2*
![Union Exploitation sample 2](img/error-2.png)

As you can see, the errors disappeared. So what the attacker will know from this process is that the first and second column is a integer type and a string type. This might not look threatening at this point, but if a attacker can gain information about the database this easily, getting all the values out just requires a few couple more of guesses and then the attacker can switch to other techniques like *Union Exploitation* to take out the values from the database.
