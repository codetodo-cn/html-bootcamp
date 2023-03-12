
up:
	sh scripts/devcontainer.sh up

down:
	sh scripts/devcontainer.sh down

dev:
	docker exec -it html-bootcamp /bin/bash

logs:
	docker logs -f html-bootcamp

restart:
	make down && make up

clean:
	make down && docker rmi liyaodev/html-bootcamp-env:${ENV_VERSION}

pyscript_start:
	rm -rf nginx/html/pyscript
	cp -rf bootcamp/pyscript nginx/html/

pyscript_down:
	rm -rf nginx/html/pyscript
