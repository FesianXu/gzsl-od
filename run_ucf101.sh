NEPOCH=50
LAMBDA1=10
COSEM_WEIGHT=0.1
RECONS_WEIGHT=0.01
LR=0.0001
BATCH_SIZE=64 
SYN_NUM=1200 
RESSZ=8192 #4096 for c3d, i3d single streams
NDH=4096
NGH=4096
ATTSZ=300
NZ=300

OMP_NUM_THREADS=4 CUDA_VISIBLE_DEVICES=6 python clswgan_action.py --gzsl --nclass_all 101 --dataroot data_action/ --manualSeed 806 \
--cosem_weight $COSEM_WEIGHT --recons_weight $RECONS_WEIGHT --syn_num $SYN_NUM --preprocessing --cuda --batch_size $BATCH_SIZE --nz $NZ --attSize $ATTSZ --resSize $RESSZ --lr $LR \
--action_embedding i3d --class_embedding att --netG_name MLP_G --netD_name MLP_CRITIC --nepoch $NEPOCH --ngh $NGH --ndh $NDH --lambda1 $LAMBDA1 --critic_iter 5 --dataset ucf101 --split 1