# Phoromatic server in docker

Try out image with
```
docker run -p 9090:9090 -p 9091:9091 --rm \
--volume /tmp/cache:/var/cache/phoronix-test-suite/download-cache/ \
 --volume /tmp/phoromatic:/var/lib/phoronix-test-suite/phoromatic tomzo/phoromatic
```
