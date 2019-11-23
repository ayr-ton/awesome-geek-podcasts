check:
	docker run --rm \
	-v ${PWD}:/mnt:ro dkhamsing/awesome_bot \
	--white-list github.com \
	--allow-redirect README.md
