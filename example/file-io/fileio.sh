###################
# 
# File: fileio.sh
# Author: Yusuf Shakeel
# Date: 2016-10-21 Fri
# Description: This file has some commands that will help in file
#              read/write operation.
# 
# Note! This is for demo purpose only.
# 
# License: MIT License
# 
# Repo: https://github.com/yusufshakeel/shell-script
# 
###################

#!/bin/sh

# filter user input

#---------------------------
# looking for help
#---------------------------
if [ "$1" == "--help" ]
then
  # open help
  case "$2" in
    "--create")
      echo "
--create command will create a new file.
Will overwrite if file already exists.
Syntax: --create filename
Example: --create helloworld.txt
"

      ;;

    "--delete")
      echo "
--delete command will delete an existing file.
Syntax: --delete filename
Example: --delete helloworld.txt
"

      ;;

    "--append")
      echo "
--append command will append data in an existing file.
Syntax: --append filename data
Example: --delete helloworld.txt \"Hello World\"
"

      ;;

    "--copy")
      echo "
--copy command will create a copy of an existing file.
Will overwrite if destination file already exists.
Syntax: --copy source destination
Example: --copy file1.txt file2.txt
"

      ;;

    "--about")
      echo "
--about command will show the information about this script.
"

      ;;

    *)
      echo "Command missing!"
      ;;
  esac

#---------------------------
# creating a new file
#---------------------------
elif [ "$1" == "--create" ]
then

  # check if the filename provided
  if [ -n "$2" ]
  then
    # check if file exists
    if [ -e "$2" ]
    then
      printf "File $2 exists.\nDo you want to overwrite? (y/n) "
      read overwriteOption

      if [ "$overwriteOption" == "y" -o "$overwriteOption" == "Y" ]
      then
        rm "$2"
        touch "$2"
        "File $2 created!"
      else
      	echo "No new file created."
      	exit
      fi

    # file does not exists
    else
      touch "$2"
      echo "File $2 created!"
    fi

  # if filename not provided  
  else
  	echo "File name missing!"
  fi

#---------------------------
# delete existing file
#---------------------------
elif [ "$1" == "--delete" ]
then

  # check if the filename provided
  if [ -n "$2" ]
  then
    # check if file exists
    if [ -e "$2" ]
    then
      rm "$2"
      echo "File deleted!"

    # file does not exists
    else
      echo "File $2 does not exists!"
    fi

  # if filename not provided  
  else
  	echo "File name missing!"
  fi

#---------------------------
# append data
#---------------------------
elif [ "$1" == "--append" ]
then

  # check if the source filename provided
  if [ -n "$2" ]
  then

    # check if data provided
    if [ -z "$3" ]
    then
      echo "Data missing!"
      exit
    else
      cat >> "$2" <<EOT
${@:3}
EOT
      echo "Data appended!"
    fi

  # if filename not provided  
  else
  	echo "Source filename missing!"
  fi

#---------------------------
# create copy
#---------------------------
elif [ "$1" == "--copy" ]
then

  # check if the source filename provided
  if [ -n "$2" ]
  then

    # check if the destination filename provided
    if [ -z "$3" ]
    then
      echo "Destination filename missing!"
      exit
    fi

    # check if file exists
    if [ -e "$3" ]
    then
      printf "File $3 exists.\nDo you want to overwrite? (y/n) "
      read overwriteOption

      if [ "$overwriteOption" == "y" -o "$overwriteOption" == "Y" ]
      then
        rm "$3"
        cp "$2" "$3"
        echo "File $2 copied!"
      else
      	echo "No file copied!"
      	exit
      fi

    # file does not exists
    else
      cp "$2" "$3"
      echo "File $2 copied!"
    fi

  # if filename not provided  
  else
  	echo "Source filename missing!"
  fi

#---------------------------
# show the about info
#---------------------------
elif [ "$1" == "--about" ]
then
  echo "
#########################################################
# 
# File: fileio.sh
# Author: Yusuf Shakeel
# Date: 2016-10-21 Fri
# Description: This file has some commands that will
#              help in file read/write operation.
# 
# Note! This is for demo purpose only.
# 
# License: MIT License
# 
# Repo: https://github.com/yusufshakeel/shell-script
# 
#########################################################
"

#---------------------------
# no matching option found
#---------------------------
else
  # display the menu
  echo "
ÛÛÛÛÛÛÛÛÛÛÛ  ÛÛÛ  ÛÛÛÛ                      ÛÛÛÛÛ    ÛÛÛÛÛÛÛ   
°°ÛÛÛ°°°°°°Û °°°  °°ÛÛÛ                     °°ÛÛÛ   ÛÛÛ°°°°°ÛÛÛ 
°ÛÛÛ   Û °  ÛÛÛÛ  °ÛÛÛ   ÛÛÛÛÛÛ             °ÛÛÛ  ÛÛÛ     °°ÛÛÛ
°ÛÛÛÛÛÛÛ   °°ÛÛÛ  °ÛÛÛ  ÛÛÛ°°ÛÛÛ ÛÛÛÛÛÛÛÛÛÛ °ÛÛÛ °ÛÛÛ      °ÛÛÛ
°ÛÛÛ°°°Û    °ÛÛÛ  °ÛÛÛ °ÛÛÛÛÛÛÛ °°°°°°°°°°  °ÛÛÛ °ÛÛÛ      °ÛÛÛ
°ÛÛÛ  °     °ÛÛÛ  °ÛÛÛ °ÛÛÛ°°°              °ÛÛÛ °°ÛÛÛ     ÛÛÛ 
ÛÛÛÛÛ       ÛÛÛÛÛ ÛÛÛÛÛ°°ÛÛÛÛÛÛ             ÛÛÛÛÛ °°°ÛÛÛÛÛÛÛ°  
°°°°°       °°°°° °°°°°  °°°°°°             °°°°°    °°°°°°°    

This script file can help you perform the following tasks:

--create  Create a new file.
--delete  Delete an existing file.
--append  Append data in an existing file.
--copy    Create a copy of an existing file.
--about   Show the about information.

Type --help [command] for more information.
Example: --help --create
"
fi