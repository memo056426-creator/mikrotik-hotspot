# MikroTik Hotspot updater
# Repository: memo056426-creator/mikrotik-hotspot
# This updates only the custom portal files and keeps RouterOS default support files such as md5.js intact.

:local baseUrl "https://raw.githubusercontent.com/memo056426-creator/mikrotik-hotspot/main"

:log info "Hotspot update: login.html"
/tool fetch url=($baseUrl . "/login.html") mode=https dst-path="hotspot/login.html" keep-result=yes

:log info "Hotspot update: status.html"
/tool fetch url=($baseUrl . "/status.html") mode=https dst-path="hotspot/status.html" keep-result=yes

:log info "Hotspot update: logout.html"
/tool fetch url=($baseUrl . "/logout.html") mode=https dst-path="hotspot/logout.html" keep-result=yes

:log info "Hotspot update: error.html"
/tool fetch url=($baseUrl . "/error.html") mode=https dst-path="hotspot/error.html" keep-result=yes

:log info "Hotspot update: background image"
/tool fetch url="https://github.com/memo056426-creator/mikrotik-hotspot/raw/refs/heads/main/img/hotspot-bg.jpg" mode=https dst-path="hotspot/hotspot-bg.jpg" keep-result=yes

:log info "Hotspot update: style.css"
/tool fetch url=($baseUrl . "/style.css") mode=https dst-path="hotspot/style.css" keep-result=yes

:log info "Hotspot update: app.js"
/tool fetch url=($baseUrl . "/app.js") mode=https dst-path="hotspot/app.js" keep-result=yes

:log info "Hotspot update complete"
