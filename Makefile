.PHONY: product-level-test

product-level-test:
	GO111MODULE=off go test ./tests
