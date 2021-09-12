.DEFAULT_GOAL := help
.PHONY: help serve

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

serve_docker: ## Activate the service with docker
	chmod u+x ./scripts/serve_docker.sh
	./scripts/serve_docker.sh ./docker-compose.yaml

serve_frontend_dev: ## Activate the frontend service directly
	chmod u+x ./scripts/serve_frontend.sh
	./scripts/serve_frontend.sh ./frontend
