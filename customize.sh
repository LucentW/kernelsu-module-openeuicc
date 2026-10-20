set_permissions() {
  set_perm /system/system_ext/etc/permissions/privapp_whitelist_im.angry.openeuicc.xml
  set_perm /system/system_ext/priv-app/OpenEUICC/OpenEUICC.apk
}

chmod u+x "$MODPATH/uninstall.sh"

# Older versions of this module also ran `pm install`, leaving a copy in /data/app that
# shadows the privileged system app (no privileged permissions). Remove it; the
# system app comes up after reboot.
case "$(pm path im.angry.openeuicc)" in
  *package:/data/app/*) pm uninstall im.angry.openeuicc ;;
esac
