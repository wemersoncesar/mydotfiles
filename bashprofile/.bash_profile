export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_181.jdk/Contents/Home
export HADOOP_HOME='/opt/local/hadoop-2.7.3'
export HBASE_HOME='/opt/local/hbase-1.4.2'
export KAFKA_HOME='/opt/local/kafka_2.10-0.10.2.1'
export ZOOKEEPER_HOME='/opt/local/zookeeper-3.3.6'
alias stop-hbase='${HBASE_HOME}/bin/stop-hbase.sh' 
alias start-hbase='${HBASE_HOME}/bin/start-hbase.sh'
alias start-hb-zk='${HBASE_HOME}/bin/hbase-daemon.sh start zookeeper'
alias stop-hb-zk='${HBASE_HOME}/bin/hbase-daemon.sh stop zookeeper'
alias hadoop-start='${HADOOP_HOME}/sbin/start-all.sh'
alias start-zookeeper='${ZOOKEEPER_HOME}/bin/zkServer.sh start'
alias stop-zookeeper='${ZOOKEEPER_HOME}/bin/zkServer.sh stop'
alias start-kafka='${KAFKA_HOME}/bin/kafka-server-start.sh  /opt/local/kafka_2.10-0.10.2.1/config/server-1.properties &'
alias stop-kafka='${KAFKA_HOME}/bin/kafka-server-stop.sh'
alias kafka-consumer='${KAFKA_HOME}/bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic '${1}
alias kafka-producer='${KAFKA_HOME}/bin/kafka-console-producer.sh --broker-list localhost:9091 --topic '${1}
alias kafka-list='${KAFKA_HOME}/bin/kafka-topics.sh --list --zookeeper localhost:2181/kafka'
# added by Anaconda2 2018.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/wemersoncesar/anaconda2/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/wemersoncesar/anaconda2/etc/profile.d/conda.sh" ]; then
        . "/Users/wemersoncesar/anaconda2/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/wemersoncesar/anaconda2/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
