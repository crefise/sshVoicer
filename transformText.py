from gtts import gTTS
import os
mytext = os.environ.get('TEXT')
audio = gTTS(text=mytext, lang="ru", slow=False)
audio.save(os.environ.get('FILE_NAME'))
