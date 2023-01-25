#!make
help: _header
	${info }
	@echo Opciones:
	@echo ------------------------------------------
	@echo build
	@echo start
	@echo stop
	@echo restart
	@echo clean
	@echo ------------------------------------------

_header:
	@echo -------
	@echo Parquets Ocasar Docker
	@echo -------

start:
	@docker compose up -d

stop:
	@docker compose stop
restart:
	@docker compose restart

clean:
	@docker compose down -v --remove-orphans
