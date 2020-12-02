#!/bin/bash
for file in *.hdf;
do
  mask_sds -of="masked/masked_${file}.hdf" -sds=FireMask -fill=-1 -mask="$file,QA,0-1>00" $file
done
