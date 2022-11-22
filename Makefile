.PHONY: up-local down-local lint lint-fix full-clean

full-clean:
	docker system prune -f

lint:
	npx eslint "src/**" --color

lint-fix:
	npx eslint "src/**" --color --fix

up-local:
	docker-compose -f docker-compose.yml -f docker-compose.local.yml build
	docker-compose -f docker-compose.yml -f docker-compose.local.yml up -d

down-local:
	docker-compose -f docker-compose.yml -f docker-compose.local.yml down



