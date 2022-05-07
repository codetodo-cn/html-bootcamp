
up:
	sh scripts/devcontainer.sh up

down:
	sh scripts/devcontainer.sh down

pyscript_start:
	rm -rf nginx/html/pyscript
	cp -rf bootcamp/pyscript nginx/html/

pyscript_down:
	rm -rf nginx/html/pyscript

