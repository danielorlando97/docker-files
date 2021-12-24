mysql:
		docker-compose -f mysql-server.yml up -d

mongo:
		docker-compose -f mongo-express.yml up -d
	
redis: 
		docker-compose -f redis-db.yml up -d
elastic:
		cd docker-elk && docker-compose up -d
	
postgres:
		docker-compose -f postgres.yml up -d
adminer:
		docker-compose -f adminer.yml up -d

kafka: 
	docker-compose -f kafka.yml up -d