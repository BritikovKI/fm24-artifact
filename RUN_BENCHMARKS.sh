#!/bin/bash 

echo Running SAT instances
./docker_run_multiloop_sat_parallel.sh -t 600

echo Running UNSAT instances
./docker_run_multiloop_unsat_parallel.sh -t 600

./host_scripts/draw_plot.sh
