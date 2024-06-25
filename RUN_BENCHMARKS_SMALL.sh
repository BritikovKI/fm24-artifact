#!/bin/bash 

echo Running SAT instances
./docker_run_multiloop_sat_parallel.sh -t 20

echo Running UNSAT instances
./docker_run_multiloop_unsat_parallel.sh -t 20

echo Drawing plot
./host_scripts/draw_plot_small.sh
