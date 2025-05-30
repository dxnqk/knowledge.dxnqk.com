.DEFAULT_GOAL := run

run:
	@hugo server \
		--buildDrafts true \
		--noHTTPCache
