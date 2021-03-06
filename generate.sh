#!/bin/bash
 

# declare -a attack=("autoattack" "apgd" "boundaryattack" "brendelbethge" "cw" "deepfool" "elasticnet" "fgm" "hopskipjump" "bim" "pgd" "pixelattack" "thresholdattack" "jsma" "spatialtransformation" "squareattack" "universalperturbation" "wasserstein" "zoo")

# declare -a attack=("boundaryattack" "brendelbethge" "cw")


# declare -a attack=("autoattack" "autopgd" "squareattack")

# declare -a attack=("bim" "cw")

# declare -a attack=( "cw" "bim" "jsma" "elasticnet" "universalperturbation")

# declare -a attack=("jsma" "deepfool" "newtonfool" "spatialtransformation")

declare -a attack=("pixelattack" "elasticnet" "universalperturbation")


# Iterate the string array using for loop
for a in ${attack[@]}; do
    python generate_adv_examples.py --attack $a
done