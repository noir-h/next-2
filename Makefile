up:
	docker compose up -d
build:
	docker compose build --no-cache --force-rm
nextjs-install:
	docker compose exec app npx create-next-app . --use-npm
create-project:
	mkdir -p project
	@make build
	@make up
	@make nextjs-install
	docker compose exec app npm install -D tailwindcss postcss autoprefixer
	docker compose exec app npx tailwindcss init -p
	docker compose exec app npm install node-fetch
stop:
	docker compose stop
down:
	docker compose down --remove-orphans
