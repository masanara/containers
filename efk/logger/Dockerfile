FROM fluent/fluentd:latest
USER fluent
WORKDIR /home/fluent
ENV PATH /home/fluent/.gem/ruby/2.3.0/bin:$PATH
ENV GEM_PATH /home/fluent/.gem/ruby/2.3.0
RUN fluent-gem install fluent-plugin-elasticsearch
