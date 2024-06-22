#!/usr/bin/env bash

timelimit=600

while getopts "t:" o; do
    case "${o}" in
        t)
            timelimit=${OPTARG}
            ;;
    esac
done

#echo "Timelimit set to ${timelimit}"

category="sat"

script_dir=${SCRIPTS_ROOT}
benchmark_dir=${BENCHMARKS_ROOT}/${category}

${script_dir}/run_z3_spacer_parallel.sh ${benchmark_dir} $timelimit
${script_dir}/run_golem_parallel.sh ${benchmark_dir} $timelimit spacer
${script_dir}/run_golem_parallel.sh ${benchmark_dir} $timelimit split-tpa
${script_dir}/run_golem_noDAG_parallel.sh ${benchmark_dir} $timelimit split-tpa
${script_dir}/run_eldarica_parallel.sh ${benchmark_dir} $timelimit

${script_dir}/raw_logs_to_times.sh ${category} -t $timelimit
