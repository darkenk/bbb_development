#
# Minimum Docker image to build Android AOSP
#
FROM kylemanna/aosp:latest

# Keep the dependency list as short as reasonable
RUN apt-get update && \
    apt-get install -y \
    apt-utils u-boot-tools wget libatk-wrapper-java-jni \
    vim && \
    apt-get autoremove && apt-get clean && rm -rf /var/lib/apt/lists/* /var/tmp/* && \
    apt-get remove --purge -y openjdk-8-jre-headless

RUN wget http://cz.archive.ubuntu.com/ubuntu/pool/universe/o/openjdk-6/openjdk-6-jdk_6b41-1.13.13-0ubuntu0.14.04.1_amd64.deb && \
wget http://cz.archive.ubuntu.com/ubuntu/pool/universe/o/openjdk-6/openjdk-6-jre_6b41-1.13.13-0ubuntu0.14.04.1_amd64.deb && \
wget http://cz.archive.ubuntu.com/ubuntu/pool/universe/o/openjdk-6/openjdk-6-jre-headless_6b41-1.13.13-0ubuntu0.14.04.1_amd64.deb && \
wget http://cz.archive.ubuntu.com/ubuntu/pool/universe/o/openjdk-6/openjdk-6-jre-lib_6b41-1.13.13-0ubuntu0.14.04.1_all.deb && \
wget http://cz.archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata-java_2018g-0ubuntu0.14.04_all.deb && \
wget http://cz.archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2018g-0ubuntu0.14.04_all.deb && \
wget http://cz.archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates-java/ca-certificates-java_20130815ubuntu1_all.deb && \
wget http://cz.archive.ubuntu.com/ubuntu/pool/main/g/giflib/libgif4_4.1.6-11_amd64.deb && \
dpkg -i *.deb && rm *.deb

COPY bashrc /home/aosp/.bashrc
