import-logstash-data:
	sudo ~/Server/logstash-7.1.0/bin/logstash -f ~/Server/logstash-7.1.0/config/logstash.conf
canal-server-start:
	sh ~/Server/canal-server-1.1.5/bin/startup.sh
canal-server-stop:
	sh ~/Server/canal-server-1.1.5/bin/stop.sh
rocketmq-start:
	nohup sh ~/Server/rocketmq-4.9/distribution/target/rocketmq-4.9.0/rocketmq-4.9.0/bin/mqnamesrv  >> namesrv.log 2>&1 & 
	nohup sh ~/Server/rocketmq-4.9/distribution/target/rocketmq-4.9.0/rocketmq-4.9.0/bin/mqbroker -n localhost:9876 autoCreateTopicEnable=true >> broker.log 2>&1 &		
rocketmq-stop:
	sh ~/Server/rocketmq-4.9/distribution/target/rocketmq-4.9.0/rocketmq-4.9.0/bin/mqshutdown broker
	sh ~/Server/rocketmq-4.9/distribution/target/rocketmq-4.9.0/rocketmq-4.9.0/bin/mqshutdown namesrv 
