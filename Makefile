IMAGE=tdd-py
CONTAINER=tdd-py-container

build: ## build image
	docker image build -t ${IMAGE} .

start: ## start container
	docker container run --rm -ti -d --name ${CONTAINER} -v ${PWD}:/dojo ${IMAGE}

stop: ## stop container
	docker container stop ${CONTAINER}

shell: ## attach to running container
	docker exec -it ${CONTAINER} sh

test: ## run tests in running container
	docker exec -it ${CONTAINER} python -m pytest -q --no-header -s

help: ## Show this help
	@echo "Targets:"
	@fgrep -h "##" $(MAKEFILE_LIST) | grep ":" | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/\(.*\):.*##[ \t]*/    \1 ## /' | sort | column -t -s '##'
	@echo


