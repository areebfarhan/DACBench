import sys
import yaml
import os
from gym import wrappers

sys.path.append(os.path.dirname(__file__))
# import shutil
# from pprint import pprint


def read_config(config_yml_fn: str = "output/config.yml"):
    with open(config_yml_fn, "r") as f:
        params = yaml.safe_load(f)
    train_env_params = eval_env_params = None
    if "train_env" in params:
        train_env_params = params["train_env"]
    if "eval_env" in params:
        eval_env_params = params["eval_env"]
    return (
        params["experiment"],
        params["bench"],
        params["agent"],
        train_env_params,
        eval_env_params,
    )


def make_env(bench_params, env_config=None, test_env=False):
    """
    env_config will override bench_params
    """
    bench_class = globals()[bench_params["name"] + "Benchmark"]

    params = bench_params.copy()
    del params["name"]
    if env_config:
        for name, val in env_config.items():
            params[name] = val

    # pprint(params)
    bench = bench_class(config=params)
    env = bench.get_environment(test_env)
    env = wrappers.FlattenObservation(env)
    return env
