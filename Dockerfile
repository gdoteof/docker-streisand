FROM tianon/debian-roll:stable

RUN apt-get update && apt-get install -y git python-pip openssh-client python-dev

ENV HOME /root
RUN ssh-keygen -f /root/.ssh/id_rsa -q -N ""

RUN pip install ansible markupsafe

RUN pip install dopy


WORKDIR /root

RUN git clone https://github.com/jlund/streisand.git

RUN apt-get install -y ruby curl


WORKDIR /root/streisand

CMD ./streisand
