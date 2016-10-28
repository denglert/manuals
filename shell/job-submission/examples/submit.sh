#!/bin/sh
bsub -q test -J test3 ./task.sh
bjobs
