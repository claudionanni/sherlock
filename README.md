# sherlock - info collector

Files:

**shock**  ::  main command

**shock_db2json**  ::  dumps the list of commands from the database table to a json file which can then be uploaded to github (only needed when new commands are added in the database table and you need to export them to github for publishing)

**sherlock_cmd-schema.sql**  ::  table of commands , schema

**sherlock_cmd-data.sql**  ::  table of commands , dump of data only needed for the initial load in case a different developer needs to add commands

**sherlock_cmd.json**  ::  json file with commands, this is used by *shock* and it will be retrieved in these ways and in this order: 1) Downloaded from github (overwriting local copy), 2) Read from current folder (in case internet connection is not available on the host)



```SHERLOCK ©2020
usage: shock [-h] [--host <hostname or ip>] [--port <port>] [--user <user>]
             [--password <password>]
             [--commands [<command>, [<command>, ...]]]

Collects info from the OS and a MariaDB instance for incident investigation.

optional arguments:
  -h, --help            show this help message and exit
  --host <hostname or ip>
                        Hostname or ip of the MariaDB instance
  --port <port>         Port the MariaDB instance
  --user <user>         User of the MariaDB instance
  --password <password>
                        Password of the MariaDB instance
  --commands [<command>, [<command>, ...]]
                        It takes a comma separated list of commands
```
