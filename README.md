# applescriptreadme


These are the tools I use offline. 

HTML file and .scpt file

Hope you find some of this code handy!  

Copy_to_icloud.scpt : this is a droplet that allows you to directly copy that dropped file to icloud.  Using Terminal to do so. 

* 1\. [droplet icloud](#droplet-icloud)
    * 1.1\. text delimiters
    * 1.2\. copy to dropbox
* 2\. [rename files](#rename-files)
* 3\. [quotations](#quotations)
	* 3.1 the problem with ' ', " ", and quotes inside
* 4\. [Terminal Scripting](#terminal-scripting)
	* 4.1\. [Pwd](#piping-pwd-from-terminal)
* 5\. [Controlling keystrokes](#controlling-key-strokes)
* 6\. [Finder Applet](#finder-applet)



* 1\. [here](#here)
    * 1.1\. text delimiters
    * 1.2\. copy to dropbox
        * 1.2\. item
* 2\. item 





# Droplet icloud

```applescript

on open Dropped_File
	tell application "Finder"
		--what I want to do is get the path, cd there
		--then python the name of the file there
		set strFolder to POSIX path of Dropped_File
		set textNumber1 to characters 1 thru -((offset of "/" in (reverse of items of strFolder as string)) + 1) of strFolder as string
		
		----
		
		set freedom to text item -1 of strFolder
		
		--set fileName to item of fileAlias
	end tell
	set text item delimiters to "/"
	tell application "Finder"
		--what I want to do is get the path, cd there
		--then python the name of the file there
		
		
		set freedom to text item -1 of strFolder
		
		--set fileName to item of fileAlias
	end tell
	tell application "Terminal"
		
		activate
		delay 1
		do script "cd " & textNumber1 in front window
		delay 1
		do script "cp " & freedom & " ~/iCloud" in front window
		-- requires sym link change
		-- https://michaelsoolee.com/icloud-drive-symlink/
		
		
	end tell
end open
```

# Rename Files

What this does here: Adding prefixes

 https://apple.stackexchange.com/questions/402734/applescript-to-rename-file-names


![Rename](image/rename_files.jpg)

Scripting out of terminal:

```
osascript -e "tell application \"Finder\" to set target of Finder window 1 to POSIX file \"`pwd`\""

```
### Quotations

Quotations are really important.  For osascript, it can cause issues if the order of the quotations is incorrect.  ie ' ' then "" inside , but if " is escaped with \ then need to use " " for outside. 

In a .scpt file to be made into an .app file
do script "osascript -e \"tell application \\\"Finder\\\" to activate\"" in theTab
delay 0.2
	
do script "osascript -e \"tell application \\\"System Events\\\" to key code 9 using {command down}\" ;osascript -e \"tell application \\\"System Events\\\" to key code 36\"" in theTab

Quotations in applescript to be used by an applet

https://stackoverflow.com/questions/14737414/using-double-quotes-in-applescript-command-do-shell-script-echo

Hierarchy of Quotes:  " to \" to \\\"


## Terminal Scripting

### Piping pwd from Terminal

Piping pwd from terminal to Finder: 

https://apple.stackexchange.com/questions/349348/opening-a-new-finder-tab-from-command-line/420363#420363


Google: "POSIX file "`pwd`" mac"

Proper syntax for "alias"-ing in "osascript"

https://arstechnica.com/civis/viewtopic.php?f=19&t=176389


--------------------------------


## Get the path of the front window

"How To Get Path to Finder Folder or Target of Window"

https://forum.latenightsw.com/t/how-to-get-path-to-finder-folder-or-target-of-window/1228

tell application "Finder" to set filePath to POSIX path of (target of front window as text)


## Controlling Key Strokes


alias target.='cat ~/desktop/macbook_pro_scripts/script.txt | pbcopy;osascript -e "tell application \"System Events\" to key code 9 using {command down}";osascript -e "tell application \"System Events\" to key code 36"; osascript -e "tell application \"Finder\" to activate"'

controlling key strokes and scripts


# Finder Applet

Creating an applet then using that to open every .txt in Terminal and changing to that directory in Terminal

finder_scripting/cat_file_from_terminal.scpt

https://apple.stackexchange.com/questions/212813/open-text-file-from-finder-in-vim

Usecase: open .txt files in the terminal

--------------------------------

# Zshrc Bash Functions

opening new tab in finder window:

https://scriptingosx.com/2020/03/macos-shell-command-to-create-a-new-terminal-window/


alias alias1='osascript -e "tell application \"Terminal\" to do script \"900\"";osascript -e "tell application \"Terminal\" to do script \"vim ~/desktop/work_.txt\" in window 1"' 

Here 900 is a window size setting, then opening a file into a new Tab 


https://apple.stackexchange.com/questions/300156/terminal-opens-new-tab-instead-of-new-window-with-command-n

```

function new() {
    if [[ $# -eq 0 ]]; then
        open -a "Terminal" "$PWD"
    else
        open -a "Terminal" "$@"
    fi
}

```

> new documents 
// this will open a new window in the Terminal pointing to the folder documents of that directory

> new
// without the parameter will open a new window in the same directory

https://stackoverflow.com/questions/34340575/zsh-alias-with-parameter


# Click on .jpg files to open slideshow


```applescript

on open theFiles
	tell application "Terminal"
		activate
		-- If there are no open windows, open one.
		if (count of windows) is less than 1 then
			do script ""
		end if
		set theTab to selected tab in first window
		-- changed window 1 to theTab
		set filePath to POSIX path of item 1 of theFiles
		set textNumber1 to characters 1 thru -((offset of "/" in (reverse of items of filePath as string)) + 1) of filePath as string
		set textNumber2 to name of (info for filePath)
		delay 0.2
		do script "cd " & quoted form of textNumber1 in window 1
		delay 0.2
		do script "open -a \"Preview\" " & quoted form of textNumber1 in window 1
		delay 0.2
	end tell
	delay 3
	tell application "System Events"
		tell process "Preview"
			set frontmost to true
			click menu item "Slideshow" of menu "View" of menu bar 1
		end tell
	end tell
	return
end open

on run
	--  Handle the case where the script is launched without any dropped files
	open (choose file with multiple selections allowed)
	return
end run

```

Set this script as app and choose to run when opening .jpg files.  This will let you do slideshows of all the files in the same directory as the file that is opened.  