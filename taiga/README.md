# Taiga CLI.
Uses a mixture of Ruby and Bash to interact with the [Taiga API](https://taigaio.github.io/taiga-doc/dist/api.html).

Just basic indexing is all I got so far. 

## Commands
```bash
# Index userstories.
$ tg <us|userstory|userstories> # List all userstories in project.
    -a # don't exclude where status is closed

# Index tasks.
$ tg <task|tasks> 
    -a # don't exclude where status is closed
    -r <int> # get tasks for a specific userstory ref
```

## Setup
You'll need to make sure the aliases (`./aliases.zsh`) are set. 

You'll also need to set some environment variables. 
```bash
# in env.zsh or .bash_profile or wherever else you like to hide things
export TAIGA_USERNAME=thats-you
export TAIGA_PASSWORD=abracabra
export TAIGA_PROJECT_SLUG=my-project
```
