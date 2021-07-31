hello world

```bash
on open these_items
	repeat with i from 1 to the count of these_items
		set this_item to item i of these_items
		set filePath to POSIX path of this_item
		set textNumber1 to characters 1 thru -((offset of "/" in (reverse of items of filePath as string)) + 1) of filePath as string
		set textNumber2 to name of (info for filePath)
		display dialog filePath
		display dialog textNumber1
		display dialog textNumber2
		set textNumber3 to text 1 thru ((offset of "." in textNumber2) - 1) of textNumber2
		
		display dialog textNumber3
		tell application "Terminal"
			activate
			-- If there are no open windows, open one.
			if (count of windows) is less than 1 then
				do script ""
			end if
			
		end tell
	end repeat
	
end open
```
