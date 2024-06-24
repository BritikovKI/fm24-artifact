#!/bin/bash 

script=$(readlink -f "$0")

basedir=$(dirname "${script}")

mkdir -p ${basedir}/../cumplots
mkdir -p ${basedir}/../cumplots/sat
mkdir -p ${basedir}/../cumplots/unsat

echo Producing cumulative evaluation data

echo Parsing SAT results
python3 ${basedir}/../host_scripts/dots.py ${basedir}/../times/sat/golem_split-tpa.csv sat > ${basedir}/../cumplots/sat/golem_split-tpa.res
python3 ${basedir}/../host_scripts/dots.py ${basedir}/../times/sat/golem_split-tpa_noDAG.csv sat > ${basedir}/../cumplots/sat/golem_split-tpa_noDAG.res
python3 ${basedir}/../host_scripts/dots.py ${basedir}/../times/sat/golem_spacer.csv sat > ${basedir}/../cumplots/sat/golem_spacer.res
python3 ${basedir}/../host_scripts/dots.py ${basedir}/../times/sat/eldarica.csv sat > ${basedir}/../cumplots/sat/eldarica.res
python3 ${basedir}/../host_scripts/dots.py ${basedir}/../times/sat/z3_spacer.csv sat > ${basedir}/../cumplots/sat/z3_spacer.res

echo Parsing UNSAT results
python3 ${basedir}/../host_scripts/dots.py ${basedir}/../times/unsat/golem_split-tpa.csv unsat > ${basedir}/../cumplots/unsat/golem_split-tpa.res
python3 ${basedir}/../host_scripts/dots.py ${basedir}/../times/unsat/golem_split-tpa_noDAG.csv unsat > ${basedir}/../cumplots/unsat/golem_split-tpa_noDAG.res
python3 ${basedir}/../host_scripts/dots.py ${basedir}/../times/unsat/golem_spacer.csv unsat > ${basedir}/../cumplots/unsat/golem_spacer.res
python3 ${basedir}/../host_scripts/dots.py ${basedir}/../times/unsat/eldarica.csv unsat > ${basedir}/../cumplots/unsat/eldarica.res
python3 ${basedir}/../host_scripts/dots.py ${basedir}/../times/unsat/z3_spacer.csv unsat > ${basedir}/../cumplots/unsat/z3_spacer.res

echo Building SAT plot
gnuplot ${basedir}/../host_scripts/sat.p

echo Building UNSAT plot
gnuplot ${basedir}/../host_scripts/unsat.p
