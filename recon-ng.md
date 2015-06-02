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



