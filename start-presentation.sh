#!/usr/bin/env bash

function usage()
{
    cat <<-END
usage: start-presentation.sh -d dir

This script starts RevealMD presentations in a Docker container.

required arguments:
  -d    The directory that contains the RevealMD presentation.
END
}

while getopts "d:" o; do
  case "${o}" in
    d)
      DIR=${OPTARG}
      ;;
    h | *)
      usage
      exit 0
      ;;
  esac
done
shift $((OPTIND-1))

if [[ -z "${DIR}" ]] ; then
  echo "Missing required parameter -d for presentation directory."
  usage
  exit 1
fi

function to_abs_path {
  local target="$1"
  if [ "$target" == "." ]; then
    echo "$(pwd)"
  elif [ "$target" == ".." ]; then
    echo "$(dirname "$(pwd)")"
  else
    echo "$(cd "$(dirname "$1")"; pwd)/$(basename "$1")"
  fi
}
# Function adapted from https://stackoverflow.com/a/51264222/2339010

DIR=$(to_abs_path ${DIR})
docker run --rm -p 1948:1948 -v ${DIR}:/slides webpronl/reveal-md:latest --theme moon /slides
