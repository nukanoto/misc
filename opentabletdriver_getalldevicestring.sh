otd="otd" # Path to opentabletdriver binary

# VID and PID are USB device id; they can be seen by `lsusb`
vid=10429
pid=2309

for i in {0..1000}; do
  str="$(otd getstring 10429 2309 $i 2> /dev/null)"
  res=$?

  if [[ $res != 0 ]]; then
    echo "Error: ${i}"
  else
    echo -e "${i}\t\t${str}" | tee -a strings.txt
  fi
done
