conda activate yolo_tracking2

CUDA_VISIBLE_DEVICES=0 python examples/val.py --yolo-model /home/shanliang/workspace/code/yolov8/runs/USVTrack/YOLOv8n46/weights/best.pt --benchmark /home/shanliang/workspace/dataset/USVTrack/Tracking/ --split test --tracking-method bytetrack
CUDA_VISIBLE_DEVICES=0 python examples/val.py --yolo-model /home/shanliang/workspace/code/yolov8/runs/USVTrack/YOLOv8n46/weights/best.pt --benchmark /home/shanliang/workspace/dataset/USVTrack/Tracking/ --split test --tracking-method botsort
CUDA_VISIBLE_DEVICES=0 python examples/val.py --yolo-model /home/shanliang/workspace/code/yolov8/runs/USVTrack/YOLOv8n46/weights/best.pt --benchmark /home/shanliang/workspace/dataset/USVTrack/Tracking/ --split test --tracking-method strongsort
CUDA_VISIBLE_DEVICES=0 python examples/val.py --yolo-model /home/shanliang/workspace/code/yolov8/runs/USVTrack/YOLOv8n46/weights/best.pt --benchmark /home/shanliang/workspace/dataset/USVTrack/Tracking/ --split test --tracking-method ocsort
CUDA_VISIBLE_DEVICES=0 python examples/val.py --yolo-model /home/shanliang/workspace/code/yolov8/runs/USVTrack/YOLOv8n46/weights/best.pt --benchmark /home/shanliang/workspace/dataset/USVTrack/Tracking/ --split test --tracking-method deepocsort
CUDA_VISIBLE_DEVICES=0 python examples/val.py --yolo-model /home/shanliang/workspace/code/yolov8/runs/USVTrack/YOLOv8n46/weights/best.pt --benchmark /home/shanliang/workspace/dataset/USVTrack/Tracking/ --split test --tracking-method hybridsort
