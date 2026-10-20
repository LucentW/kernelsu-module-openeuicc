until [ "$(getprop sys.boot_completed)" = 1 ]; do sleep 1; done
pm grant im.angry.openeuicc android.permission.READ_PHONE_STATE
