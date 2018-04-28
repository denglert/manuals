# Media download

## Youtube

Get list of available formats:

~~~~
youtube-dl --list-formats <url>
~~~~

Download videos from a playlist:
- starting at video #8 up to video #11
- in format ID 18

~~~~
youtube-dl --format 18 --playlist-start 8 --playlist-end 11 https://www.youtube.com/playlist?list=PLejkXpUan6WHt1OvJjqG0h65GCc40pjxQ
~~~~
