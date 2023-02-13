#!/bin/bash

# Invoked from -a argument of iris-main when that runs at the end of a Gitpod startup task

echo Waiting for InterSystems IRIS PWS port to open...

# Open Portal when ready, ignoring error
gp ports await 52773

echo ...done