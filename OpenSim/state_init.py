import os
import opensim
import numpy as np
from osim.env.osim_rsi import L2RunEnvRSI

dir_path = os.path.dirname(os.path.realpath(__file__))
traj_path = dir_path + "\\" + "tracking_solution_fullStride.sto"

env = L2RunEnvRSI(visualize=True, traj_path=traj_path)
obs = env.reset()

for i in range(100):
    o, r, d, i = env.step(np.zeros(18))