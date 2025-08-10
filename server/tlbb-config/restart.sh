#!/usr/bin/env bash

###### stop Server ######
SERVERPID=`ps aux | grep "./Server" | grep -v grep | awk '{print $2}'`
if [ "$SERVERPID" != "" ] ; then
	echo "========= stopping Server ========="
	kill -9 $SERVERPID	
	sleep 5
	echo "====>>> Server stoped completely !!!!!!"
fi

###### stop World ######
WORLDPID=`ps aux | grep -i "./World" | grep -v grep | awk '{print $2}'`
if [ "$WORLDPID" != "" ] ; then
	echo "========= World is stopping ========="
	sleep 5
	kill -9 $WORLDPID
	echo "====>>> World stoped completely !!!!!!"
fi

###### stop ShareMemory ######
SHMPID=`ps aux | grep -i "./ShareMemory" | grep -v grep | awk '{print $2}'`
if [ "$SHMPID" != "" ] ; then
	echo "========= ShareMemroy is saving data ========="
	kill -9 $SHMPID
	echo "====>>> ShareMemory stoped completely !!!!!!"
fi

###### start ShareMemory ######
cd /app/tlbb/Server/
./shm clear >/dev/null 2>&1
rm -rf exit.cmd quitserver.cmd
./shm start >/dev/null 2>&1
echo " start ShareMemory ......"
sleep 5
echo " ShareMemory chay thanh cong !"

###### start World ######
cd /app/tlbb/Server/
./World >/dev/null 2>&1 &
echo " start World ......"
sleep 5
echo " World chay thanh cong !"

###### start Server ######
cd /app/tlbb/Server/
./Server >/dev/null 2>&1 &
echo " start Server ......"
sleep 5
echo " Server chay thanh cong !"
