
.PHONY: schemas
schemas:
	find schema -name generate.jsonnet -execdir jsonnet -m . {} \;
