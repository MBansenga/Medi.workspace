#! /bin/bash

# ECHO COMMAND 
echo Hello everyone!

# VARIABLES
# Uppercase by convention 
# Letters, numbers, underscores
NAME="Medi" 
echo "My name is $NAME"
echo "My name is ${NAME}"

# USER INPUT
read -p "Enter your name: " NAME
echo "Hello $NAME, nice to meet you!"

# SIMPLE IF STATMENT
if [  "$NAME" == "Medi"  ]
then
  echo "Your name is Medi"
else 
  echo "Your name is NOT Medi"
fi 

# ELSE-IF (elif)
if [  "$NAME" == "Medi"  ]
then
  echo "Your name is Medi"
elif [  "$NAME" == "Bob"  ]
then
  echo "Your name is Bob"
else 
  echo "Your name is NOT Medi or Bob"
fi 

# COMPARISON 

######
# val1 -eq val2 Returns true if the values are equal 
# val1 -ne val2 Returns true if the values are not equal 
# val1 -gt val2 Returns true if val1 is greater than val2
# val1 -ge val2 Returns true if val1 is greater than or equal to val2
# val1 -lt val2 Returns true if val1 is less than val2
# val1 -le val2 Returns true if val1 is less than or equal to val2
######

NUM1=3
NUM2=5
if [ "$NUM1" -gt "$NUM2" ]
then 
  echo "$NUM1" is greater than "$NUM2"
else 
  echo "$NUM1" is less than "$NUM2"   
fi

# FILE CONDITIONS 

######
# -d file  True if the file is a directory 
# -e file  True if the file exists (note that this is not particularly portable thus -f is generally used)
# -f file  True if the provided string is a file
# -g file  True if the group id is set on a file 
# -r file  True if the file is readable 
# -s file  True if the file has a non-zero size
# -u file  True if the user id is set on a file
# -w file  True if the file is writable 
# -x file  True if the file is an executable 
######

FILE="text.txt"
if [ -f "$FILE" ]
then
  echo "$FILE is a file"
else
  echo "$FILE is NOT a file"
fi


#CASE STATEMENT
read -p "Are you 18 or over? Y/N" ANSWER
case "$ANSWER" in 
  [yY] | [yY][eE][sS])
    echo "You can have a beer :)"
    ;; 
  [nN] | [nN][oO])
    echo "Sorr, no drinking"
    ;;
*)
    echo "Please enter y/yes or n/no"
    ;;
esac 

# SIMPLE FOR LOOP 
NAMES="Medi Bob Chris Anna"
for NAME in $NAMES
  do
   echo "Hello $NAME"
done

# FOR LOOP TO RENAME FILES
FILES=$(ls *.txt)
NEW="new"
for FILE in $FILES
  do
    echo "Renaming $FILE to new-$FILE"
    mv $FILE $NEW-$FILE 
done 

# WHILE LOOP - READ THROUGH A FILE LINE BY LINE 
LINE=1
while read -r CURRENT_LINE
  do 
    echo "$LINE: $CURRENT_LINE"
    ((LINE++))
done < "./(name_of_file)" 


# FUNCTION 
function sayHello()  {
   echo "Hello World"
}

sayHello


# FUNCTION WITH PARAMS 
function greet() {
  echo "Hello I am $1 and I am $2"
}

greet "Medi" "24"

# CREATE FOLDER AND WRITE TO A FILE 
mkdir Hello
touch "hello/name_of_file"
echo "Hello World" >> "hello/name_of_file.txt"
echo "Created hello/(name_of_file.txt)"