######
SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=true
REPLACE="
"
unzip -o "$ZIPFILE" 'banner' -d $MODPATH >&2
sleep 0.2
ui_print " "
ui_print " "
ui_print "*******************************"
ui_print "   ADVANCED CHANGE RESOLUTION  "
ui_print "*******************************"
ui_print "*******************************"
ui_print "           Kutu Moba           "
ui_print "*******************************"
ui_print " "
ui_print " "
sleep 2
ui_print ""
ui_print ""
ui_print "$(awk '{print}' "$MODPATH/banner")"
ui_print ""
sleep 0.5
ui_print "▒▒▒▒ 𝗗𝗲𝘃𝗶𝗰𝗲 𝗜𝗻𝗳𝗼 ▒▒▒▒ "
sleep 2
ui_print "- "
ui_print "   ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒"
ui_print "   ▒ "
ui_print "   ▒▒▒▒ CODE NAME        : $(getprop ro.product.board) "
sleep 0.2
ui_print "   ▒▒▒▒ VERSION GL       : $(getprop ro.opengles.version) "
sleep 0.2
ui_print "   ▒▒▒▒ SELINUX          : $(getenforce) "
sleep 0.2
ui_print "   ▒▒▒▒ KERNEL           : $(uname -r) "
sleep 0.2
ui_print "   ▒▒▒▒ BUILD DATE       : $(getprop ro.system.build.date) "
slepp 0.2
ui_print "   ▒▒▒▒ MANUFACTURER     : $(getprop ro.product.manufacturer) "
sleep 0.2
ui_print "   ▒▒▒▒ ANDROID VERSION  : $(getprop ro.system.build.version.release) $(uname -m) "
sleep 0.2
ui_print "   ▒▒▒▒ ROM              : $(getprop ro.build.flavor) "
sleep 0.2
ui_print "   ▒▒▒▒ DESCRIPTION ROM  : $(getprop ro.build.description) "
sleep 0.2
ui_print "   ▒▒▒▒ FINGERPRINT      : $(getprop ro.build.fingerprint) "
sleep 0.2
ui_print "   ▒▒▒▒ SECURITY PATCH   : $(getprop ro.build.version.security_patch) "
sleep 0.2
ui_print "   ▒ "
ui_print "   ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒"
ui_print "- "
sleep 0.2
ui_print "▒▒▒▒ START INSTALLATION ▒▒▒▒ "
sleep 1
ui_print " "
ui_print " "
ui_print " "
ui_print "   changing the resolution only when entering the game "
sleep 0.5
ui_print " "
ui_print " "
ui_print " "
ui_print " "
unzip -o "$ZIPFILE" 'common/*' -d $TMPDIR >&2
unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
cp -af $TMPDIR/code $MODPATH/code
cp -af $TMPDIR/ACR $MODPATH/ACR
cp -af $TMPDIR/fck $MODPATH/fck
sleep 1
set_perm_recursive $MODPATH 0 0 0755 0644
set_perm $MODPATH/code 0 0 0755 0755
set_perm $MODPATH/ACR 0 0 0755 0755
set_perm_recursive "$MODPATH/system/bin/acr" 0 0 0777 0755  
