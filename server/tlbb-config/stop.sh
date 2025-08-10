#!/usr/bin/env bash

###### stop Server ######
SERVERPID=`ps aux | grep "./Server" | grep -v grep | awk '{print $2}'`
if [ "$SERVERPID" != "" ] ; then
	echo "========= stopping Server ========="
	kill -9 $SERVERPID	
	sleep 5
	echo "====>>> Server stoped completely !!!!!!"
fi

###### stop Login ######
LOGINPID=`ps aux | grep "./Login" | grep -v grep | awk '{print $2}'`
if [ "$LOGINPID" != "" ] ; then
echo "========= Login is stopping ========="
kill -9 $LOGINPID
echo "====>>> Login stoped completely !!!!!!"
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

###### stop Billing ######
BillingID=`ps aux | grep -i "./billing" | grep -v grep | awk '{print $2}'`
if [ "$BillingID" != "" ] ; then
	echo "========= Billing is stopping ========="
	kill -9 $BillingID
	echo "====>>> Billing is stopped !!!!!!"
fi