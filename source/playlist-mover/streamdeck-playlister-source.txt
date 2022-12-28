tell application "Music"
	
	set playlistName to "XYZ" --ask em why this isn't here
	-- attempt to set the target playlist and fail with an error if it doesn't exist or for some other reason
	try
		set targetPlaylist to user playlist playlistName
	on error
		display dialog "Couldn't find destination playlist " & playlistName buttons {"OK"} default button "OK"
	end try
	set currentTrackName to name of current track
	set currentTrack to current track
	set databaseID to database ID of current track
	
	if player state is not stopped then -- check the player status
		if not (exists (some track of targetPlaylist whose database ID is databaseID)) then
			duplicate current track to targetPlaylist
			-- display notification "added " & currentTrackName & " " & "to " & (name of targetPlaylist)
		else if (exists (some track of targetPlaylist whose database ID is (get currentTrack's database ID))) then
			display notification "Duplicate Track"
		end if
	else
		display alert "No track selected"
	end if
end tell


(* to do
- big try statement for everything
- convert ifs to trys
- failed to add error
- not playing alert


*)