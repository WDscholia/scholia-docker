# scholia-docker

#

This images are currently setup to run with its own proxy

## Build and run the latest scholia

### Build

docker build -t scholia-latest -f latest.Dockerfile

### Run

docker run -d -e -p 8100:8100 scholia-latest

## Build and run Scholia with a proxy

### Build scholia with proxy

docker build -t scholiawithremoteproxy -f proxyscholia.Dockerfile

## Build proxy for scholia

docker build -t proxy4scholia -f proxy4sholia.Dockerfile
docker build -t proxy4scholia proxy4scholia/

## Run Scholia with proxy

docker run -p 8100:8100 scholiawithremoteproxy

docker run -p 80:80 proxy4scholia
