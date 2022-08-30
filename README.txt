# to build this
docker build -f ./Docker -t resurgentech/awx-ee-extra:latest
##  make sure to login to dockerhub (.e.g.)
docker login -u <> registry-1.docker.io
## Then do the push attempth
docker push resurgentech/awx-ee-extra:latest
## History for this is pretty uninteresting, we just add python modules and whatnot on top of the basic one, but we should rebuild this from time to time.

