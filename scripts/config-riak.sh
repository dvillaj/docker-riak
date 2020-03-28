#!/usr/bin/env bash
set -eux

# Make sure the Riak coordinator listens on all interfaces, otherwise it only listens on the docker-compose default network
## Reference: https://github.com/basho-labs/riak-docker/blob/master/riak-cluster.sh#L36-L40
## Unfortunately, as of this writing the naive `find` invocation in the above script means the scripts don't run in the
## intended prefix-filename order. A PR has been opened to fix this:
### https://github.com/basho-labs/riak-docker/pull/7
## In the meantime, we'll need to use our own custom builds that incorporate this fix.

#for i in $HTTP_PORT $PB_PORT; do
#  sed -i s/=.*:"$i"/"= 0.0.0.0:$i"/g $RIAK_CONF 
#done

sed -i "s/storage_backend = bitcask/storage_backend = leveldb/" $RIAK_CONF