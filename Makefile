DB_DIR=$(shell pwd)/_db
V=5.7

start_db:
	@echo Starting MySQL $(V)
	docker run --rm -d --name mysql-$(V) \
            -p 3306:3306 \
            -v $(DB_DIR):/var/lib/mysql \
            -e MYSQL_DATABASE=test_db \
            -e MYSQL_ALLOW_EMPTY_PASSWORD=yes \
            mysql:$(V) --character-set-server=utf8 --collation-server=utf8_general_ci

purge_db:
	docker stop mysql-$(V) || true
	rm -Rf $(DB_DIR)

get_ip:
	@docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' mysql-$(V)