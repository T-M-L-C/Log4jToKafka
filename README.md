kakfa创建topic命令
bin/kafka-topics.sh --zookeeper node01:2181 --create --topic t_cdr --partitions 30  --replication-factor 2

kafka消费命令

bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic tmlcitmyhome --from-beginning

启动zookeeper

bin/zookeeper-server-start.sh config/zookeeper.properties &

启动kafka

bin/kafka-server-start.sh config/server.properties &