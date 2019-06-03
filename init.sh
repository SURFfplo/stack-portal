#!/bin/bash


# to the correct dir
mkdir -p src
cd src

# remove old version if it exists...
rm -rf $STACK_SERVICE

# get code
git clone https://github.com/SURFfplo/$STACK_REPOSITORY

mv $STACK_REPOSITORY $STACK_SERVICE


# to the correct dir
cd ..

# config

# status
cp html/status.php src/portal/public

