#!/usr/bin/env ash
#
# Copyright (C) 2022 Ing <https://github.com/chenxudong2020>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

if [ $(mount | grep tmpRoot | wc -l) -gt 0 ]; then
  HASBOOTED="yes"
  echo "System passed junior"
else
  echo "System is booting"
  HASBOOTED="no"
fi

if [ "$HASBOOTED" = "yes" ]; then
  echo "Installing daemon for setrootpw"

  SED_PATH='/tmpRoot/usr/bin/sed'

  ${SED_PATH} -i 's|^.*PermitRootLogin.*$|PermitRootLogin yes|' /tmpRoot/etc/ssh/sshd_config  

  if [ ! -f /tmpRoot/usr/syno/etc/esynoscheduler/esynoscheduler.db ]; then
    echo "copy esynoscheduler.db"
    mkdir -p /tmpRoot/usr/syno/etc/esynoscheduler
    cp -vf esynoscheduler.db /tmpRoot/usr/syno/etc/esynoscheduler/esynoscheduler.db
  fi
  echo "insert setrootpw task to esynoscheduler.db"
  export LD_LIBRARY_PATH=/tmpRoot/bin:/tmpRoot/lib
  /tmpRoot/bin/sqlite3 /tmpRoot/usr/syno/etc/esynoscheduler/esynoscheduler.db <<EOF
DELETE FROM task WHERE task_name LIKE 'SetRootPw';
INSERT INTO task VALUES('SetRootPw', '', 'bootup', '', 0, 0, 0, 0, '', 0, 'PW=""; [ -n "\${PW}" ] && /usr/syno/sbin/synouser --setpw root \${PW}; systemctl restart sshd', 'script', '{}', '', '', '{}', '{}');
EOF
fi