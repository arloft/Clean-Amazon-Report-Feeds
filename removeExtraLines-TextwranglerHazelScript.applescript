tell application "TextWrangler"
	activate
	set thePath to "~/Downloads/"
	set window1 to front window
	set fileName to name of window1
	tell text of window1
		replace "^(\t\t(.*)\n)|^(\t\t(.*))" using "" options {search mode:grep, starting at top:true}
	end tell
	close window1 saving (yes)
end tell