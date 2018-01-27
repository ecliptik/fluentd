#Use upstream image for fluentd to use
FROM fluent/fluentd:v1.0-debian

#Install plugins
RUN gem install fluent-plugin-sumologic_output --no-rdoc --no-ri --version 1.0.1
RUN gem install fluent-plugin-record-reformer --no-rdoc --no-ri --version 0.9.1

#Copy app specific fluentd configs
COPY conf/fluent.conf /fluentd/etc/
COPY conf.d/ /fluentd/etc/conf.d/
