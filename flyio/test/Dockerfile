FROM ubuntu:22.04
# To locally connect your container image to a repository, you must add this line
LABEL org.opencontainers.image.source https://github.com/cao7113/dailyops

# RUN apt-get update -y && \
#   apt-get install -y libstdc++6 openssl libncurses5 locales ca-certificates \
#   && apt-get clean && rm -f /var/lib/apt/lists/*_*
RUN apt-get update -y && \
  apt-get install -y curl iputils-ping dnsutils jq && \
  apt-get clean && rm -f /var/lib/apt/lists/*_*

CMD ["ping", "-i", "3", "localhost"]