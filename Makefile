venv:
	virtualenv -p `which python3` venv && \
    source venv/bin/activate

develop: venv
	venv/bin/pip install -e . -r requirements.txt

clean:
	-rm -rf venv

require:
	pip freeze > requirements.txt

upload:
	python setup.py check && \
	rm -rf dist/* && \
	python setup.py sdist && \
	twine upload --repository-url https://upload.pypi.org/legacy/ dist/*



