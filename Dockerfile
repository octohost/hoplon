FROM octohost/leiningen

RUN apt-get update && apt-get install -y make git
RUN git clone https://github.com/tailrecursion/boot.git && cd boot && make boot && cp ./boot /usr/bin/
RUN mkdir /srv/www
ADD . /srv/www
RUN cd /srv/www && boot

WORKDIR /srv/www

EXPOSE 33333

CMD boot watch hoplon run