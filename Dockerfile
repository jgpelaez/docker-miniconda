FROM continuumio/miniconda:3.18.3p0
MAINTAINER Henri Blancke <henri@addapp.io>

RUN apt-get -y update
RUN apt-get install -y python-dev libmysqlclient-dev
RUN conda install -y \
    libgfortran=1.0=0 \
    numpy=1.10.1=py27_0 \
    openblas=0.2.14=3 \
    openssl=1.0.2d=0 \
    pandas=0.16.2=np110py27_0 \
    pip=7.1.2=py27_0 \
    python=2.7.10=2 \
    python-dateutil=2.4.2=py27_0 \
    pytz=2015.6=py27_0 \
    readline=6.2=2 \
    scipy=0.16.0=np110py27_1 \
    setuptools=18.4=py27_0 \
    six=1.10.0=py27_0 \
    sqlalchemy=1.0.9=py27_0 \
    sqlite=3.8.4.1=1 \
    tk=8.5.18=0 \
    wheel=0.26.0=py27_1 \
    pytest \
    zlib=1.2.8=0

RUN pip install \
    bugsnag==2.3.1 \
    click==5.1 \
    crc16==0.1.1 \
    elasticsearch==2.1.0 \
    elasticsearch-dsl==0.0.9 \
    hermescache==0.5.2 \
    mysql-python==1.2.5 \
    ordereddict==1.1 \
    python-dotenv==0.2.0 \
    python-redis==0.0.5 \
    redis==2.10.5 \
    urllib3==1.12 \
    mock==1.3.0 \
    webob==1.5.1