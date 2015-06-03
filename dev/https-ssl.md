## Quick and Dirty - Rails and Sinatra HTTPS/SSL* ##

Regardless of whether we as developers use SSL, most web applications still contain security flaws. If the application uses SSL, this simply means that other users on the network cannot view or modify the attacker’s data in transit. Because the attacker controls her end of the SSL tunnel, she can send anything she likes to the server through this tunnel.

## Benefit of SSL ##

SSL protects the confidentiality and integrity of data in transit between the user’s browser and the web server. It helps defend against eavesdroppers, and it can provide assurance to the user of the identity of the web server he is dealing with. But it does not stop attacks.
Cookie/session hijacking

## Before forcing SSL in Rails, what you should know ##

Unless you have specific requirements, don’t worry about setting up SSL on localhost because an attacker wouldn’t be able to compromise the traffic going to localhost unless your computer is already compromised at a fairly low level.

## Forcing SSL in Rails ##
You should always force the browser to use HTTPS when you're transferring sensitive information such as user authentication, account information, or credit card information.

Use config.force_ssl in your config file. That will ensure all the data transferred via HTTPS protocol and prevent user from getting session hijacked when accessing the site under unsecured HTTP protocol.

Follow these instructions to setup SSL on Rails and Heroku:
https://robots.thoughtbot.com/ssl-for-rails-with-heroku-and-dnsimple

## How to configure SSL for Sinatra? ##

You can use rack-protection to force SSL through Sinatra. http://www.sinatrarb.com/rack-protection/

## Resources ##

http://www.quora.com/How-will-you-explain-SSH-VPN-HTTPS-SSL-in-simple-terms-to-a-beginner-in-networking

http://security.stackexchange.com/questions/48965/form-submissions-over-https-are-not-encrypted

https://www.digicert.com/ssl.htm

http://security.stackexchange.com/questions/37701/is-encryption-in-https-done-by-the-browser-or-by-the-system

http://api.rubyonrails.org/classes/ActionController/ForceSSL/ClassMethods.html#method-i-force_ssl

####

* (Excerpts from The Web Application Hacker's Handbook: Finding and Exploiting Security Flaws)[http://www.amazon.com/The-Web-Application-Hackers-Handbook/dp/1118026470]
