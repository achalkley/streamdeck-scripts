tell application "Music"
	if player state is not stopped then
		set player position to player position + 10
	end if
end tell