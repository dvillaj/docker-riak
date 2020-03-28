FROM basho/riak-kv
LABEL MANTAINER dvillaj@gmail.com

COPY scrtips/config-riak.sh /etc/riak/prestart.d/script.sh