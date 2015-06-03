#Tor
![Tor](/img/tor.png "Tor")

Tor is free software for enabling anonymous communication.

Tor directs Internet traffic through a free, worldwide, volunteer network consisting of more than six thousand relays to conceal a user's location and usage from anyone conducting network surveillance or traffic analysis. Using Tor makes it more difficult for Internet activity to be traced back to the user: this includes "visits to Web sites, online posts, instant messages, and other communication forms". Tor's use is intended to protect the personal privacy of users, as well as their freedom and ability to conduct confidential communication by keeping their Internet activities from being monitored.

Tor routing is not so hard to understand:

* Tor encrypts the original data, including the destination IP address, multiple times and sends it through a virtual circuit comprising successive, randomly selected Tor relays.
* Each relay decrypts a layer of encryption to reveal only the next relay in the circuit in order to pass the remaining encrypted data on to it.
* The final relay decrypts the innermost layer of encryption and sends the original data to its destination without revealing, or even knowing, the source IP address.

Because the routing of the communication is partly concealed at every hop in the Tor circuit, this method eliminates any single point at which the communication can be de-anonymized through network surveillance that relies upon knowing its source and destination.

##Deep Web
###aka Dark Internet
This is a portion of content on the World Wide Web that is not indexed by standard search engines.

It is impossible to measure, and hard to put estimates on, the size of the deep web because the majority of the information is hidden or locked inside databases. Early estimates suggested that the deep web is 400 to 550 times larger than the surface web. However, since more information and sites are always being added, it can be assumed that the deep web is growing exponentially at a rate that cannot be quantified.

Tor unlocks access to parts of the Deep Web, particularly .onion sites that are accessed through the TOR Web Browser. For political dissidents and criminals alike, this kind of anonymity shows the immense power of the dark Web, enabling transfers of information, goods and services, legally or illegally, to the chagrin of the powers-that-be all over the world.

####Citations and Additional Reading:
* [Tor Web Browser](https://www.torproject.org/)
* [HotStuffWorks: Deep Web](http://computer.howstuffworks.com/internet/basics/how-the-deep-web-works.htm)
