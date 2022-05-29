#!/bin/sh



CURRENT=$(df / | grep / | awk '{ print $5}'| sed 's/%//g' )

ALERT=90

if ["$CURRENT" -gt "$ALERT" ]; then

	mailx -s 'Disk Space Alert' merveipekci4@gmail.com << EOF

partition space alarm Used: $CURRENT%

EOF

fi


