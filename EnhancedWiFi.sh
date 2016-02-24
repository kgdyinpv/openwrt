#!/bin/sh
uci set wireless.@wifi-device[0].txpower='30'
uci set wireless.@wifi-device[0].channel=3
uci set wireless.@wifi-device[0].htmode='HT40+'
uci set wireless.@wifi-device[0].country='US'
uci set wireless.@wifi-device[0].hwmode='11g'
uci set wireless.@wifi-device[0].noscan=1
uci commit >> /dev/null 2>&1
/etc/init.d/network restart

echo "****增强无线信号设置完毕，稍后可手工重启路由器****"
#reboot
