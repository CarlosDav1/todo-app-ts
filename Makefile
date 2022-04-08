build:
	docker-compose build

install:
	docker-compose run -u 0:$$(id -g) --rm node bash -c "npm install"

vueui:
	docker-compose run -p 8000:8000 --name vue_ui -u $(id -u):$(id -g) --rm node bash -c "vue ui --headless --host 0.0.0.0 --port 8000"

serve:
	docker-compose run -p 8080:8080 -u $(id -u):$(id -g) --rm node bash -c "npm run serve"

prod:
	docker-compose run -u $(id -u):$(id -g) --rm node bash -c "npm run build"