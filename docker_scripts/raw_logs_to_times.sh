#!/usr/bin/env bash

extract_script="${SCRIPTS_ROOT}/extract_times.sh"
log_dir="${ARTIFACT_ROOT}/raw_logs"
times_dir="${ARTIFACT_ROOT}/times"

category=$1
shift

timelimit=300

while getopts "t:" o; do
    case "${o}" in
        t)
            timelimit=${OPTARG}
            ;;
    esac
done

#echo "Timelimit set to ${timelimit}"

top_dir=${log_dir}/${category}

if [ ! -d ${top_dir} ]; then
    echo "Error, directory with raw logs does not exist"
    exit 1
fi
echo "Processing benchmark directory ${category}"
mkdir -p ${times_dir}/${category}
for tool_dir in ${top_dir}/*; do
    tool_name=`basename ${tool_dir}`
    echo "Processing tool ${tool_name}"
    bash ${extract_script} ${tool_dir} -t ${timelimit} >  ${times_dir}/${category}/${tool_name}.csv 
done
