# pull-all-my-repos
Bash script to automatically pull all your Git repositories

## usage
Before you can use this script, please set the variable `repos_base` and make it point to the directory where all your Git repositories are located.

Once you've done that, simply execute the script.

## requirements
This script obviously needs `git` to be installed on your system.

If it is not in your $PATH, it will bail out with an error message.

### using macOS?
If you want to run this on macOS, please ensure that your version of Bash is newer than the one that ships by default (IIRC, it's v3.x), otherwise, some parts of this script will bomb.

To upgrade your Bash using Homebrew:

`brew install bash`


## disclaimer
This script was created out of lazynes so I did not need to execute "git pull" on every directory where I have a repo.

It is provided on a n "AS IS" basis. The author is not to be held responsible for the use or misuse thereof.
