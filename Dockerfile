FROM monsantoco/min-jessie
MAINTAINER Alan Jenkins <alan.james.jenkins@gmail.com>

USER root
RUN useradd -m starbound
ADD starbound /starbound/
RUN chown -R starbound:root /starbound/
USER starbound
VOLUME /starbound/giraffe_storage
CMD cd /starbound/linux64 && /starbound/linux64/starbound_server
