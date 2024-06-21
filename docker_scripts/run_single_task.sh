#!/usr/bin/env bash

#first argument should be benchmark file
input_file=$1
shift

# the rest is the solver command, together with optional arguments
solver_cmd="$@"

# finally, just execute the command
${solver_cmd} ${input_file}
