#!/bin/bash
#SBATCH --job-name=ipc2018-benchmark-organic-synthesis-opt18-strips-p20  # job name (shows up in the queue)
#SBATCH --time=00:30:00 # Walltime (HH:MM:SS)
#SBATCH --mem=8192MB     # Memory in MB
#SBATCH --open-mode=append
#SBATCH --output=ipc-2018-output.log
#SBATCH --error=ipc-2018-error.log
/nesi/project/uoa03015/ipc/team32/fast-downward.py         --build=release64         --plan-file "sas_plan"         "/nesi/project/uoa03015/ipc/downward-benchmarks/organic-synthesis-opt18-strips/domain-p20.pddl"         /nesi/project/uoa03015/ipc/downward-benchmarks/organic-synthesis-opt18-strips/p20.pddl         --search "astar(cpdbs_symbolic(genetic_ss(use_ucb=true,num_episodes=10000000,num_collections=1,pdb_factory=symbolic,genetic_time_limit=900,time_limit=1.0,create_perimeter=true,use_first_goal_vars=true,use_norm_dist=true)))"
echo "Finishing fast downward run for /nesi/project/uoa03015/ipc/downward-benchmarks/organic-synthesis-opt18-strips/p20.pddl, exit code: 0"
