FROM geopython/stetl:latest

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y wget unzip

RUN cd / && \
        wget  https://github.com/nlextract/NLExtract/archive/master.zip && \
        unzip /master.zip

WORKDIR /NLExtract-master/bgt/etl/

COPY default.args /NLExtract-master/bgt/etl/options/

ENTRYPOINT ["stetl", "-c", "conf/etl-imgeo-v2.1.1.cfg", "-a", "options/default.args"]