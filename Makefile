.PHONY: help
help:
	@echo "Usage: make <target>"
	@echo
	@echo "Targets:"
	@echo "  help  -- show this help"
	@echo "  shell -- start a nix development shell"
	@echo "  sbt   -- start an sbt build shell"
	@echo "  run   -- build the Scala project"
	@echo "  test  -- test the Scala project"
	@echo "  clean -- clean the Scala project"

.PHONY: shell
shell:
	nix-shell

.PHONY: sbt
sbt:
	sbt

.PHONY: run
run:
	sbt run

.PHONY: test
test:
	sbt test

.PHONY: clean
clean:
	sbt clean
