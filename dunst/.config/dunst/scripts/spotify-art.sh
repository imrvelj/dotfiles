#!/bin/zsh

IMAGE_CACHE_DIR="$HOME/.cache/album_art_cache"

function download_image() {
    if [[ ! -d "$IMAGE_CACHE_DIR" ]]; then
        mkdir -p "$IMAGE_CACHE_DIR"
    fi

    possible="$IMAGE_CACHE_DIR/$1"

    if [[ ! -f "$possible" ]]; then
        curl -s -q -L -o $possible "$2"
    fi

    echo "$possible"
    return "$?"
}

if [[ "$3" == "Paused" ]] || [[ "$3" == "Stopped" ]]; then
    nitrogen --restore
else
    url="$(playerctl metadata mpris:artUrl)"

    if [[ "$url" == "https://open.spotify.com"* ]]; then
        parts=("${(@s|/|)url}")
        short="$parts[-1]"
        url=$(download_image "$short" "$url")

    elif [[ "$url" == "file://"* ]]; then
        url="$(echo $url | cut -c 8-)"
    fi
    nitrogen --head=0 --set-zoom "$url"
fi
