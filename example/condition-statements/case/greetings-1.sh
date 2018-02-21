#!/bin/sh

# take user name
echo "Enter your name:"
read name

# take time of the day
echo "Enter time of the day [Morning/Afternoon/Evening/Night]:"
read daytime

case $daytime in
  "Morning")
    echo "Good Morning $name"
    ;;

  "Afternoon")
    echo "Good Afternoon $name"
    ;;

  "Evening")
    echo "Good Evening $name"
    ;;
    
  "Night")
    echo "Good Night $name"
    ;;

  *)
    echo "Time of the day missing!"
    ;;
esac

echo "End of script."