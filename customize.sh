 #!/sbin/sh
#
  echo " - Done"
  sleep 1
  echo " - Starting additional script"
  sleep 1
  if  [ -d  /system/vendor/overlay ]; then
    echo " - Overlays directory found in vendor"
    sleep 1
    echo " - Files will be copied to vendor"
    mv $MODPATH/system/folder $MODPATH/system/vendor
  elif [ -d  /system/product/overlay ]; then
    echo " - Overlays directory found in product"
    sleep 1
    echo " - Files will be copied to product"
    mv $MODPATH/system/folder $MODPATH/system/product
  else
  echo " - Overlays not found"
  abort
  fi;
  sleep 1