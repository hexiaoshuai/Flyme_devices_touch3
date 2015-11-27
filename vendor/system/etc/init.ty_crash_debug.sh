#!/system/bin/sh
#TYRD wuxh add for crash debug setting

#TYRD wuxh add begin for crash flag accoring to setting on 20131217
crash_flag=`getprop persist.sys.crash_debug`

case "$crash_flag" in
     "0" | "")
        echo 0 > /sys/module/restart/parameters/download_mode        
     ;;
     
     "1")        
        echo 1 > /sys/module/restart/parameters/download_mode      
     ;;
esac
#TYRD wuxh add begin for crash flag accoring to end on 20131217
