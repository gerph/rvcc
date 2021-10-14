all: dirs \
	 arch/c/arm \
	 arch/c/riscv \
	 c/codegen \
	 c/defs \
	 c/elf \
	 c/globals \
	 c/helpers \
	 c/lexer \
	 c/parser \
	 c/rvcc \
	 c/rvclib-inc \
	 c/source \

dirs:
	mkdir -p c h
	mkdir -p arch/c

arch/c/arm : ../src/arch/arm.c
	ln -sf ../../$? $@
arch/c/riscv : ../src/arch/riscv.c
	ln -sf ../../$? $@
c/codegen : ../src/codegen.c
	ln -sf ../$? $@
c/defs : ../src/defs.c
	ln -sf ../$? $@
c/elf : ../src/elf.c
	ln -sf ../$? $@
c/globals : ../src/globals.c
	ln -sf ../$? $@
c/helpers : ../src/helpers.c
	ln -sf ../$? $@
c/lexer : ../src/lexer.c
	ln -sf ../$? $@
c/parser : ../src/parser.c
	ln -sf ../$? $@
c/rvcc : ../src/rvcc.c
	ln -sf ../$? $@
c/rvclib-inc : ../src/rvclib.inc
	ln -sf ../$? $@
c/source : ../src/source.c
	ln -sf ../$? $@
