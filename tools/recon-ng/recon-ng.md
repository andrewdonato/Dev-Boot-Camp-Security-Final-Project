#recon-ng
About
----

Recon-ng is a full-featured Web Reconnaissance framework written in Python. Complete with independent modules, database interaction, built in convenience functions, interactive help, and command completion, Recon-ng provides a powerful environment in which open source web-based reconnaissance can be conducted quickly and thoroughly.

Recon-ng has a look and feel similar to the Metasploit Framework, reducing the learning curve for leveraging the framework. However, it is quite different. Recon-ng is not intended to compete with existing frameworks, as it is designed exclusively for web-based open source reconnaissance. If you want to exploit, use the Metasploit Framework. If you want to social engineer, use the Social-Engineer Toolkit. If you want to conduct reconnaissance, use Recon-ng! See the Usage Guide for more information.

Recon-ng is a completely modular framework and makes it easy for even the newest of Python developers to contribute. Each module is a subclass of the "module" class. The "module" class is a customized "cmd" interpreter equipped with built-in functionality that provides simple interfaces to common tasks such as standardizing output, interacting with the database, making web requests, and managing API keys. Therefore, all the hard work has been done. Building modules is simple and takes little more than a few minutes. See the Development Guide for more information.

More information can be found at:

https://bitbucket.org/LaNMaSteR53/recon-ng/overview

Installation
----

Make sure brew is installed:

	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

Install Python:

	brew install python

Download the repository:

	git clone https://bitbucket.org/LaNMaSteR53/recon-ng.git

Install dependencies:

	pip install -r REQUIREMENTS

Usage
----

To open the program type:

    python ./recon-ng 

Once the program is open, to see a list of available commands, type:

    help

To get started, type:

	workspaces list

If no workspaces are displayed, type:

	workspaces add <workspace name>

Then, type:

	workspaces select <workspace name>

Your workspace is loaded. To load a module and get started, type:

	load <module name>

Acquiring API Keys
----

-Bing API Key (bing_api) - Sign up for the free subscription to the Bing Search API here. Sign in to the Windows Azure Marketplace and go to the "My Account" tab. The API key will be available under the "Account Keys" page.

-BuiltWith API Key (builtwith_api) - Sign up for a free account here. Sign in to the application. The API key will be available in the upper right hand portion of the screen.

-Facebook API Key (facebook_api) - TBD

-Facebook Secret (facebook_secret) - TBD

-Flickr API Key (flickr_api) - TBD

-FullContact API Key (fullcontact_api) - TBD

-Google API Key (google_api) - Create an API Project here. The API key will be available in the project management console.

-Google Custom Search Engine (CSE) ID (google_cse) - Create a CSE here. The CSE ID will be available in the CSE management console. Read here for guidance on configuring the CSE to search the entire web. Otherwise, the CSE will be restricted to only searching domains specified within the CSE management console. This will drastically effect the results of any module which leverages the CSE.

-Instagram API Key (instagram_api) - Log in to http://instagram.com/developer/clients/register/ with an existing Instagram account and register a new application. Add http://localhost:31337 as the "OAuth redirect_uri". Click "Manage Clients" at the top of the screen and the API key will be available as the "CLIENT ID".
Instagram Secret (instagram_secret) - Log in to http://instagram.com/developer/. Click "Manage Clients" at the top of the screen and the Secret key will be available as the "CLIENT SECRET".

-IPInfoDB API Key (ipinfodb_api) - Create a free account here. Log in to the application here. The API key will be available on the "Account" tab.
Jigsaw API Key (jigsaw_api) - Create an account and sign up for the $1,500/year plan here. A corporate email address is preferred. Submit a request for an API token here using the same email address that was used to create the paid account. The Jigsaw API team will look up the account to validate that it is a paid membership and issue an API token.

-LinkedIn API Key (linkedin_api) - Log in to the developer portal with an existing LinkedIn account and add a new application. Click on the application name. Add http://localhost:31337 to the list of "OAuth 2.0 Redirect URLs". The API key will be available underneath the "OAuth Keys" heading.

-As of November 4th, 2013, the People Search API (required for all LinkedIn related modules) has been added to the Vetted API Access program. As a result, a Vetted API Access request must be submitted and approved for the application in order for the associated API key to function properly with the LinkedIn modules.
LinkedIn Secret (linkedin_secret) - The Secret key will be available underneath the "OAuth Keys" heading for the application created above.

-PwnedList API Key (pwnedlist_api) - Contact PwnedList directly regarding API access.

-PwnedList Initialization Vector (pwnedlist_iv) - Contact PwnedList directly regarding API access.

-PwnedList Secret (pwnedlist_secret) - Contact PwnedList directly regarding API access.

-Shodan API Key (shodan_api) - Create an account or sign in to Shodan using one of the many options available here. The API key will be available on the right side of the screen. An upgraded account is required to access advanced search features.

-Twitter Consumer Key (twitter_api) - Create an application here. The Consumer key will be available on the application management page.

Twitter Consumer Secret (twitter_secret) - The Consumer secret will be available on the application management page for the application created above.

-VirusTotal API Key (virustotal_api) - Create a free account by clicking the "Join our community" button here. Log in to the application and select "My API key" from the user menu. The API key will be visible towards the top of the page.



