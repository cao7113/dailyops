# https://docs.docker.com/reference/dockerfile/
FROM busybox as builder

WORKDIR /app
RUN touch only-in-builder
RUN echo "builder-saved-info" > file-from-builder

FROM busybox as runner

WORKDIR /app
COPY --from=builder --chown=nobody:root /app/file-from-builder ./
USER nobody