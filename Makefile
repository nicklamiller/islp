POETRY_RUN := poetry run


.PHONY: precommit poetry-pre-commit

precommit:
	make poetry-pre-commit

poetry-pre-commit:
	${POETRY_RUN} pre-commit run --all-files
