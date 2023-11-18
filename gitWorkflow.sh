#!/bin/bash

#Get file name
echo "enter filename"
read fname

#Create the file if the file does not exist
if [ -f "$fname" ]; then

#Execute file
chmod u+x $fname

#Push File Up stream
git add .
git commit -m "$fname"
git push
else

echo -e  "#include <stdio.h>

/**
 * main - Entry point
 *
 * Return: Always 0 (Success)
 */
int main(void)
{
    return (0);
}" > $fname

#Execute file
chmod u+x $fname

#Push File Up stream
git add .
git commit -m "$fname"
git push

fi
