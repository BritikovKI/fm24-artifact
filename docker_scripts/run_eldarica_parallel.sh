SOLVER="${ELDARICA_ROOT}/eld"
OPTIONS=""
BENCHMARK_DIR=$1
TIMEOUT=$2

#echo "Benchmark dir is ${BENCHMARK_DIR}"
#echo "Timeout is ${TIMEOUT}"

category=`basename ${BENCHMARK_DIR}`
OUTPUT_DIR="${OUTPUT_ROOT}/${category}/eldarica"
mkdir -p ${OUTPUT_DIR}

#echo "Output dir is ${OUTPUT_DIR}"
echo "Running Eldarica"

processes=()

for file in ${BENCHMARK_DIR}/*.smt2; do
    echo ${file}
    filename=`basename ${file}`
    timeout ${TIMEOUT} /usr/bin/time -f'user: %U wall: %e CPU: %PCPU' ${SCRIPTS_ROOT}/run_single_task.sh ${file} ${SOLVER} ${OPTIONS} > ${OUTPUT_DIR}/${filename}.out 2>&1
    processes+=($!)
        echo ${#processes[@]}
        while [[ ${#processes[@]} == 31 ]]
        do
          i=0
          while [[ ${i} < ${#processes[@]} ]]
          do
           id=${processes[i]}
           if kill -0 $id > /dev/null ; then
            i=$((i+1))
            continue
           else
            unset processes[i]
            processes=( "${processes[@]}" )
            echo ${processes[@]}
           fi
          done
         sleep 1
        done
done
