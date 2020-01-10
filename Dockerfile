FROM ubuntu:16.04

RUN ls
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y git
RUN apt-get install -y python3-pip

RUN apt-get install -y telnet

RUN mkdir /scholia/
WORKDIR /scholia/


RUN git clone https://github.com/fnielsen/scholia.git .
COPY scripts/startScholia.sh .
RUN chmod +x startScholia.sh

RUN pip3 install -r requirements.txt

EXPOSE 8100

ENTRYPOINT ["./startScholia.sh"]
