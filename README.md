# Deep Space Communication Relay (DSRC)

DSRC is a chat client and server for communication through signals 
as defined in the game Message From Deep Space.

A public version is online at 
https://dscr.dixonary.co.uk/
and you are very welcome to join!

To take part you will need your dictionary. On Windows 10, this can be 
found at

`C:\Users\[Your account name]\AppData\LocalLow\Applesinmypants\The Message From Deep Space\DICTIONARY-1.save`

Locate this file with the file picker or drag it on to the website and 
it will load your dictionary.

## Architecture

The server is split into two parts: a file server and a websocket server. 
Both are written in Haskell. Internally on my machine they run on ports 
3100 and 3101, as defined in the .env file (and are reverse-proxied).

The client is raw HTML/CSS/JS and all found in the public/ folder.

## Word of caution

A number of URLs are hardcoded in mfds.js to point at my own server; 
you should change those before deploying or before running locally for testing 
purposes, otherwise you'll be testing against the live server :)
