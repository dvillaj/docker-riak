FROM basho/riak-kv
LABEL MANTAINER dvillaj@gmail.com

COPY scripts/config-riak.sh /etc/riak/prestart.d/script.sh