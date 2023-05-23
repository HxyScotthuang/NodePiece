#!/bin/bash


sbatch $DATA/NodePiece/run.sh -loss nssal -margin 25 -epochs 1 --batch-size 1 -lr 0.0001 -data hetionet --ind_disease asthma -sample_rels 12 -negs 32 -gnn False -rp True
sbatch $DATA/NodePiece/run.sh -loss nssal -margin 25 -epochs 1 --batch-size 1 -lr 0.0001 -data hetionet --ind_disease hypertension -sample_rels 12 -negs 32 -gnn False -rp True
sbatch $DATA/NodePiece/run.sh -loss nssal -margin 25 -epochs 1 --batch-size 1 -lr 0.0001 -data hetionet --ind_disease hematologic-cancer -sample_rels 12 -negs 32 -gnn False -rp True
sbatch $DATA/NodePiece/run.sh -loss nssal -margin 25 -epochs 1 --batch-size 1 -lr 0.0001 -data hetionet --ind_disease breast-cancer -sample_rels 12 -negs 32 -gnn False -rp True
sbatch $DATA/NodePiece/run.sh -loss nssal -margin 25 -epochs 1 --batch-size 1 -lr 0.0001 -data hetionet --ind_disease coronary-artery-disease -sample_rels 12 -negs 32 -gnn False -rp True
sbatch $DATA/NodePiece/run.sh -loss nssal -margin 25 -epochs 1 --batch-size 1 -lr 0.0001 -data hetionet --ind_disease epilepsy -sample_rels 12 -negs 32 -gnn False -rp True