#!/bin/sh

get_song() {
  playerctl -p spotify metadata --format "{{ artist }} - {{ title }}"
}

if pgrep -x "spotify" > /dev/null; then
  song=$(get_song)

  if [[ -n "$song" ]]; then
      if [ ${#song} -gt 30 ]; then
      song="${song:0:30}..."
    fi
    echo "$song"
  else
    echo "Paused."
  fi
else
  echo "Spotify"
fi
