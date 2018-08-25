# !/bin/sh
whitelist=$(awk -F '=' '{if (! ($0 ~ /^;/) && $0 ~ /whitelist/) print $2}'  /usr/local/etc/opnblock/opnblock.conf);
blacklist=$(awk -F '=' '{if (! ($0 ~ /^;/) && $0 ~ /blacklist/) print $2}'  /usr/local/etc/opnblock/opnblock.conf);
rm -r /tmp/hosts.working
rm -r /var/unbound/opnblock.conf
touch /tmp/hosts.working
for url in $blacklist; do
echo "Downloading: " $url
    curl --silent $url >> "/tmp/hosts.working"
done
echo "Whitelist:" $whitelist
echo "Sorting..."
awk -v whitelist="$whitelist" '$1 ~ /^127\.|^0\./ && $2 !~ whitelist {gsub("\r",""); print tolower($2)}' /tmp/hosts.working | sort | uniq | \
awk '{printf "server:\n", $1; printf "local-data: \"%s A 0.0.0.0\"\n", $1}' > /var/unbound/opnblock.conf
rm -r '/tmp/hosts.working'
echo "Done."
