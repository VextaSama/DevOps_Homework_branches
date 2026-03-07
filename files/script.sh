#!/bin/bash

rsync -a --delete --checksum $HOME/ /tmp/backup

if [ $? -eq 0 ]; then
    /usr/bin/logger -t home_backup "rsync done"
else
    /usr/bin/logger -t home_backup "rsync failed"
fi
