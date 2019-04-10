#!/bin/bash

git checkout master
git pull upstream master
git branch -D merge
git for-each-ref --shell --format="git rebase master %(refname:short)" 'refs/heads/' | sh -x
git checkout -b merge
git for-each-ref --shell --format="git rebase %(refname:short) merge" 'refs/heads/' | sh -x
