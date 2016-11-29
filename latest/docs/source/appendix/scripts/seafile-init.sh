#  GNU nano 2.7.0                                                                                                              File: /etc/init.d/seafile

#!/bin/sh

### BEGIN INIT INFO
# Provides:          seafile
# Required-Start:    $local_fs $remote_fs $network mysql
# Required-Stop:     $local_fs
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Starts Seafile Server
# Description:       starts Seafile Server
### END INIT INFO

# Change the value of "user" to your linux user name
user=seafile

# Change the value of "seafile_dir" to your path of seafile installation
seafile_dir=/usr/local/bin/seafile-server
script_path=${seafile_dir}/seafile-server-latest
seafile_init_log=${seafile_dir}/logs/seafile.init.log
seahub_init_log=${seafile_dir}/logs/seahub.init.log

# Change the value of fastcgi to true if fastcgi is to be used
fastcgi=true
# Set the port of fastcgi, default is 8000. Change it if you need different.
fastcgi_port=8000

case "$1" in
        start)
                ${script_path}/seafile.sh start >> ${seafile_init_log}
                if [  $fastcgi = true ];
                then
                        ${script_path}/seahub.sh start-fastcgi ${fastcgi_port} >> ${seahub_init_log}
                else
                        ${script_path}/seahub.sh start >> ${seahub_init_log}
                fi
        ;;
        restart)
                ${script_path}/seafile.sh restart >> ${seafile_init_log}
                if [  $fastcgi = true ];
                then
                        ${script_path}/seahub.sh restart-fastcgi ${fastcgi_port} >> ${seahub_init_log}
                else
                        ${script_path}/seahub.sh restart >> ${seahub_init_log}
                fi
        ;;
        stop)
                ${script_path}/seafile.sh $1 >> ${seafile_init_log}
                ${script_path}/seahub.sh $1 >> ${seahub_init_log}
        ;;
        *)
                echo "Usage: /etc/init.d/seafile {start|stop|restart}"
                exit 1
        ;;
esac



