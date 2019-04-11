#!/bin/bash


# to the correct dir
cd src
rm -rf $STACK_SERVICE

# get code
git clone https://github.com/SURFfplo/$STACK_REPOSITORY

mv $STACK_REPOSITORY $STACK_SERVICE


# to the correct dir
cd ..

# config
