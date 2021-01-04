class DynamicRandomAgent(AbstractDACBenchAgent):
    def __init__(self, env, switching_interval):
        self.sample_action = env.action_space.sample
        self.switching_interval = switching_interval
        self.count = 0
        self.action = self.sample_action()

    def act(self, state, reward):
        self.count += 1
        if self.count >= self.switching_interval:
            self.action = self.sample_action()
            self.count = 0
        return self.action

    def train(self, next_state, reward):
        pass

    def end_episode(self, state, reward):
        pass