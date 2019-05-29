This daemon parses the router's logs as they come, applying a set of liblognorm rules to them.
* If the matching rule has a "ignore" tag, that log will be ignored
* If there is a matching rule that doesn't have an ignore tag, and a logserver is configured, it will be sent to that server
* If the matching rule has a "event" tag, it will be announced as an ubus event
* If there is no matching rule, it will also be sent to the logserver to a different port so the server can process them separately.

The purpose of this daemon is twofold:
* to be able to keep a close look on what is happening on the router so we can react to unexpected or undesirable situations
* to be able to monitor local events that get announced on the log so we can forward them over ubus and through there to the user

In order to use this daemon, you need to create the set of rules and add them in /etc/lognorm_rules.rb
An example file is added to this repository.
