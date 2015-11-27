#!/system/bin/sh
#zengxw add for catch tcpdump log in ktcit 

LOG_DIR="/data/local/"
FIX_LOG_FILE="TCPdump"
LOG_FILE=${FIX_LOG_FILE}-$(date +%F-%H-%M-%S).pcap
tcpdump_prop=`getprop sys.ty.ktcit.tcpdump`

start_default_tcpdump()
{
	/system/xbin/tcpdump -i any -p -s 0 -w  $LOG_DIR$LOG_FILE &
	tcpdump_pid=$!
	echo $tcpdump_pid > data/local/tcpdump_pid.log
}

start_backup_tcpdump()
{
	chmod 777 /data/local/tcpdump
	/data/local/tcpdump -i any -p -s 0 -w  $LOG_DIR$LOG_FILE &
	tcpdump_pid=$!
	echo $tcpdump_pid > data/local/tcpdump_pid.log
}

stop_tcpdump()
{
	tcpdump_pid=`cat data/local/tcpdump_pid.log`
	kill -TERM $tcpdump_pid
}

rm_tcpdump_logs()
{
	/system/bin/rm /data/local/*.pcap
}

case "$tcpdump_prop" in
        "0")
            start_default_tcpdump;;
        "1")
            start_backup_tcpdump;;
        "2")
            stop_tcpdump;;
        "3")
            rm_tcpdump_logs;;
esac
