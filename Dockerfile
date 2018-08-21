FROM ubuntu:bionic

RUN apt-get update && apt-get install -y bc cloc git build-essential

WORKDIR /workspace
RUN git clone https://github.com/arzzen/git-quick-stats.git && cd git-quick-stats && make install

COPY hofs-churn /workspace/hofs-churn

CMD echo 'USAGE: `docker run -it --rm bbartolome/hofs-churn bash`'
