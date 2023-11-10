# Waits for all Redis nodes to be ready
echo "Waiting for the Redis nodes to be ready..."
sleep 10

# Creates the cluster
echo "Creating the Redis cluster..."
redis-cli --cluster create "$IP_HOST":"$NODE_1_PORT" "$IP_HOST":"$NODE_2_PORT" "$IP_HOST":"$NODE_3_PORT" \
 "$IP_HOST":"$NODE_4_PORT" "$IP_HOST":"$NODE_5_PORT" "$IP_HOST":"$NODE_6_PORT" \
 --cluster-replicas 1 --cluster-yes
