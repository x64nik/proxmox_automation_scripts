  GNU nano 5.4                                           startK8.sh                                                    
#!/usr/bin/bash


master="106"
worker1="107"
worker2="108"


start () { 
        if [ $(qm status "$master" | awk '{print $2}') = "running" ]; then
                echo "Master already running"
        else
                echo "starting master node..."
                qm start "$master"
                echo "master node started"

        if [ $(qm status "$worker1r" | awk '{print $2}') = "running" ]; then
                echo "Worker1 already running"
        else
                echo "starting worker1 node..."
                qm start "$worker1"
                echo "worker1 node started"

        if [ $(qm status "$worker2" | awk '{print $2}') = "running" ]; then
                echo "worker2 already running"
        else
                echo "starting worker2 node..."
                qm start "$worker2"
                echo "worker2 node started"

}

stop () { 
        if [ $(qm status "$master" | awk '{print $2}') = "stopped" ]; then
                echo "Master not running"
        else
                echo "stopping master node..."
                qm stop "$master"
                echo "master node stopped"

        if [ $(qm status "$worker1" | awk '{print $2}') = "stopped" ]; then
                echo "Worker1 not running"
        else
                echo "stopped worker1 node..."
                qm stop "$worker1"
                echo "worker1 node stopped"

        if [ $(qm status "$worker2" | awk '{print $2}') = "stopped" ]; then
                echo "worker2 not running"
        else
                echo "stopping worker2 node..."
                qm stop "$worker2"
                echo "worker2 node stopped"
}

restart () { 
        if [ $(qm status "$master" | awk '{print $2}') = "running" ]; then
                echo "Master already running"
        else
                echo "starting master node..."
                qm start "$master"
                echo "master node started"

        if [ $(qm status "$worker1r" | awk '{print $2}') = "running" ]; then
                echo "Worker1 already running"
        else
                echo "starting worker1 node..."
                qm start "$worker1"
                echo "worker1 node started"

        if [ $(qm status "$worker2" | awk '{print $2}') = "running" ]; then
                echo "worker2 already running"
        else
                echo "starting worker2 node..."
                qm start "$worker2"
                echo "worker2 node started"
}

if [ "$1" = "start"  ]
then
        start "$1"
elif [ "$1" = "stop" ]
then 
        stop "$1"
elif [ "$1" = "restart" ]
then 
        restart "$1"
else
        echo "Invalid arguments!"
        echo "valid args: start, stop, restart"
fi

