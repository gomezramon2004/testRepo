a=0
b="$1"

if [ "$b" == "hola" ]; then
    while [ $a -lt 10 ]; do
        uname -a
        sw_vers
        system_profiler SPHardwareDataType
        df -h
        top
        uptime
        ifconfig
        netstat -rn
        sysctl -a
        ioreg -l
        echo "$a"
        a=$((a + 1))
    done
    echo "$b"
else
    echo "No hubo un HOLA :("
fi

source .venv/bin/activate
python3 main.py