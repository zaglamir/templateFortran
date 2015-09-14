#!/bin/tcsh

set random = 1 

while ( ${random} < 53 )
  echo xxxxxxxxxxxxxxxxx $random
  h2root output/$random/minbias0.hist
@ random++
end

rm output/all.root
hadd output/all.root output/*/minbias0.root
