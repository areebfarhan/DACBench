import unittest
from typing import Dict, List

import numpy as np
from dacbench import AbstractEnv
from dacbench.abstract_benchmark import objdict
from dacbench.benchmarks import GeometricBenchmark
from dacbench.envs import GeometricEnv


DEFAULTS_STATIC = objdict(
    {
        "action_space_class": "Discrete",
        "action_space_args": [],
        "observation_space_class": "Box",
        "observation_space_type": np.float32,
        "observation_space_args": [],
        "reward_range": (0, 1),
        "cutoff": 10,
        "action_values": [],
        "action_value_default": 4,
        "action_values_variable": False,  # if True action value mapping will be used
        "action_interval_mapping": {},  # maps actions to equally sized intervalls in [-1, 1]
        "max_function_value": 10000,  # clip function value if it is higher than this number
        "instance_set_path": "../instance_sets/geometric/geometric_unit_test.csv",
    }
)


class TestSigmoidEnv(unittest.TestCase):
    def make_env(self, config: Dict):
        geo_bench = GeometricBenchmark()
        geo_bench.read_instance_set()
        geo_bench.set_action_values()

        config["instance_set"] = geo_bench.config.instance_set
        config["action_values"] = geo_bench.config.action_values
        config["action_space_args"] = geo_bench.config.action_space_args
        config["observation_space_args"] = geo_bench.config.observation_space_args

        env = GeometricEnv(config)
        return env

    def test_setup(self):
        env = self.make_env(DEFAULTS_STATIC)
        self.assertTrue(issubclass(type(env), AbstractEnv))
        self.assertFalse(env.np_random is None)
        self.assertTrue(env.max_function_value == 10000)
        self.assertTrue(env.n_steps == 10)
        self.assertTrue(env.n_actions == len(env["action_vals"]))
        self.assertTrue(type(env.action_interval_mapping) == dict)

    def test_reset(self):
        env = self.make_env(DEFAULTS_STATIC)
        state = env.reset()
        self.assertTrue(state[0] == DEFAULTS_STATIC["cutoff"])
        self.assertTrue(env._prev_state == None)
        self.assertTrue("trajectory" in env)
        self.assertTrue("derivative" in env)

    def test_step(self):
        env = self.make_env(DEFAULTS_STATIC)
        env.reset()
        state, reward, done, meta = env.step(1)
        self.assertTrue(reward >= env.reward_range[0])
        self.assertTrue(reward <= env.reward_range[1])
        self.assertTrue(state[0] == 9)
        self.assertTrue(type(state[1]) == list)
        self.assertTrue(len(state[2]) == env.n_actions)
        self.assertTrue(len(state) == 10)
        self.assertFalse(done)
        self.assertTrue(len(meta.keys()) == 0)

    def test_close(self):
        env = self.make_env()
        self.assertTrue(env.close())

    def test_functions(self):
        env = self.make_env()
        self.assertTrue(env._sigmoid(1, 0, 0), 0.5)
        self.assertTrue(env._linear(5, 2, -3), 7)
        self.assertTrue(env._constant(5), 5)
        self.assertAlmostEqual(env._exponential(0.2, 0.5), 0.61, places=2)
        self.assertAlmostEqual(env._logarithmic(0.5, 0.75), -0.22, places=2)
        self.assertAlmostEqual(env._polynom(4, [1, 2, 3]), 57, places=2)
        self.assertAlmostEqual(env._polynom(3, [1, 2, 3, 2, 1]), 169, places=2)
        self.assertAlmostEqual(env._polynom(2, [1, 2, 3, 6, 7, 1, 1]), 273, places=2)

    def test_calculate_norm_value(self):
        env = self.make_env()
        old_value = env.instance_set[0][0][0]
        env._calculate_norm_value()
        self.assertFalse(env.instance_set[0][0][0] == old_value)

    def test_calculate_function_value(self):
        env = self.make_env()
        function_info = [2, "linear", 1, 2]
        self.assertTrue(env._calculate_function_value(2, function_info), 2)

    def test_calculate_derivative(self):
        env = self.make_env()
        self.assertTrue(env._calculate_derivative(), np.zeros(self.n_actions))
        env.c_step = 1
        env.trajectory = [np.zeros(7), np.ones(7)]
        self.assertTrue(env._calculate_derivative(), np.ones(self.n_actions))