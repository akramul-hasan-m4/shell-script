###################
# 
# File: validatechecksum.sh
# Author: Yusuf Shakeel
# Date: 06-may-2018 sun
# Description: This will validate checksum of files.
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
    "--validate")
      echo "
--validate command will validate the checksum of the file.

Format:
--validate algo file checksum

where,
algo is the hashing algorithm used like sha256.
file is the file whose checksum is to be validated.
checksum is the expected checksum of the file for the given algo.

Example:
--validate sha256 /path/to/file.txt c751341b71fb4910a414f6376585cd3e01c14074615a0cae4c8f5a5499e3415e
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
# validate checksum
#---------------------------
elif [ "$1" == "--validate" ]
then

  # check if the algo provided
  if [ -n "$2" ]
  then
    # check if file exists
    if [ -e "$3" ]
    then
      
      # check if checksum provided
      if [ -n "$4" ]
      then
        
        echo "Computing checksum..."
        OUTPUT=$(openssl $2 $3)
        echo "Computing checksum done."
        
        arr=($OUTPUT)
        checksum=${arr[1]}
        echo "Computed Checksum: " $checksum

        echo "Validating checksum..."
        if [ $checksum = $4 ]
        then
          echo '=========> CHECKSUM MATCHED!!!'
        else
          echo '=========> ERROR: Checksum mismatch!!!'
        fi
        echo "Validating checksum done"

      else
        echo "checksum missing"
      fi

    # file does not exists
    else
      echo "File $3 does not exists!"
    fi
  
  # algo missing
  else
    echo "algo missing"
  fi

#---------------------------
# show the about info
#---------------------------
elif [ "$1" == "--about" ]
then
  echo "
#########################################################
# 
# File: validatechecksum.sh
# Author: Yusuf Shakeel
# Date: 06-may-2018 sun
# Description: This will validate checksum of files.
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

------- THIS SCRIPT USES OPENSSL -------

This script file can help you perform the following tasks:
--validate  Validate the checksum
--about     Show the about information.
Type --help [command] for more information.

Example:
--validate sha256 /path/to/file.txt hash_value_of_file
"
fi