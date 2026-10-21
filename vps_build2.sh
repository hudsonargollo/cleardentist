#!/bin/bash
cd /root/ClubeMkt/cleardentist
LOG=/root/ClubeMkt/cleardentist/deploy-build.log
echo "[$(date)] build start" > $LOG
docker compose -f docker-compose.deploy.yml build >> $LOG 2>&1
echo "[$(date)] BUILD_EXIT=$?" >> $LOG
