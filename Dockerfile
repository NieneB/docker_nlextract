FROM geopython/stetl:latest

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y wget unzip

<<<<<<< HEAD
RUN cd / && \
        wget  https://github.com/nlextract/NLExtract/archive/master.zip && \
        unzip /master.zip

WORKDIR /NLExtract-master/bgt/etl/

COPY default.args /NLExtract-master/bgt/etl/options/

ENTRYPOINT ["stetl", "-c", "conf/etl-imgeo-v2.1.1.cfg", "-a", "options/default.args"]
=======
#RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
#    apt-get install -y \
#    libxml2 \
#    libxslt1.1 \
#    python-lxml \
#    libssl-dev \
#    libffi-dev \
#    python-dev \
#    python \
#    python-gdal \
#    python-pip \
#    python-setuptools

#RUN pip install --upgrade pip

#RUN pip install psycopg2

RUN cd / && \
        wget  http://www.nlextract.nl/file-cabinet/nlextract-1.2.1.zip && \
        unzip /nlextract-1.2.1.zip

WORKDIR /nlextract-1.2.1/bgt/etl
COPY default.args /nlextract-1.2.1/bgt/etl/options/


ENTRYPOINT ["./etl-imgeo.sh"]
                                                                                                                                                                                            
                                                                                                                                                                                             
                                                                                                                                                                                             
                            
>>>>>>> 981592502900dbf500b032e376841f301f7e9594
