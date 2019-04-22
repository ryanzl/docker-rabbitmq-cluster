FROM bijukunjummen/rabbitmq-base:3.7.0
MAINTAINER Biju Kunjummen biju.kunjummen@gmail.com

ADD rabbitmq.config /etc/rabbitmq/
ADD erlang.cookie /var/lib/rabbitmq/.erlang.cookie
ADD startrabbit.sh /opt/rabbit/

#下载死信插件
RUN curl https://dl.bintray.com/rabbitmq/community-plugins/3.7.x/rabbitmq_delayed_message_exchange/rabbitmq_delayed_message_exchange-20171201-3.7.x.zip -o rabbitmq_delayed_message_exchange-20171201-3.7.x.zip --progress \
&& unzip rabbitmq_delayed_message_exchange-20171201-3.7.x.zip \
&& cp rabbitmq_delayed_message_exchange-20171201-3.7.x.ez /usr/lib/rabbitmq/lib/rabbitmq_server-3.7.0/plugins/ \


RUN chmod u+rw /etc/rabbitmq/rabbitmq.config \
&& chown rabbitmq:rabbitmq /var/lib/rabbitmq/.erlang.cookie \
&& chmod 400 /var/lib/rabbitmq/.erlang.cookie \
&& mkdir -p /opt/rabbit \
&& chmod a+x /opt/rabbit/startrabbit.sh
&& sudo rabbitmq-plugins enable rabbitmq_delayed_message_exchange

EXPOSE 5672
EXPOSE 15672
EXPOSE 25672
EXPOSE 4369
EXPOSE 9100
EXPOSE 9101
EXPOSE 9102
EXPOSE 9103
EXPOSE 9104
EXPOSE 9105

CMD /opt/rabbit/startrabbit.sh
