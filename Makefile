include protoMakefile

check:	tests/reformat.72.and.45 par
	tests/reformat.72.and.45 ./par
