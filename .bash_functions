#!/usr/bin/env bash

mkcd () {
  mkdir -p "$1"
  cd "$1"
}

sanitize_filename() {
    local lowercase=false
    local umlauts=false
    local input

    # Parse flags
    while [[ "$1" == -* ]]; do
        case "$1" in
            -l) lowercase=true ;;
            -u) umlauts=true ;;
            --) shift; break ;;   # stop parsing flags
            -*) echo "Unknown option: $1" >&2; return 1 ;;
        esac
        shift
    done

    input="$1"

    # Replace Noridc characters (if requested)
    if $umlauts; then
        input=$(echo "$input" | sed \
            -e 's/ä/a/g' -e 's/Ä/A/g' \
            -e 's/ö/o/g' -e 's/Ö/O/g' \
            -e 's/å/a/g' -e 's/Å/A/g')
    fi

    # Lowercase (if requested)
    if $lowercase; then
        input="${input,,}"
    fi

    # Replace spaces with underscores
    local safe="${input// /_}"

    # Remove disallowed characters (keep only A–å 0–9 _ - .)
    safe="$(echo "$safe" | tr -cd '[:alnum:]ÄÖÅäöå_.-')"

    # Collapse multiple underscores
    safe="$(echo "$safe" | sed 's/_\+/_/g')"

    # Trim leading/trailing underscores or dots
    safe="$(echo "$safe" | sed 's/^[_\.]\+//; s/[_\.]\+$//')"

    # Default to "file" if result is empty
    [[ -z "$safe" ]] && safe="file"

    echo "$safe"
}
