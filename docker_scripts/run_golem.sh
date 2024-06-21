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

for file in ${BENCHMARK_DIR}/*.smt2; do
    echo ${file}
    filename=`basename ${file}`
    timeout ${TIMEOUT} /usr/bin/time -f'user: %U wall: %e CPU: %PCPU' ${SCRIPTS_ROOT}/run_single_task.sh ${file} ${SOLVER} "-e ${engine} ${@}" > ${OUTPUT_DIR}/${filename}.out 2>&1
done

