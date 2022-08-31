#!/bin/bash

# 安装检测模型
wget https://paddleocr.bj.bcebos.com/PP-OCRv3/chinese/ch_PP-OCRv3_det_infer.tar -P /stacks-ocr/engine/inference/
tar xf /stacks-ocr/engine/inference/ch_PP-OCRv3_det_infer.tar -C /stacks-ocr/engine/inference/ 
rm -rf /stacks-ocr/engine/inference/ch_PP-OCRv3_det_infer.tar
# 安装识别模型
wget https://paddleocr.bj.bcebos.com/PP-OCRv3/chinese/ch_PP-OCRv3_rec_infer.tar -P /stacks-ocr/engine/inference/
tar xf /stacks-ocr/engine/inference/ch_PP-OCRv3_rec_infer.tar -C /stacks-ocr/engine/inference/ 
rm -rf /stacks-ocr/engine/inference/ch_PP-OCRv3_rec_infer.tar
# 安装方向分类器
wget https://paddleocr.bj.bcebos.com/dygraph_v2.0/ch/ch_ppocr_mobile_v2.0_cls_infer.tar -P /stacks-ocr/engine/inference/
tar xf /stacks-ocr/engine/inference/ch_ppocr_mobile_v2.0_cls_infer.tar -C /stacks-ocr/engine/inference/ 
rm -rf /stacks-ocr/engine/inference/ch_ppocr_mobile_v2.0_cls_infer.tar
# 安装版面分析模型
wget https://paddleocr.bj.bcebos.com/ppstructure/models/layout/picodet_lcnet_x1_0_fgd_layout_infer.tar -P /stacks-ocr/engine/inference/
tar xf /stacks-ocr/engine/inference/picodet_lcnet_x1_0_fgd_layout_infer.tar -C /stacks-ocr/engine/inference/ 
rm -rf /stacks-ocr/engine/inference/picodet_lcnet_x1_0_fgd_layout_infer.tar
# 安装表格结构识别模型
wget https://paddleocr.bj.bcebos.com/ppstructure/models/slanet/ch_ppstructure_mobile_v2.0_SLANet_infer.tar -P /stacks-ocr/engine/inference/
tar xf /stacks-ocr/engine/inference/ch_ppstructure_mobile_v2.0_SLANet_infer.tar -C /stacks-ocr/engine/inference/ 
rm -rf /stacks-ocr/engine/inference/ch_ppstructure_mobile_v2.0_SLANet_infer.tar
# 安装识别服务
hub install /stacks-ocr/engine/deploy/hubserving/ocr_system/ && hub install /stacks-ocr/engine/deploy/hubserving/structure_table/ && hub install /stacks-ocr/engine/deploy/hubserving/structure_system/ && hub install /stacks-ocr/engine/deploy/hubserving/structure_layout/