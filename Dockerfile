# syntax=docker/dockerfile:1
FROM busybox:latest
COPY --chmod=755 <<EOF /app/run.sh
#!/bin/sh
while true; do
  echo -ne "The time is now $(date +%T)\\r" >> /tmp/dockerfile.log
  sleep 1
done
EOF

ENTRYPOINT /app/run.sh
