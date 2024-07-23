FROM ubuntu:22.04
# To locally connect your container image to a repository, you must add this line
LABEL org.opencontainers.image.source https://github.com/cao7113/dailyops

RUN apt-get update -y && \
  apt-get install -y curl iputils-ping dnsutils jq postgresql-client && \
  apt-get clean && rm -f /var/lib/apt/lists/*_*

WORKDIR /app
RUN touch just-test-file

CMD ["ping", "-i", "5", "localhost"]