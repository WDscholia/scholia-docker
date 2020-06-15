# scholia-docker

#

This images are currently setup to run with its own proxy

## Build and run the latest scholia

### Build

docker build -t scholia-latest -f latest.Dockerfile

### Run

docker run -d -e -p 8100:8100 --expose 8100 scholia-latest

## Bui

docker build -t scholiawithremoteproxy .


## To run

docker run -p 8100:8100 scholiawithremoteproxy
