.PHONY: up-local down-local lint lint-fix full-clean test

test:
	@node ./node_modules/mocha/bin/mocha.js

full-clean:
	@docker system prune -f

lint:
	@npx eslint "src/**" "test/**" --color

lint-fix:
	@npx eslint "src/**" "test/**" --color --fix

up-local:
	@docker-compose -f docker-compose.yml -f docker-compose.local.yml build
	@docker-compose -f docker-compose.yml -f docker-compose.local.yml up -d

down-local:
	@docker-compose -f docker-compose.yml -f docker-compose.local.yml down



