FROM octohost/leiningen

RUN apt-get update && apt-get install -y make git
RUN git clone https://github.com/tailrecursion/boot.git && cd boot && make boot && cp ./boot /usr/bin/
