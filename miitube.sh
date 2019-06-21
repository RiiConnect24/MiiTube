cd /home/larsenv/MiiTube/

function download {
  for i in "${countries[@]}"
  do
    wget --no-check-certificate -O /home/larsenv/MiiTube/$(date +%Y-%m-%d-%H-%M)-$i.dat https://npdl.cdn.nintendowifi.net/p01/nsa/$key/MiiDL/$i/MiiTube.dat
  done
}

countries=("US")
key="t7svvLkl31nkcVv9"
download

countries=("DE" "FR" "GB")
key="n1cddgQeTxunOG2K"
download

countries=("JP")
key="rFgmDJuaHQO3TQFc"
download

fdupes -r -f . | grep -v '^$' | xargs rm -v
