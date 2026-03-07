#!/bin/bash

rsync -a --delete --checksum $HOME/ /tmp/backup

if [ $? -eq 0 ]; then
    logger -t home_backup "rsync done"
else
    logger -t home_backup "rsync failed"
fi
