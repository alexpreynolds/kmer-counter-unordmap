# kmer-counter-unordmap

The `kfs` program reads in multiline FASTA records, counts canonical kmers using the STL `unordered_map`, and measures time taken to read in and process records.

## Usage

### Compilation

```
$ make kfs
```

### Performance

Specify variables `K` (integer) and `FASTA` (path to FASTA sequences).

```
$ /usr/bin/time -l ./kfs -k ${K} -i ${FASTA}
...
```
