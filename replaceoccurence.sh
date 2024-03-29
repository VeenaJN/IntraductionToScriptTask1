
#!/bin/bash


input_file="/home/hari143/veena/occuence.txt"



awk 'NR >= 5 && /welcome/ { gsub(/give/, "learning"); print }' "$input_file"

