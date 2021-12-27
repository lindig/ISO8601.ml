all: build test

build:
	@dune build @install

doc:
	@dune build @doc

test:
	@dune runtest --force --no-buffer

clean:
	@dune clean

format:
	dune build --auto-promote @fmt
	opam lint
	opam lint --normalise ISO8601.opam > tmp.opam && mv tmp.opam ISO8601.opam

.PHONY: test build clean format
