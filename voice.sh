echo 'Will be translated text:' ${TEXT}
pactl set-sink-volume "$(LANG=C pactl info | grep 'Default Sink' | awk '{print $3}')" 100%
FILE_NAME=${FILE_NAME} TEXT=${TEXT} python3 transformText.py
ffplay -nodisp -hide_banner -autoexit ${FILE_NAME}
echo 'Finished!'
