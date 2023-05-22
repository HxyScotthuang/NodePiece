#!/bin/bash

# FB15k237

sbatch $DATA/NodePiece/run.sh -loss nssal -margin 25 -epochs 2503 -lr 0.0001 -data fb15k237 -sample_rels 12 -negs 32 -gnn True -rp False -gnn_att True -gnn_layers 3
sbatch $DATA/NodePiece/run.sh -loss nssal -margin 15 -epochs 2000 -lr 0.0001 -data fb15k237 -sample_rels 12 -negs 32 -gnn True -rp False -gnn_att True -gnn_layers 3 -pna False -residual False -jk False -ind_v 2 -eval_bs 2048
sbatch $DATA/NodePiece/run.sh -loss nssal -margin 15 -epochs 2000 -lr 0.0001 -data fb15k237 -sample_rels 12 -negs 32 -gnn True -rp False -gnn_att True -gnn_layers 3 -pna False -residual False -jk False -ind_v 3 -eval_bs 2048
sbatch $DATA/NodePiece/run.sh -loss nssal -margin 25 -epochs 2000 -lr 0.0001 -data fb15k237 -sample_rels 12 -negs 32 -gnn True -rp False -gnn_att True -gnn_layers 3 -pna False -residual False -jk False -ind_v 4 -eval_bs 2048

# WN18RR
sbatch $DATA/NodePiece/run.sh -loss nssal -margin 15 -epochs 589 -lr 0.0001 -data wn18rr -sample_rels 4 -negs 32 -gnn True -rp False -gnn_att True -gnn_layers 3 -pna True -residual True
sbatch $DATA/NodePiece/run.sh -loss nssal -margin 15 -epochs 2000 -lr 0.0001 -data wn18rr -sample_rels 4 -negs 32 -gnn True -rp False -gnn_att True -gnn_layers 6 -pna False -residual True -jk True -ind_v 2
sbatch $DATA/NodePiece/run.sh -loss nssal -margin 5 -epochs 211 -lr 0.0001 -data wn18rr -sample_rels 4 -negs 32 -gnn True -rp False -gnn_att True -gnn_layers 6 -pna False -residual True -jk True -ind_v 3 -eval_bs 2048
sbatch $DATA/NodePiece/run.sh -loss nssal -margin 20 -epochs 2000 -lr 0.0001 -data wn18rr -sample_rels 3 -negs 32 -gnn True -rp False -gnn_att True -gnn_layers 10 -pna False -residual True -jk True -ind_v 4 -eval_bs 2048