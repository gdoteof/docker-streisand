FROM tianon/debian-roll:stable

RUN apt-get update && apt-get install -y git python-pip openssh-client python-dev ruby curl

ENV HOME /root
RUN ssh-keygen -f /root/.ssh/id_rsa -q -N ""

RUN pip install ansible markupsafe

RUN pip install dopy boto linode-python pyrax


WORKDIR /root

RUN git clone https://github.com/jlund/streisand.git

WORKDIR /root/streisand

CMD ./streisand
