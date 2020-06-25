# sherlock - info collector

Files:

**shock**  ::  main command

**shock_db2json**  ::  dumps the list of commands from the database table to a json file which can then be uploaded to github (only needed when new commands are added in the database table and you need to export them to github for publishing)

**sherlock_cmd-schema.sql**  ::  table of commands , schema

**sherlock_cmd-data.sql**  ::  table of commands , dump of data only needed for the initial load in case a different developer needs to add commands

**sherlock_cmd.json**  ::  json file with commands, this is used by *shock* and it will be retrieved in these ways and in this order: 1) Downloaded from github (overwriting local copy), 2) Read from current folder (in case internet connection is not available on the host)
