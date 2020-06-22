FROM ubuntu:16.04

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y git
RUN apt-get install -y python3-pip
#RUN apt-get intall  -y nginx

RUN pip3 install --upgrade pip

RUN apt-get install -y telnet

RUN mkdir /scholia/
WORKDIR /scholia/

#RUN git clone https://github.com/nunogit/scholia.git .
RUN git clone https://github.com/temp-scholia/scholia .

COPY config/scholia.cfg .
COPY config/scholiaConfig.js scholia/app/static/

COPY scripts/startScholia.sh .
RUN chmod +x startScholia.sh

RUN pip3 install -r requirements.txt



EXPOSE 8100

ENTRYPOINT ["./startScholia.sh"]
