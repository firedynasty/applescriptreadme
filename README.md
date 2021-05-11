# applescriptreadme


These are the tools I use offline. 

HTML file and .scpt file

Hope you find some of this code handy!  

Copy_to_icloud.scpt : this is a droplet that allows you to directly copy that dropped file to icloud.  Using Terminal to do so. 

And this is a second_repository that I have not shared to not confuse people that are shared the first repository. 

--------------------------------

In rename_files:

In stackoverflow you have https://apple.stackexchange.com/questions/402734/applescript-to-rename-file-names

I wanted to add a prefix and remove a prefix from files without actually renaming the name of the file, only change the prefix.

It works as a 2-step process in terminal_scripting/renaming_files

Allows you to add and remove the prefix by count:

![Rename](/image/rename_files.jpg)


--------------------------------

I feel a big part of using applescript is to be able to script out of terminal or else I wouldn't see a point in using it. 

```
osascript -e "tell application \"Finder\" to set target of Finder window 1 to POSIX file \"`pwd`\""

```

Quotations are really important.  For osascript, it can cause issues if the order of the quotations is incorrect.  ie ' ' then "" inside , but if " is escaped with \ then need to use " " for outside. 


Piping pwd from terminal to Finder: 

https://apple.stackexchange.com/questions/349348/opening-a-new-finder-tab-from-command-line/420363#420363


Google: "POSIX file "`pwd`" mac"

Proper syntax for "alias"-ing in "osascript"

https://arstechnica.com/civis/viewtopic.php?f=19&t=176389


--------------------------------


