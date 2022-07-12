# To check if Makefile has correct syntax (all must be tabs (^I), no spaces)
# cat -e -t -v Makefile

default: docker-run

.PHONY: run
run:
	swift run


.PHONY: docker-run
docker-run:
	$ docker run -it -v ${PWD}:/code -w /code swift:5.5 swift run

