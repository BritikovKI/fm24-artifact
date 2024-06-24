# FM24 artifact

# Introduction

This README is related to the [artifact](https://github.com/BritikovKI/fm24-artifact) for the  paper ["Reachability Analysis for Multiloop Programs Using Transition Power Abstraction"](https://drive.google.com/file/d/1mlnu4OxmZRkdqM7dKAVVWTFoJ1M9L89J/view?usp=sharing) accepted to the `FM24` conference.

This paper describes a new algorithm developed for the [Golem](https://github.com/usi-verification-and-security/golem) CHC Solver, which targets benchmarks containing multiple loops inside of them. It is a comand line CHC solver which takes files in `SMT2-LIB` format defined in `CHC-COMP`.
`Golem` determins safety of the system, returning `sat` if system is safe and `unsat` otherwise.

Execution options can be called using `--help`.

Algorithm from the paper is natively included into `Golem`. To run it with the described algorithm please use the following set of options:
``golem --logic <QF_LIA|QF_LRA> --engine split-tpa <your file>``

## Note for artifact evaluation

Scripts execution may take significant time(up to 12-14 hours).

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
* `RUN_BENCHMARKS.sh`: The script to execute the full experimentation suite to both produce the experimental results from the execution and build plots from the results afterwards.
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
