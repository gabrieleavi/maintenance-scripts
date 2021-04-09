#!/bin/bash

# Author : Gabriele Avi
# Date: 26/03/2021
# Version : 1.0
# Script starts now

echo "Reportando gli errori"
journalctl -p 3 -xb
systemctl --failed
echo "ecco tutti gli errori!"