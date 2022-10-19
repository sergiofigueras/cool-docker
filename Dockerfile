FROM i386/ubuntu
RUN apt-get update
RUN apt-get -y install wget sudo flex bison build-essential csh libxaw7-dev nano
RUN mkdir /usr/class
WORKDIR /usr/class
RUN wget https://courses.edx.org/asset-v1:StanfordOnline+SOE.YCSCS1+1T2020+type@asset+block@student-dist.tar.gz -O student-dist.tar.gz
RUN tar -xf student-dist.tar.gz
ENV PATH=/usr/class/bin:$PATH
