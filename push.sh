#!/bin/bash
git add .
dt=$(date '+%d/%m/%Y %H:%M:%S'); 
git commit -m $(echo "dt")
git push droplet gh-pages
