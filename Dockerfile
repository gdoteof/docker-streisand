FROM debian

# For Ansible v2, from https://docs.ansible.com/ansible/intro_installation.html#latest-releases-via-apt-debian
RUN echo 'deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main' >> /etc/apt/sources.list

RUN apt-get update

# Use --force-yes because the ansible package cannot be authenticated
RUN apt-get install -y --force-yes git python-pip openssh-client python-dev ruby curl ansible

ENV HOME /root
RUN ssh-keygen -f /root/.ssh/id_rsa -q -N ""

RUN pip install markupsafe dopy boto linode-python pyrax

WORKDIR /root

RUN git clone https://github.com/jlund/streisand.git

WORKDIR /root/streisand

CMD ./streisand
