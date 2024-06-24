#!/usr/bin/env bash

script=$(readlink -f "$0")

basedir=$(dirname "${script}")

while getopts "t:" o; do
    case "${o}" in
        t)
            timelimit=${OPTARG}
            ;;
    esac
done

if [ -z "$timelimit" ]; then
        echo 'Missing time limit, specify with -t'
        exit 1
fi


category="unsat"

docker run -it --name ${category} britikov/fm24 bash scripts/run_multiloop_unsat.sh -t ${timelimit}

mkdir -p ${basedir}/times
docker cp ${category}:/home/fm/times/${category}/. ${basedir}/times/${category}

docker rm -f ${category}
