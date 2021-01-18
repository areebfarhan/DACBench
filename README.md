# DACBench
DACBench is a benchmark library for Dynamic Algorithm Configuration.
Its focus is on reproducibility and comparability of different DAC methods as well as easy analysis of the optimization process.

If you use DACBench in you research or application, please cite us:

```bibtex
@Misc{dacbench,
    author    = {T. Eimer and A. Biedenkapp M. Reimer and S. Adriaensen and F. Hutter and M. Lindauer},
    title     = {DACBench: A Benchmark Library for Dynamic Algorithm Configuration},
    howpublished = {\url{https://github.com/automl/DACBench}},
    year = {2020}
}
```

## Installation
We recommend to install DACBench in a virtual environment.
Note that even if you choose to not use a virtual env, please make sure you run all experiments using python 3.6 as some benchmarks are not compatible with other python versions!
To install DACBench including the dependencies to run examples:
```
conda create -n dacbench python=3.6
conda activate dacbench
git clone https://github.com/automl/DACBench.git
cd DACBench
git submodule update --init --recursive
pip install -e .[example]
```
When using the Fast Downward Benchmark, you need to build it separately (we recommend cmake version 3.10.2):
```
./dacbench/envs/rl-plan/fast-downward/build.py
```

If want to work on DACBench as a developer you can use the `dev` extra option instead: 
```bash
pip install -e .[dev]
```

To install all extras (`dev` and `example`) run:
```bash
pip install -e .[dev,example]
```

## Using DACBench
After installing DACBench, you can start developing immediately.
For an introduction to the interface and structure of DACBench, see the
["Getting Started"](https://github.com/automl/DACBench/blob/main/Getting%20started.ipynb) jupyter notebook.
You can also take a look at our [examples](https://github.com/automl/DACBench/tree/main/examples) in the repository 
or our [documentation](https://dacbench.readthedocs.io).
