FROM kalilinux/kali-rolling

RUN apt-get -y update --fix-missing \
&& apt-get -y upgrade \
&& apt-get -y dist-upgrade \
&& apt-get -y autoremove \
&& apt-get clean

# Install general stuff
RUN apt-get -y install \
curl \
git \
mlocate \
netcat \
net-tools \
less \
python3-pip \
vim

# Install Kali stuff
RUN apt-get -y --no-install-recommends install \
dirbuster \
enum4linux \
exploitdb \
gobuster \
hydra \
john \
metasploit-framework \
nmap \
wordlists \
zsh

# Install Oh My Zsh
RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
COPY config/.zshrc /root/.zshrc

RUN apt-get clean -y

ENTRYPOINT ["/bin/zsh"]