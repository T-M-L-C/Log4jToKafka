kakfa创建topic命令
bin/kafka-topics.sh --zookeeper node01:2181 --create --topic t_cdr --partitions 30  --replication-factor 2

kafka消费命令

bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic tmlcitmyhome --from-beginning

启动zookeeper

bin/zookeeper-server-start.sh config/zookeeper.properties &

启动kafka

bin/kafka-server-start.sh config/server.properties &

maven提供的资源过滤文档：
https://maven.apache.org/pom.html#Properties

### Deploy Step 发布步骤:  
1.先上传maven打包后的project.jar文件到Linux云主机的任意一个目录下

2.上传target目录下整个bin文件夹到project.jar文件所在的目录

3.启动zookeeper,并启动kafka服务

4.在kafka中创建topic 为"tmlcitmyhome" 的topic,并启动该topic的消费命令，保留该窗口（记为窗口A）

5.在另一个窗口（记为窗口B）中启动bin文件夹下的start.sh脚本，如果能同时在A,B两个窗口中看到20条日志记录，则说明程序执行成功

6.关闭程序，需要执行 bash bin/stop.sh 命令，若显示"All application Log4jToKafka stopped success"的信息，则说明程序成功关闭

7.notice:在将bin目录下的脚本上传到Linux云主机的过程中，可能会导致脚本的编码发生编码，window端默认编码是dos格式，而Linux端
需要调整成unix格式才可执行