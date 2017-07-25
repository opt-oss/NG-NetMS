#!/usr/bin/env bash
# Manual run master container, don't run it if docker-compose used
docker  run  -it --rm --name ngnms-web  \
   --env-file  env.list \
   --link ngnms-psql \
   -v c:/VLZ/oDesk/taras/NG/NG-NetMS/Web/www:/var/www:rw \
	-p 80:80 \
	vladzaitsev/ngnms-web