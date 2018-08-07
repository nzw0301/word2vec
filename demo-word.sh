make
if [ ! -e text8 ]; then
  wget http://mattmahoney.net/dc/text8.zip -O text8.gz
  gzip -d text8.gz -f
fi
time ./word2vec -train text8 -output vectors.bin -cbow 1 -size 100 -window 4 -negative 15 -hs 0 -sample 1e-4 -threads 20 -binary 1 -iter 4
# ./distance vectors.bin
