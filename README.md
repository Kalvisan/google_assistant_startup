# How to?
* Put this script inside yout Google Assitant folder.
  * You can put `run.wav` sound file if you like
* Add executable to script `chmod +x startup.sh`
* Add code to your `/etc/rc.local` end of file
  * `bash /home/kalvis/Google-Assistant/startup.sh >> /home/kalvis/Google-Assistant/log/startup.log &`
