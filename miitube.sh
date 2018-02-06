cd /home/larsenv/MiiTube/

function download {
  for i in "${countries[@]}"
  do
    wget --no-check-certificate -O /home/larsenv/MiiTube/$(date +%Y-%m-%d-%H)-$i.dat https://npdl.cdn.nintendowifi.net/p01/nsa/$key/MiiDL/$i/MiiTube.dat
  done
}

countries=("AE" "AG" "AI" "AN" "AR" "AW" "BB" "BM" "BO" "BR" "BS" "BZ" "CA" "CL" "CO" "CR" "DM" "DO" "EC" "GD" "GF" "GP" "GT" "GY" "HN" "HT" "JM" "KN" "KY" "LC" "MQ" "MS" "MX" "MY" "NI" "PA" "PE" "PY" "SA" "SG" "SR" "SV" "TC" "TT" "US" "UY" "VC" "VE" "VG" "VI")
key="t7svvLkl31nkcVv9"
download

countries=("AD" "AL" "AT" "AU" "AZ" "BA" "BE" "BG" "BW" "CH" "CY" "CZ" "DE" "DJ" "DK" "EE" "ER" "ES" "FI" "FR" "GB" "GG" "GI" "GR" "HR" "HU" "IE" "IM" "IN" "IS" "IT" "JE" "LI" "LS" "LT" "LU" "LV" "MC" "ME" "MK" "ML" "MR" "MT" "MZ" "NA" "NE" "NL" "NO" "NZ" "PL" "PT" "RO" "RS" "RU" "SD" "SE" "SI" "SK" "SM" "SO" "SZ" "TD" "TR" "VA" "ZA" "ZM" "ZW")
key="n1cddgQeTxunOG2K"
download

countries=("JP")
key="rFgmDJuaHQO3TQFc"
download

fdupes -r -f . | grep -v '^$' | xargs rm -v
