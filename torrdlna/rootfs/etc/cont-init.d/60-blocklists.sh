#!/usr/bin/with-contenv bash
# ==============================================================================
# Community Hass.io Add-ons: torrdlna
# Ensures necessary blocklists are downloaded
# ==============================================================================
# shellcheck disable=SC1091
source /usr/lib/hassio-addons/base.sh

# Download lists, unpack and filter, write to stdout
echo "Generating blocklist:"
touch /root/.config/transmission-daemon/blocklists/torrent_blocklist_url.txt
curl -s https://www.iblocklist.com/lists.php | sed -n "s/.*value='\(http[^']*\)'.*/'\1'/p" | xargs wget -O - | gunzip | egrep -v '^#' > /root/.config/transmission-daemon/blocklists/torrent_blocklist_url.txt