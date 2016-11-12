#!/bin/bash
#seq command -> external command needed to be avoided
#seq (start_range increemental_step end_range)
for i in $(seq 1 1 20)
  do
    echo "Welcome $i times"
  done
