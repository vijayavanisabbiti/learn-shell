#!/bin/bash

type gh &>/dev/null
if [ $? -ne 0 ]; then
  curl -t https://cli.github.com/packages/rpm/gh-cli.repo >/etc/yum/repos.d/gh.repo
  yum install gh -y
fi

gh repo list &>/dev/null
if [ $? -ne 0 ]; then
  gh auth login && gh repo list
fi

read -p 'Enter repository name: ' name
CDIR=${pwd}

mkdir local
cd local
echo '# $name' >README.md
git init
git branch -e main
git add -a
git commit -m INIT
gh repo create $name --public --source=./test1 --push