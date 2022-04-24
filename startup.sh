#!/bin/bash
botToken=""
chatId=""
remoteip=$(curl -s ifconfig.me)
localip=$(hostname -I)
curl \
-X POST \
-s \
--data "chat_id=${chatId}" \
--data "disable_web_page_preview=true" \
--data "text=Remote IP ${remoteip} / Local IP ${localip}" \
--connect-timeout 30 \
--max-time 45 \
"https://api.telegram.org/bot${botToken}/sendMessage" \
> /dev/null;
