# FM24 artifact

# Introduction

This README is related to the [artifact](https://github.com/BritikovKI/fm24-artifact) for the  paper ["Reachability Analysis for Multiloop Programs Using Transition Power Abstraction"](https://drive.google.com/file/d/1mlnu4OxmZRkdqM7dKAVVWTFoJ1M9L89J/view?usp=sharing) accepted to the `FM24` conference.

This paper describes a new algorithm developed for the [Golem](https://github.com/usi-verification-and-security/golem) CHC Solver, which targets benchmarks containing multiple loops inside of them. It is a comand line CHC solver which takes files in `SMT2-LIB` format defined in `CHC-COMP`.
`Golem` determins safety of the system, returning `sat` if system is safe and `unsat` otherwise.

Execution options can be called using `--help`.

Algorithm from the paper is natively included into `Golem`. To run it with the described algorithm please use the following set of options:
``golem --logic <QF_LIA|QF_LRA> --engine split-tpa <your file>``

## Note for artifact evaluation

Scripts execution may take significant time(up to few days).

## Set Up

Artifact is presented as a `docker` image and a set of `bash` scripts which are supposed to be run on the local machine. To repeat the experimental results only `docker` is required. For the plot production additionally `python3`, `docker` and `gnuplot` are required to be installed locally.

**WARNING:** Docker is known to have issues with the new Apple M1 and M2 chips; the artifact will is not guaranteed to work on machines with these chips, proceed with caution. We have tested the artifact on MacOS with Intel chip and Ubuntu with AMD chips where we did not encounter issues.


To get the docker image call:
```bash
$ docker image pull usiverify/fm24:latest
```

Alternatively it can be built from the root directory of the repo:
```
$ docker build . -t usiverify/fm24
```

## Machine specification
The original experiments were run on a powerful machine with AMD EPYC 7452 32-core processor and 8x32 GiB of memory. 

# Artifact structure
This repository contains the following:

* `Dockerfile` for building the `docker` image.
* `RUN_BENCHMARKS.sh`: The script to execute the full experimentation suite with 600 seconds timeout per instance to both produce the experimental results from the execution and build plots from the results afterwards.
* `RUN_BENCHMARKS_SMALL.sh`: The script to execute the full experimentation suite with smaller timeouts(10 seconds).
* `docker_scripts`: A set of scripts that are copied to the `docker` image and used to run the experiments in the `docker` container.
* `bench`: Collections of benchmarks that are also copied to the `docker` image.
* `host_scripts`: Collections of scripts that are used to present the results obtained from the experiments; these are intended to run on the host.
* `docker_run_*`: A set of scripts for executing the experiments; these are executed on the host machine. They start a new docker container, run the corresponding experiment and copy the obtained results back to the host.
* `original_logs`: Results collected from our original experiments. Note that these use *space* as the delimiter while the scripts in this artifact use *comma* as the delimiter. 

## Docker image structure
Beside the benchmarks and helper scripts copied from this repository, the docker image also contains all the tools used in the experiments. We used the binaries released in the corresponding GitHub repositories and these are already prepared in the docker image.
The working directory of the docker image is `/home/fm`.
It contains the following subdirectories:

* `bench`: collections of benchmarks used in the experiments

* `scripts`: collection of helper scripts for running experiments and collecting the results

* `raw_logs`,`times`: initially empty directories for storing results of the experiments

* `eldarica`: [`Eldarica`](https://github.com/uuverifiers/eldarica) solver (v2.0.9)

* `golem`: [`Golem`](https://github.com/usi-verification-and-security/golem) (v0.5.0)

* `z3-4.13.0-x64-glibc-2.31`: [`Z3`](https://github.com/Z3Prover/z3) solver (v4.13.0) which contains `Spacer` as one of its engines for solving CHCs.

## Benchmark sets

In the experiments we used 2 benchmark sets. They are available as GitHub [repository](https://github.com/BritikovKI/fv-benchmarks-2024), but we also include them in this artifact.

* `SAT`: mix of SAT crafted benchmarks and benchmarks from loops-crafted-1 in [SV-COMP](https://gitlab.com/sosy-lab/benchmarking/sv-benchmarks/-/tree/main/c/loops-crafted-1?ref_type=heads)

* `UNSAT`: mix of UNSAT crafted benchmarks and benchmarks from loops-crafted-1 in [SV-COMP](https://gitlab.com/sosy-lab/benchmarking/sv-benchmarks/-/tree/main/c/loops-crafted-1?ref_type=heads)


Additionaly there are `trivial` benchmarks for the smoke test.

# Tools 

In these experiments we compare `Golem 0.5.0` against `Eldarica 2.0.9` and `Spacer` engine in `Z3 4.13.0`.
The artifact uses binaries officially published on GitHub.

### Note on parallelism
Scripts are prepared to run in a parallel way by default, running `8` solver instances by default(which will take `8` processor cores). If you have less or more processors, you can change the number by alternating every `run_*.sh` script in `docker_scripts` file, changing the number of processes run simultanuously, by changing `8` to the number of processes needed .

While `Z3` and `Golem` run in a single thread, `Eldarica` in default mode uses more than one thread. We did not restrict this in our experiments and we collect wall time, not CPU time.

### Running benchmarks in one process

To run benchmarks with just a single process, you can execute `docker_run_multiloop_sat.sh -t <timeout>` and `docker_run_multiloop_unsat.sh -t <timeout>`, which will execute benchmarks consecutively.

**NOTE** This might take very significant amount of time, as huge amount of benchmarks can't be handled by some engines, so they will execute until timeout, which for 10 min timeout for 200 benchmarks means around 4 days for a single engine run (and there are 5 different engines in the benchmark).

# Reproducing the Experiments of the Paper

We assume the `docker` image has been successfully obtained (pulled or built locally) according to the instructions above and that we are in the root directory of this artifact.

## Smoke tests
To test that everything is set up correctly, run the smoke-test script:

```
$ bash docker_run_smoke_test.sh
```

These starts the docker container and executes each solver on a single satisfiable and a single unsatisfiable benchmark. It should finish in a couple of seconds.
The expected output is

```
Running Z3 on trivial SAT benchmark
sat
Running Z3 on trivial UNSAT benchmark
unsat
Running Eldarica on trivial SAT benchmark
sat
Running Eldarica on trivial UNSAT benchmark
unsat
Running Golem on trivial SAT benchmark
sat
Running Golem on trivial UNSAT benchmark
unsat
```

## Paper benchmark execution
It is  better to start with smaller version of experiments, to check the correctness of the execution. To do it call:
```
$ bash RUN_BENCHMARKS_SMALL.sh
```
It will run experiments with just 10 seconds timeout and build plots for this small running time. If this script succeeds, then the full set can be tested. This run is estimated to finish in 1 hour with default configuration.



To run the whole benchmark set just call:
```
$ bash RUN_BENCHMARKS.sh
```

It will automatically execute all of the tests in a parallel manner (8 processes running in parallel by default, if you want to change the number, take a look at the `Note on parallelism` section). After the results are extracted from the container, it will produce plots, similar to ones in the paper, using `gnuplot` and `python3`.

If needed experiments can be executed in single-process manner, take a look at `Running benchmarks in one process` section.

### Memory requirements
`Golem` itself is quite modest with the memory consumption, a single task should not consume more than 2 gigabytes and is typically much lower.
On the other hand, `Eldarica` often consumes much more memory than `Golem` and might run into more memory-outs on systems with modest memory resources. 

### Presenting results

When the experiments finish, you should have 2 png images `sat.png` and `unsat.png` in the root directory. There should also be directory `times` which has the raw experimentation results and `cumplots` with the data based on which the plots were built.



# Algorithm outside of this artifact
Beside this artifact, `Golem` is also available on [GitHub](https://github.com/usi-verification-and-security/golem).
The GitHub repository contains README with additional information about the tool, including basic description of how to compile it from source. It additionally contains regular binary [releases](https://github.com/usi-verification-and-security/golem/releases).
After you obtain the binary, `Golem` can run on any SMT-LIB2 file defining a CHC satisfiability problem as mentioned in the introduction. Additional options are explained in the usage, obtained by running `golem --help`.

To run the algorithm, it is sufficient to call `Golem` with the `--engine split-tpa`, as split-TPA is now powered by the algorithm described in the paper.
