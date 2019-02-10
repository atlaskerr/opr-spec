
.PHONY: schemas
schemas:
	find schema -name generate.jsonnet -execdir jsonnet -m . {} \;

.PHONY: embed-schemas
embed-schemas:
	go generate schema/generate.go
