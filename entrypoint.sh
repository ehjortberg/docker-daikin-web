#!/bin/bash

if [ "${IPADDR}" != "" ]; then
	sed -i "s/192\.168\.1\.11/${IPADDR}/g" config.php
fi	
exec php -S 0.0.0.0:80
