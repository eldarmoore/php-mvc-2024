# Load environment variables from .env file
ifneq (,$(wildcard ./.env))
    include .env
    export $(shell sed 's/=.*//' .env)
endif

# Declare targets as PHONY
.PHONY: setup start stop

# Setup target to add domain to hosts and build containers
setup:
	@echo "Setting up the project with domain: $(DOMAIN_NAME)"
	@echo "Project name: $(PROJECT_NAME)"
	@sudo ./setup/add-to-hosts.sh $(PROJECT_NAME)
	@docker-compose up --build -d

# Start target to run the containers without rebuilding
start:
	@echo "Starting the project containers"
	@docker-compose up -d

# Stop target to stop the containers
stop:
	@echo "Stopping the project containers"
	@docker-compose down