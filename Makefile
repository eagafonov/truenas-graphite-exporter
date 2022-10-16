run-test:
	docker run --rm -ti --name graphite-exporter-test \
		-p 9108:9108 \
		-p 2003:9109 \
		-p 2003:9109/udp \
		-v ${PWD}/graphite_mapping.conf:/tmp/graphite_mapping.conf:ro \
		prom/graphite-exporter \
			--graphite.mapping-config=/tmp/graphite_mapping.conf \
			--log.level=debug
