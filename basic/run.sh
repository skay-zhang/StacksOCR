#!/bin/bash
hub serving start -m ocr_system==1.0.0 structure_table==1.0.0 structure_system==1.0.0 structure_layout==1.0.0 -p 20100 --use_multiprocess --workers 4