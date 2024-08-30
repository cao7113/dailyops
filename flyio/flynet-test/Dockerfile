FROM debian:bullseye-20240701-slim
# To locally connect your container image to a repository, you must add this line
LABEL org.opencontainers.image.source https://github.com/cao7113/dailyops

ENV PORT 6666

RUN apt-get update -y && \
  apt-get install -y \
  netcat-openbsd \
  net-tools \
  curl \
  iputils-ping \
  dnsutils \
  jq \
  postgresql-client && \
  apt-get clean && rm -f /var/lib/apt/lists/*_*

WORKDIR /app
RUN touch flynet-test

EXPOSE $PORT

CMD nc -lkv -p $PORT