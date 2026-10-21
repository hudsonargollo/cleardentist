#!/bin/bash
set -e
cd /root/ClubeMkt/cleardentist
LOG=/root/ClubeMkt/cleardentist/deploy-build.log
echo "[$(date)] Starting build" > $LOG
docker compose -f docker-compose.deploy.yml build >> $LOG 2>&1
echo "[$(date)] Build done with exit $?" >> $LOG
