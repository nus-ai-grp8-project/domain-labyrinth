#!/bin/bash

# Loop from 0 to 249
N=5

for i in {0..249}
do
  # Create a string with the format instance_{i}.svg
  filename="${N}x${N}_instances_images/instance_${i}_${N}_by_${N}.svg"
  inst_filename="${N}x${N}_instances_pddl/instance_${i}_${N}_by_${N}.pddl"

  python3 generator.py --size=${N} --seed=${i} --num-rotations=2 --image-init=${filename} --pddl=${inst_filename}
  # Uncomment the next line if you want to create empty SVG files
  # touch $filename
done
