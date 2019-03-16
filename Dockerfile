FROM	debian

# For Ansible v2, from https://docs.ansible.com/ansible/intro_installation.html#latest-releases-via-apt-debian

RUN	apt-get update && apt-get install -y gnupg2

RUN	echo 'deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main' >> /etc/apt/sources.list \
	&& apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367 \
	&& apt-get update && apt-get install -y \
	git \
	python-pip \
	openssh-client \
	python-dev \
	ruby \
	curl \
	ansible

ENV	HOME	/root
RUN	ssh-keygen -f /root/.ssh/id_rsa -q -N "" \
	&& pip install markupsafe dopy boto linode-python pyrax

WORKDIR	/root

RUN	git clone https://github.com/jlund/streisand.git

WORKDIR	/root/streisand

CMD	["./streisand"]
