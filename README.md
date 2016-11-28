#keyboard-fix

My notes on how to get my apple keyboard working the way I want in Ubuntu.

## keyboard-fix.sh

The keyboard-fix.sh script does the work. 

```bash
sudo cp keyboard-fix.sh /usr/bin/keyboard-fix.sh
```


## fix-keyboard.service
The fix-keyboard.service is a SystemD service definition that will run fix-keyboard.sh on startup.
```bash
sudo cp keyboard-fix.service /etc/systemd/system/keyboard-fix.service
sudo systemctl daemon-reload
sudo systemctl enable keyboard-fix.service
sudo systemctl start keyboard-fix.service
```
