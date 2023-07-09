POETRY_RUN := poetry run


.PHONY: precommit poetry-pre-commit install install-dev

install:
	poetry install
	make install-dev

install-dev:
	cp tools/pre-commit .git/hooks/
	chmod +x .git/hooks/pre-commit

precommit:
	make poetry-pre-commit

poetry-pre-commit:
	${POETRY_RUN} pre-commit run --all-files
