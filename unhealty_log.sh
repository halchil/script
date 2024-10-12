docker ps -a --format '{{json .}}' | jq -r 'select((.Status | contains("unhealthy")) or (.Status | contains("Exit") and (contains("Exited (0)") | not) )) | .Names' |
while read -r container; do
  docker logs $container
done