deploy:
	docker-compose --project-name personal-cloud -f docker-compose.yml up --detach --build --remove-orphans