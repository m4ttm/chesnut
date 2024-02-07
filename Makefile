.PHONY: clean docs sloc test coverage lint

clean:
	rm -rf build docs dist chesnut.egg-info .pytest_cache .coverage .mypy_cache .mypy_cache __pycache__ */__pycache__

docs:
	pdoc --docformat google -o docs --logo https://raw.githubusercontent.com/m4ttm/chesnut/main/chesnut.svg chesnut

sloc:
	cloc chesnut

test:
	pytest test

coverage:
	pytest test --func_cov=chesnut --func_cov_report=term-missing

lint:
	pylint chesnut test

