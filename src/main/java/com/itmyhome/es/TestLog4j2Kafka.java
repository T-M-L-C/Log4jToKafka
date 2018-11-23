package com.itmyhome.es;


import org.apache.log4j.Logger;

/**
 * @author liuchao
 * @since 11/23/2018
 * 先启动kafka的消费服务，再启动程序，kafka使用0.8.2版本,log4j使用1.2.17版本
 * 该实例的功能是使用Log4j将程序日志实时写入Kafka
 */
public class TestLog4j2Kafka {

    private static Logger logger = Logger.getLogger(TestLog4j2Kafka.class);

    public static void main(String[] args) throws InterruptedException {
        for(int i = 0;i <= 20; i++) {
            logger.info("This is Message [" + i + "] from log4j producer .. ");
            Thread.sleep(1000);
        }
    }

}
