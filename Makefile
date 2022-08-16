docker-build: docker build --tag=uda-capstone . 

install:
	wget -O ./hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
		chmod +x ./hadolint
validate-circleci:
	# See https://circleci.com/docs/2.0/local-cli/#processing-a-config
	circleci config process .circleci/config.yml

run-circleci-local:
	# See https://circleci.com/docs/2.0/local-cli/#running-a-job
	circleci local execute


lint:
	./hadolint Dockerfile
#	pylint --disable=R,C,w1203,w1202 index.html
#	docker run --rm -i hadolint/hadolint:v1.16.3 < Dockerfile

all: install lint test
