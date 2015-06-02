#BeEF
## The Browser Exploitation Framework
It is a penetration testing tool that focuses on the web browser.

Amid growing concerns about web-borne attacks against clients, including mobile clients, BeEF allows the professional penetration tester to assess the actual security posture of a target environment by using client-side attack vectors. Unlike other security frameworks, BeEF looks past the hardened network perimeter and client system, and examines exploitability within the context of the one open door: the web browser. BeEF will hook one or more web browsers and use them as beachheads for launching directed command modules and further attacks against the system from within the browser context.

##Github and Documentation
*[BeEF's github page](https://github.com/beefproject/beef)
*[BeEF's wiki page with Installation Instructions and Documentation](https://github.com/beefproject/beef/wiki)

##Usages of BeEF
Once you 'hook' a browser with BeEF, it starts gathering data about the website which builds an attack profile, with information such as the Browser name and veresion, the Browser User Agent, and Plugins used, etc.
###Modules
####Social Engineering
Once you've hooked a browser, you can modify the whole page and cause different actions (redirection...), so there are a lot of possibilities for social engineering attacks

*[The Pretty Theft](https://github.com/beefproject/beef/wiki/Module%3A-Pretty-Theft) module prints a simple message to the user for requiring login and password and explaining that the session has timed out
*[The Simple Hijacker](https://github.com/beefproject/beef/wiki/Module%3A-Simple-Hijacker) module proposes several social engineering templates and prompt them to the user when he will click on a link on the page.
*[Clippy](https://github.com/beefproject/beef/wiki/Module%3A-Clippy) is a module that create a small browser assistant which propose browser updates.
More modules can be found at: [BeEF wiki - Social Engineering](https://github.com/beefproject/beef/wiki/Social-Engineering)
####Network Discovery
With Javascript hacks, it is possible to launch network attacks through a hooked browser. Check out: [BeEF wiki - Network Discovery](https://github.com/beefproject/beef/wiki/Network-discovery)
####Tunneling
Tunneling Proxy will process requests via a selected browser session. Check out: [BeEF wiki - Tunneling](https://github.com/beefproject/beef/wiki/Tunneling)
####XSS
BeEf has a [built in XSS scanner](https://github.com/beefproject/beef/wiki/Xss-Rays)!
####BeEF's RESTful API
One of the cool things about BeEF is it's easy-to-use API! Check out the documentation for that here: [BeEF wiki - BeEF RESTful API](https://github.com/beefproject/beef/wiki/BeEF-RESTful-API)