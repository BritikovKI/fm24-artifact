SOLVER="${GOLEM_ROOT}/golem"

BENCHMARK_DIR=$1
TIMEOUT=$2
engine=$3

shift; shift; shift;

#echo "Benchmark dir is ${BENCHMARK_DIR}"
#echo "Timeout is ${TIMEOUT}"

category=`basename ${BENCHMARK_DIR}`
OUTPUT_DIR="${OUTPUT_ROOT}/${category}/golem_${engine}"
mkdir -p ${OUTPUT_DIR}

#echo "Output dir is ${OUTPUT_DIR}"
echo "Running ${engine} engine of Golem"

processes=()

for file in ${BENCHMARK_DIR}/*.smt2; do
    echo ${file}
    filename=`basename ${file}`
    timeout ${TIMEOUT} /usr/bin/time -f'user: %U wall: %e CPU: %PCPU' ${SCRIPTS_ROOT}/run_single_task.sh ${file} ${SOLVER} "-e ${engine} ${@}" > ${OUTPUT_DIR}/${filename}.out 2>&1 &
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

