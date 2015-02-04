# docker-ant

### Versions

	   1.9-jdk7 1.9-oracle-jdk7
latest 1.9-jdk8 1.9-oracle-jdk8


### Local build

```
docker build -t cjlyth/ant:1.9-oracle-jdk7 1.9-oracle-jdk7 \
&& docker tag -f cjlyth/ant:1.9-oracle-jdk7 cjlyth/ant:1.9-jdk7

docker build -t cjlyth/ant:1.9-oracle-jdk8 1.9-oracle-jdk8 \
&& docker tag -f cjlyth/ant:1.9-oracle-jdk8 cjlyth/ant:1.9-jdk8 \
&& docker tag -f cjlyth/ant:1.9-oracle-jdk8 cjlyth/ant:latest
```

### Use the trusted build from docker

```
docker run -v $(pwd):/data --rm cjlyth/ant
```