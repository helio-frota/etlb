curl -w "@curl-format.txt" -o /dev/null -s "http://localhost:8888" | awk '
  /speed_download:/ {
    speed_kbps = $2 / 1024
    printf "speed_download: %.2f KB/s\n", speed_kbps
  }
  !/speed_download:/ {
    print
  }
'

