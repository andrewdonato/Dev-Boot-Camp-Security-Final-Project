# DBC Wargames!

##The Team
[Chad](https://github.com/chadcentofante) - [Campbell](https://github.com/Campbellb) - [Darwin](https://github.com/darwin67) - [Guil](https://github.com/guilsa)

##Our Mission Statement
DBC teaches the students to write web applications in Ruby on Rails -- security can sometimes be considered an afterthought. Our team decided to make this our main focus, and illuminate the security flaws in some of the web apps we are writing.

This is a compendium of all of the information we have learned - the common exploits, the security tools used, and other useful tips from the web security world. This can be used as a point of reference for people interested in learning more about this important topic.

##Table of Contents
###Definitions
The world of Web Security can be a scary place...
 Let us clear up some of your confusion by defining a few terms!
* [Penetration Testing](/definitions/pentesting.md) - What is this pentesting thing anyways? 
* [White Hat vs. Black Hat](/definitions/hats.md) - Which hat do I wear?
* [CVE's and 0-day's](/definitions/0day.md) - Security holes for which no solution is currently available.
* [Bug Bounties](/definitions/bugbounties.md) - Find exploits for fame and fortune!
* [TOR & Deep Web](/definitions/tor.md) - Quick overview of the Tor Project


###Common Exploits 
As a software developer, what do I need to know?
* [Viruses](/exploits/virus.md) - Explanation of Viruses, Malware, Worms, Trojans.. ---Needs work
* [Social Engineering](/exploits/socialengineering.md) - Tricking people into breaking normal security procedures ---Needs work
* [SQL Injection](/exploits/sql-injection/README.md) - SQL Injections can destroy your database.
* [Man-in-the-middle Attacks](/exploits/mitm.md) - Intercept the traffic between two parties
* [XSS](/exploits/xss.md) - Injecting malicious client-side scripts into Web pages
* [Sessions hijacking](/exploits/sessions.md) - Attackers stealing the cookies used to authenticate a user to a remote server. ---Needs work
* [Fuzzing](/exploits/fuzzing.md) - Fuzzers automatically inject data into a program to detect bugs.
* [Phishing](/exploits/phishing.md) - A Nigerian prince wants to give ME money? ---Needs work
* [DDoS](/exploits/ddos.md) - Denial Of Service Attacks
* [Access Point Spoofing](/exploits/spoofing.md) ---Needs work
* [Keyloggers](/exploits/keyloggers.md) - Keylogging software reads everything you type. ---Needs work


###Security Tools
There are tons of security tools out there. These are just a few that we've spent time researching - there are many, many more.
* [Burp](/tools/burp/burp.md) - man-in-the-middle app with many modules
* [recon-ng](/tools/recon-ng/recon-ng.md) - regarded as one of the top tools for open source reconnaisance ---Needs work
* [BeEF](/tools/beef/beef.md) - a penetration testing tool that focuses on the web browser
* [w3af](/tools/w3af.md) - an open-source web application security scanner
* [metasploit & kali linux](/tools/metasploit/metasploit.md) - The Hacker's OS ---Can add more
* [Browser Extensions](/tools/extensions.md) - Turn your browser into a hacking machine

### Application Development
* [HTTPS and SSL](/dev/https-ssl.md) - enabling HTTPS over Rails and Sinatra
* [Front-end form validation](/dev/frontend-validation.md) - the purpose of front-end validation libraries
* [Development Guide](/dev/dev-guide.md) - getting into the right mindset for building app security from the start

###Other
* [Websites where you can practice security stuff](/other/practice.md)
* What else do we need? add it here fellas
