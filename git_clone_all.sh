#!/bin/bash
git clone $1
cd *
rm -rf ./*
for branch in `git branch -a | grep remotes | grep -v HEAD | cut -d "/" -f3`; do
	mkdir `echo $branch `
	cd `echo $branch`
	git clone $1 -b `echo $branch`
	cd ..
done