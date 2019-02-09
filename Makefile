
.PHONY: schemas
schemas:
	find schema -name generate.jsonnet -execdir jsonnet -m . {} \;

embed-schemas:
	go generate schema/generate.go
