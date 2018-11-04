#all: generate_fasta test_data

all: kfs

generate_fasta:
	g++ -Wall -Weverything $@.cpp -o $@

test.fa: generate_fasta
	$^ > $@

kfs:
	g++ -std=c++14 -Wall $@.cpp -o $@

msl:
	g++ -std=c++11 -stdlib=libc++ -Wno-c++98-compat make_struct_lookup.cpp -o $@

clean:
	rm -f *~
	rm -f generate_fasta
	rm -f kfs
	rm -f msl
	rm -f test.fa