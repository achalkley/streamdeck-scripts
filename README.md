# Streamdeck Music Tagging & Rekordbox Workflow

## Features
### Apple Music Playlist Scripts
- Put a track in a playlist of your choosing with a single button press
- Seek control for quick listening - jump to 30, 60, 120 seconds or advance by 10s increments
- Track skip, play, pause, heart control using the bundled Apple Music extension
- Star ratings from 1-5
- Jump list view to currently playing track
- Error handling for incorrect/missing playlists
- Duplication prevention so you don’t add a track to a playlist multiple times
- Sorting and folder support using streamdeck folders
- Toggle key for Rekordbox/Music profile

### Rekordbox Export Mode Macro Control
- Set memory cues from 1-8
- Nudge beat grid left/right
- Shrink or grow beatgrid
- Double or halve tempo
- Set downbeat at current position
- Tap to tempo
- Toggle metronome
- Lock/unlock analysis lock
- Search in collection
- Loop 32, 64, 128 bars
- Load next/previous track in playlist
- Set cue point
- Play/pause loaded track
- Beat jump by currently selected amount
- Undo/redo
-  Toggle key for Rekordbox/Music profile

## Screenshots
### Apple Music Playlist mover
Note: your configuration will be a blank starter layout and won’t have my folders and names
![](CleanShot%202023-07-05%20at%2017.33.36.png)


### Rekordbox Export Mode Macros
![Rekordbox Macro Screenshot](Cscreenshots/rekordbox-preview.png?raw=true "Rekordbox Macro Screenshot")


## Prerequisites
- Streamdeck hardware (this was designed for the streamdeck XL)
- MacOS
	- Must be using Apple Music for the playlist scripts to work
	- Must be using Rekordbox in export mode for the Rekordbox macros to work without reconfiguration

	
## Setup 
- Install OSAScript host plugin from the Elgato App Store
	- OSAScript
![OSAScript](screenshots/osa-plugin.png?raw=true "OSA plugin")
- You will be prompted to allow automation permission to Elgato Stream Deck, or you can add it manually from System Preferences
![Music permissions](screenshots/music-permissions.png?raw=true "Music permissions")

- Elgato streamdeck also needs System Automation permission granted
![System automation permissions](screenshots/automation-permissions.png?raw=true "Automation permissions")

- Import the starter profiles from the streamdeck profile settings window

### Set up your playlist names
- In the streamdeck software, click into one of the playlist buttons
- At the top of the “Script (Inline)” box, edit the playlist name in between the quote marks. It must match the playlist name exactly, or you will see an error dialogue when you push the button.
![Playlist editing](screenshots/playlist-editing.png?raw=true "Playlist editing")
- Customise the button label and icon as you see fit. The label doesn’t have to match
- Copy and paste your button, editing the `playListName` variable for each one
- **Limitations and quirks**
	- Emojis are not support in playlist names
	- Playlist folder structure in Apple Music is ignored, and *can* contain emojis
	- Playlists must have a unique name

## Rekordbox Export Mode Macro setup
- This is pretty straightforward, I’ve tried to keep the shortcut keys the same as the defaults
- If a button isn’t working, you should check your keyboard command settings in Rekordbox and either map them to the ones I’ve set up, or edit the shortcut in Streamdeck to match your config

### Set streamdeck to use these profiles automatically
- I like to set these profiles to be active based on whether the app is foregrounded. You can do that in the profile settings window.
![Active profile](screenshots/active-profile.png?raw=true "Active profile")

### Customising the buttons
- To customise your buttons, I recommend these icon packs
	- Apple SF Symbols Monochrome
	- Palette - The Simple Colour Pack
![SF monochrome](screenshots/sf-monochrome.png?raw=true "SF monochrome")
![Palette](screenshots/palette.png?raw=true "Palette")

## Extending it further & support
- I’ve also included the applescripts in compiled or uncompiled form so you can edit them with Script Editor and browse the logic
- I would welcome contributions to make this prettier or add extra functionality - feel free to fork or raise issues and I’ll do my best to help out
- I will make updates when I can if a future macOS update breaks it
- I can’t guarantee I will be able to help with troubleshooting problems with your individual setup, but I do want to hear if you’ve noticed any mistakes that slipped in