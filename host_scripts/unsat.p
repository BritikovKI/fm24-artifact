set terminal png size 1000,600
set output 'unsafe.png'
set title 'UNSAFE comparison'
set xrange [0:600]
set yrange [0:150]
set key outside
set key right cent
set key font ',14'
set xlabel 'Time' font ',14'
set ylabel 'Solved instances' font ',14'
plot 'cumplots/unsat/z3_spacer.res' using 1:2 with lp lw 2 title 'Z3', 'cumplots/unsat/eldarica.res' using 1:2 with lp lw 2 title 'Eldarica', 'cumplots/unsat/golem_spacer.res' using 1:2 with lp lw 2 title 'Golem (Spacer)', 'cumplots/unsat/golem_split-tpa_noDAG.res' using 1:2 with lp lw 2 title 'Golem (TPA)', 'cumplots/unsat/golem_split-tpa.res' using 1:2 with lp lw 2 lc '#900D09' title 'Golem (Multiloop TPA)'
