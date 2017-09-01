# Ref: https://github.com/elastic/kibana-docker/issues/27#issuecomment-296524205

FROM docker.elastic.co/kibana/kibana:5.3.1
RUN bin/kibana-plugin remove x-pack && \
    kibana 2>&1 | grep -m 1 "Optimization of .* complete" # [1]