# https://docs.docker.com/reference/dockerfile/
# https://github.com/docker-library/busybox

# NOTE: this build-arg only available in FROM instruction!!!
ARG ARG0="arg0-in-dockerfile-header-part"

FROM busybox

# only available when building
ARG ARG1="default-arg1-in-dockerfile"
# available in final running container
ENV ENV1="default-env1-in-dockerfile"

WORKDIR /app

RUN <<EOF
  echo "NOTE: ARG0 is blank here because it is before FROM instruction!!!"
  echo test ARG0=$ARG0 > arg0-on-build
EOF

RUN <<EOT sh
  echo ARG1=$ARG1
  echo test ARG1=$ARG1 > arg1-on-build
EOT

RUN <<EOT sh
  echo test ENV1=$ENV1
  echo test ENV1=$ENV1 > env1-on-build
EOT

COPY run-me.sh .

RUN <<EOT sh
  pwd
  ls -Al
EOT