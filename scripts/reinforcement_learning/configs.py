# initialization training params
BATCH_SIZE = 100
LR = 0.01
MOMENTUM=0.9
STEP_SIZE = 150

N_EPISODES = 10
C          = 1
M          = 10
GAMMA      = 0.8
VMAX       = 1.0 #??
DT         = 1.0 # for CADRL
EPS_GREEDY = 0.2 # probability with which a random action is chosen
# epsilon greedy should decay from 0.5 to 0.1 linearly
NUM_RL_EPOCHS = 20
RL_BATCH_FRAC = 0.2


import os
USER = os.getlogin() #
print(USER)
# USER = 'Brian'
# USER = 'torstein'
# USER = 'Valentin'
# USER = 'Bradley'
if USER == 'torstein':
    FOLDER = "/home/torstein/Stanford/aa277/aa277_project/data"
elif USER == 'bdobkowski':
    FOLDER  = "/home/bdobkowski/Stanford/AA277/aa277_project/data"
else:
    raise Exception('Need to list a folder in on your local machine to store data')