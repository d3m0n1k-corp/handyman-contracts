.PHONY: all clean lint gen
all: clean lint gen

clean:
	@rm -rf gen

lint:
	@buf lint

gen:
	@buf generate
