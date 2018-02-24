# This script pushes any changes automatically to our VPS, giving the commit the comment of the current time.
#!/bin/bash
git add .
dt=$(date '+%d/%m/%Y %H:%M:%S'); 
git commit -m "$dt"
git push droplet gh-pages
git push -u origin gh-pages
