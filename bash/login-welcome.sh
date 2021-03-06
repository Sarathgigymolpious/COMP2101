#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
##############
title="Overlord"

USER="sarath"
hostname=$(hostname)
day=$(date +%A)
#date=(date +%I:%M:%S %p)

echo "it is $(date +%A)  at  $(date +%H:%S:%M)"


if [ "$day" = "Monday" ]
then
   title="moday new week,new day"
 else
   if [ $day = "Tuesday" ]
    then
      title="tuesday have a great tueday"
    else
      if [ $day = "Wednesday" ]
      then
        title="wednesday make today awesome so that yesterday gets jealous"
      else
        if [ $day = "Thurshday" ]
         then
           title="thurshday ..almost friday"
         else
           if [ $day = "Friday" ]
           then
             title="saturday happy Saturday"
           else [ $day = "Sunday" ]
             title="sunday easy like sunday morning" ;

          fi
        fi
      fi
    fi
  fi
  cowsay Welcome to planet $hostname, "$title $USER!"














###############
# Main        #
###############
# cat <<EOF
#
# Welcome to planet $hostname, "$title $USER!"
#
# EOF
