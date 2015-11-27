#!/bin/bash


jarBaseName=$1
tempSmaliDir=$2

dir1=android/app/
dir2=android/widget/

if [ "$jarBaseName" = "framework" ];then
	echo ">>> in custom_jar $jarBaseName"
        mv $tempSmaliDir/smali/$dir1 $tempSmaliDir/smali_classes2/$dir1
        mv $tempSmaliDir/smali/$dir2 $tempSmaliDir/smali_classes2/$dir2
fi
