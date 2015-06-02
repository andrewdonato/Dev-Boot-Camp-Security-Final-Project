#Fuzzing
Fuzz testing or fuzzing is a software testing technique, often automated or semi-automated, that involves providing invalid, unexpected, or random data to the inputs of a computer program.
A fuzzer is a program which injects automatically semi-random data into a program/stack and detect bugs. New generation fuzzers use genetic algorithms to link injected data and observed impact. Such tools are not public yet.
##Why Fuzz?
The purpose of fuzzing relies on the assumption that there are bugs within every program, which are waiting to be discovered. Therefore, a systematical approach should find them sooner or later.
Fuzzing can add another point of view to classical software testing techniques (hand code review, debugging) because of it's non-human approach. It doesn't replace them, but is a reasonable complement, thanks to the limited work needed to put the procedure in place.


####Citations:
[1]https://www.owasp.org/index.php/Fuzzing
[2]http://en.wikipedia.org/wiki/Fuzz_testing