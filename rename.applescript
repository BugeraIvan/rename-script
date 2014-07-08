on run
	set parentFolders to 3
	set delimiterString to "_"
	
	tell application "Finder"
		set selectedFile to choose file
		
		set newName to name of selectedFile as text
		set currentParent to container of selectedFile
		
		repeat parentFolders times
			set newName to (name of currentParent as text) & delimiterString & newName
			
			try
				set currentParent to container of currentParent
			on error
				exit repeat
			end try
		end repeat
		
		set name of selectedFile to newName
	end tell
end run