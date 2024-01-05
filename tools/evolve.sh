conda activate yolo_tracking
weight_root=/home/iat/workspace/code/python/yolov8/WaterScenes-Tracking
dataset_root=/data/tracking/MOTCUSTOM/tracking/

#python examples-waterscenes/track.py --source /data/tracking/YOLO_timestamp/20/images --tracking-method deepocsort --yolo-model /home/iat/workspace/code/python/yolov8/WaterScenes-Tracking/YOLOv8n4/weights/best.pt --save-mot



#for((i=8;i<=87;i++));
#do
#echo $i;
#python examples/track.py --name $i --source /data/tracking/MOTCUSTOM/images/$i/ --tracking-method deepocsort --yolo-model /home/iat/workspace/code/python/yolov8/WaterScenes-Tracking/YOLOv8n10/weights/best.pt --save-mot --save
#done

#python examples-waterscenes/val.py --yolo-model yolov8n.pt --reid-model osnetx1_0_dukemtcereid.pt --tracking-method deepocsort --benchmark MOT16

# python examples/val.py --yolo-model $weight_root/YOLOv8n15/weights/best.pt --benchmark $dataset_root --split test --tracking-method deepocsort
# python examples-waterscenes/track.py --yolo-model /home/iat/workspace/code/python/yolov8/WaterScenes-Tracking/YOLOv8n10/weights/best.pt --source /data/tracking/MOTCUSTOM/tracking/test/27/img1 --tracking-method deepocsort

python examples/evolve.py --yolo-model $weight_root/YOLOv8n15/weights/best.pt  --benchmark $dataset_root --split test --tracking-method deepocsort --objective HOTA --n-trials 100  # tune strongsort for MOT17
