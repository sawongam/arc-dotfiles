#!/bin/bash

FILE_NAME="screenshot-$(date +%F-%T).png"
FILE_PATH="${HOME}/screenshots/${FILE_NAME}"
grim -t png -g "$(slurp)" "${FILE_PATH}"
xclip -selection clipboard -t image/png < "${FILE_PATH}"
notify-send 'Screenshot' -i "${FILE_PATH}" "${FILE_NAME}"
