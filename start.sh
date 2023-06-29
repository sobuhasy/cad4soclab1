#!/bin/csh -f

# This loads the module for ModelSim and then starts it.
# Running in a subshell suppresses messages like [PID] or
# Done. And all output is redirected to /dev/null. The
# option novopt disables optimisation, which is necessary
# for the simulation to work.
(module load modelsim/10.7c; vsim -vopt cad4soc.mpf &) >& /dev/null
