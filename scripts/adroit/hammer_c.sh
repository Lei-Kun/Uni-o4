


for seed in 0 1 2 3 4
do
    for rollout_step in 20 50 100
    do 
    for alpha_bc in 0.1 0.0
    do
    for eval_step in 50 100
    do
        python main.py --env 'hammer-cloned-v1' \
        --seed $seed \
        --path logs \
        --clip_ratio 0.25 \
        --is_iql True \
        --is_clip_action True \
        --alpha_bc $alpha_bc \
        --pi_activation_f 'tanh' \
        --is_state_norm True \
        --bppo_lr 1e-5 \
        --bppo_steps 10000 \
        --percentage 1.0 \
        --rollout_step $rollout_step \
        --eval_step $eval_step \
        --gpu 2
    done
    done
    done
done

