# To check if Makefile has correct syntax (all must be tabs (^I), no spaces)
# cat -e -t -v Makefile

default: docker-test

.PHONY: test
test:
	swift test

.PHONY: coverage
coverage:
	swift test --enable-code-coverage
	llvm-cov show .build/*/debug/*.xctest -instr-profile .build/*/debug/codecov/default.profdata --format=html > coverage-report.html
	llvm-cov report .build/*/debug/*.xctest -instr-profile .build/*/debug/codecov/default.profdata -use-color
	@printf "\nOpen coverage-report.html\n"


#.PHONY: mutation
#mutation:
#	dotnet stryker -tp test

#.PHONY: docker-build
#docker-build:
#	docker build -f ../Dockerfile -t codiumteam/legacy-training-csharp:gilded-rose-characterization .

.PHONY: docker-test
docker-test:
	$ docker run -it -v ${PWD}:/code -w /code swift:5.5 make test

#.PHONY: docker-coverage
#docker-coverage:
#	docker run --rm -v ${PWD}:/code codiumteam/legacy-training-csharp:gilded-rose-characterization make coverage

#.PHONY: docker-mutation
#docker-mutation:
#	docker run --rm -v ${PWD}:/code codiumteam/legacy-training-csharp:gilded-rose-characterization make mutation