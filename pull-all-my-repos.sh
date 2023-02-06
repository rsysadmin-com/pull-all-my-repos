#!/bin/bash

# v0.01 by martinm@rsysadmin.com
# 

# Path to your local Git stuff
repos_base=~/Git

function return_status {
  if [ $? -eq 0 ]
  then
    echo -e "    Status: [ OK ]"
  else
    echo -e "    Status: [ ERROR ]"
   fi
}

# check if git is installed, exit otherwise
if [ -z $(which git) ]
then
  echo -e "\n== ERROR: Cannot find git on your PATH.\n"
  exit 1
fi

if [ -d $repos_base ]
then
  echo -e "=== Entering $repos_base ..."
  cd $repos_base
else
  echo -e "== ERROR - $repos_base does not exist - Bailing out. \n"
  exit 1
fi

my_repos=$(find . -maxdepth 2 -type d -name .git)
for i in $my_repos
do
  repo_name=${i::-5}
  echo -e "=== Synchronizing repo: $repo_name : \c"
  if [ -d $i ]
  then
    cd $i/..
    git pull        # add '> /dev/null' (w/o quotes) if you don't want to see all those messages returned by Git
    return_status
    cd ..
  else              # this branch should never be used; it's here just in case
    echo -e "\n== ERROR - $i does not contain a Git repo...\n"
  fi
done

echo -e "\n== All set.\n"

