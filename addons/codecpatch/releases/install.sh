#!/usr/bin/env ash

if [ $(mount | grep tmpRoot | wc -l) -gt 0 ]; then
  HASBOOTED="yes"
  echo "System passed junior"
else
  echo "System is booting"
  HASBOOTED="no"
fi

if [ "$HASBOOTED" = "yes" ]; then
  echo "Installing daemon for codecpatch"
  cp -vf codecpatch.sh /tmpRoot/usr/bin/codecpatch.sh
  chmod 755 /tmpRoot/usr/bin/codecpatch.sh

  DEST="/tmpRoot/usr/lib/systemd/system/codecpatch.service"
  echo "[Unit]"                                             >${DEST}
  echo "Description=Patch synocodectool"                   >>${DEST}
  echo "After=multi-user.target"                           >>${DEST}
  echo                                                     >>${DEST}
  echo "[Service]"                                         >>${DEST}
  echo "Type=oneshot"                                      >>${DEST}
  echo "RemainAfterExit=true"                              >>${DEST}
  echo "ExecStart=echo 1 | /usr/bin/codecpatch.sh -p"      >>${DEST}
  echo                                                     >>${DEST}
  echo "[Install]"                                         >>${DEST}
  echo "WantedBy=multi-user.target"                        >>${DEST}

  mkdir -vp /tmpRoot/lib/systemd/system/multi-user.target.wants
  ln -vsf /usr/lib/systemd/system/codecpatch.service /tmpRoot/lib/systemd/system/multi-user.target.wants/codecpatch.service
fi
