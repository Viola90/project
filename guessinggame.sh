echo
echo "LET'S PLAY!!! THE GUESSING GAME!!!"
echo
n=$(ls -1 | find -type f | wc -l)
function guess
{
  echo
  echo "Take a guess!"
  echo "Enter the number  of files in the directory: "
  read g
  while true
  do
    if [ $g -eq $n ]
    then
      echo
      echo "Congratulations!!! Your guess is right"
      echo
      exit
    elif [ $g -lt $n ]
    then 
      echo
      echo "Too low!!! Guess higher"
      echo "Better luck next time!"
      echo
      guess
    else 
      echo
      echo "Too high!!! Guess lower"
      echo "Better luck next time!"
      echo
      guess
    fi
  done
}
guess
