FROM dockerfile/java:oracle-java8
MAINTAINER Christopher J Lyth <cjlyth@gmail.com>

ENV ANT_VERSION 1.9.4
ENV ANT_HOME /opt/apache-ant-$ANT_VERSION

ENV ANT_BIN_URL https://www.apache.org/dist/ant/binaries/apache-ant-$ANT_VERSION-bin.tar.gz
ENV ANT_SIG_URL $ANT_BIN_URL.asc

COPY entrypoint.sh /

RUN gpg --batch --quiet --no-tty --yes --no-greeting  \
		--keyserver pool.sks-keyservers.net --recv-keys \
			DE8884A0 FEECAAED 7BF8BE8E \
			B80602AE 51898504 971731FB \
			3B7C75B1 697ECEDD 9711DBFC \
			265B4C63 5F6B8B72 82A7FBCD \
			710038F5 C152431A EDF62C35 \
			AA0077B0 397DCAD5 307A10A5 \
 && mkdir -p $ANT_HOME \
 && curl -sSLo apache-ant.tar.gz $ANT_BIN_URL \
 && curl -sSL $ANT_SIG_URL \
  | gpg --verify - apache-ant.tar.gz \
 && tar -xf apache-ant.tar.gz \
 		-C $ANT_HOME \
 		--strip-components=1 \
 		--wildcards \
 		--ignore-case \
 		--exclude="bin/*.cmd" \
 		--exclude="bin/*.bat" \
 		--exclude="bin/*.pl" \
 		--exclude="manual" \
 && rm -f apache-ant.tar.gz \
 && unset ANT_BIN_URL ANT_SIG_URL \
 && chmod +x /entrypoint.sh \
 && ln -s /entrypoint.sh \
 		  /usr/local/bin/ant

ENV PATH $ANT_HOME/bin:$PATH
ENTRYPOINT ["/entrypoint.sh"]
CMD ["ant"]

 