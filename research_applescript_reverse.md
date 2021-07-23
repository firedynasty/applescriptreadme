


reversing a string

google search "applescript combine characters as string"

https://developer.apple.com/library/archive/documentation/LanguagesUtilities/Conceptual/MacAutomationScriptingGuide/ManipulateText.html

https://stackoverflow.com/questions/12546253/how-to-replace-n-in-applescript

google search "join characters into string applescript"

google search "how to reverse a string applescript"

https://forums.macrumors.com/threads/reversing-filenames-with-applescript.1753795/

https://macscripter.net/viewtopic.php?id=18519


"read last two characters in a string." 

https://discussions.apple.com/thread/133465

"use applescript to count strings in a text" 

http://hints.macworld.com/article.php?story=20070730101510623


google "what is offset mac"

https://stackoverflow.com/questions/8829824/applescript-trim-spaces-and-return-line


"offset in applescript 


https://forums.macrumors.com/threads/offset-in-applescript.873119/


http://preserve.mactech.com/articles/mactech/Vol.21/21.07/WorkingWithText/index.html


google "I have a list of paths with files at the end. How can strip off filenames. applescript"

https://stackoverflow.com/questions/4278704/applescript-get-filenames-in-folder-without-extension


https://www.unix.com/shell-programming-and-scripting/155702-how-remove-filename-path.html

https://apple.stackexchange.com/questions/379237/how-to-remove-only-the-characters-inside-brackets-from-a-string


https://developer.apple.com/library/archive/documentation/LanguagesUtilities/Conceptual/MacAutomationScriptingGuide/ManipulateText.html


google "get folder only of string applescript"


```

set theText to "sort_/"
set offset_ to offset of "/" in theText
if offset_ is not 0 then
	say "hello"
end if

```

this does not work
so find another example that it will


```

set filePath to "macbook_pro_scripts/terminal_open_file_move.app"
set textNumber1 to characters 1 thru -((offset of "/" in (reverse of items of filePath as string)) + 1) of filePath as string


set filePath to "screenshots/backup_zshrc.sh"
set first_ to offset of "/" in (reverse of items of filePath as string)
set second_ to count characters in filePath
set third_ to second_ - first_ + 1
set filePath_2 to text 1 thru third_ of filePath
return first_

```

```

set theText to "The quick brown fox jumps over a lazy dog."
offset of "quick" in theText
```


```
set cutText to (the clipboard)
set cutText to text 3 through -1 of cutText
set AppleScript's text item delimiters to {return & linefeed, return, linefeed, character id 8233, character id 8232}
set cutText_2 to text items of cutText
set AppleScript's text item delimiters to {" "}
set cutText_3 to first item of cutText_2

```

```

set cutText to (the clipboard)
set cutText to text 3 through -1 of cutText
set AppleScript's text item delimiters to {return & linefeed, return, linefeed, character id 8233, character id 8232}
set cutText_2 to text items of cutText
set AppleScript's text item delimiters to {" "}
set cutText_3 to first item of cutText_2 as string
--set new_ to characters 1 thru -((offset of "/" in (reverse of items of cutText_3 as string)) + 1) of cutText_3
set new_2 to text 1 thru 5 of cutText_3


```


```

set cutText to "hello/"
--set name_ to reverse of cutText as string
--set name_2 to offset of "/" in (reverse of items of cutText as string)
set filenamereverse to reverse of characters of cutText as string
set offset_ to offset of "/" in filenamereverse

```



```

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
		set counter to 0
		set repeatNow to true
		set clipboard_ to (the clipboard)
		set clipboard_ to clipboard_ as number
		do script "vim /Users/stanleytan/Desktop/macbook_pro_scripts/echo_files/open_test.txt" in window 1
		delay 0.5
		do script ":" & clipboard_ in window 1
		delay 0.5
		do script "yy" in window 1
		delay 0.5
		do script ":q" in window 1
		delay 0.5
		set oldText to (the clipboard)
		set cutText_0 to (the clipboard)
		set cutText to text 3 through -1 of cutText_0
		set AppleScript's text item delimiters to {return & linefeed, return, linefeed, character id 8233, character id 8232}
		set cutText_2 to text items of cutText
		set AppleScript's text item delimiters to {""}
		--this makes all the difference in this script
		set cutText_3 to first item of cutText_2 as string
		set end_Text to reverse of characters of cutText
		set end_text_2 to text 1 through 8 of end_Text
		if end_text_2 contains "." then
			try
				set yut_ to reverse of characters of cutText_3 as string
				set first_ to offset of "/" in yut_
				
				set first_ to offset of "/" in (reverse of items of cutText_3 as string)
				set second_ to count characters in cutText_3
				set third_ to second_ - first_ + 1
				set filePath_2 to text 1 thru third_ of cutText_3
				do script "cd " & filePath_2 in window 1
			end try
		else
			do script "cd " & cutText_0 in window 1
			delay 0.5
		end if
		--set newText to text 1 thru word -1 of newText
		
		--do script "cd " & quoted form of newText in window 1
		--do script "hello " & newText in window 1
		
		
	end tell
	return
end open

on run
	--  Handle the case where the script is launched without any dropped files
	open (choose file with multiple selections allowed)
	return
end run


```

notice the text delimiters is removed or else I got the characters returned with spaces from line 

set yut_ to reverse of characters of cutText_3 as string
