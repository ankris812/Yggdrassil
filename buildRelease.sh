git pull
./fbt updater_package plugin_dist
DATE_VAR=`date +%m%d`
VER_VAR=`cat scripts/version.py | awk '/VERSION/{ gsub(/[",]/,"",$2); print $2}' | tail -1`
tar czpf "$VER_VAR-$DATE_VAR-Korai.tgz" -C dist/f7-C f7-update-Korai
