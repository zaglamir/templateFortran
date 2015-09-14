#!/bin/tcsh

set randomSeed = 101

while ( ${randomSeed} < 1001 )
    mkdir -p output/${randomSeed}
    rm output/${randomSeed}/gen${randomSeed}.csh
    sed s/random/${randomSeed}/ gen.csh > output/${randomSeed}/gen${randomSeed}.csh
    qsub -V -p -100 -cwd -o output/${randomSeed}/gen.log -e output/${randomSeed}/gen.err output/${randomSeed}/gen${randomSeed}.csh
  @ randomSeed++
end
