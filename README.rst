# tidypackage
Test how to publish python package to pypi

python setup.py check

python setup.py sdist tidy

python -m twine upload --repository-url https://test.pypi.org/legacy/ dist/*