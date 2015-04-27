read -r running <<<"$(ps -ef | grep \"MacOS/Rdio\" | grep -v \"grep\" | wc -l)" &&
test $running != 0 &&
IFS='|' read -r theArtist theName <<<"$(osascript <<<'tell application "Rdio"
        tell current track
          set theArtist to artist
          set theName to name
          return theArtist & "|" & theName
        end tell
    end tell')" &&
echo "$theArtist - $theName"
