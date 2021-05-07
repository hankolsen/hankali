FROM kalilinux/kali-rolling

RUN apt-get -y update --fix-missing \
    && apt-get -y upgrade

# Install general stuff
RUN apt-get -y install \
curl \
git \
mlocate \
netcat \
net-tools \
less \
man-db \
python2 \
python3-pip \
vim \
zsh

# Install Kali stuff
RUN apt-get -y --no-install-recommends install \
dirbuster \
enum4linux \
exploitdb \
gobuster \
hydra \
iputils-ping \
john \
metasploit-framework \
nmap \
seclists \
wordlists 

# Install Oh My Zsh
RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
COPY config/.zshrc /root/.zshrc

# Install LinPEAS
RUN curl https://raw.githubusercontent.com/carlospolop/privilege-escalation-awesome-scripts-suite/master/linPEAS/linpeas.sh > /usr/share/linpeas
RUN chmod +x /usr/share/linpeas

# Extract Rockyou
RUN gunzip /usr/share/wordlists/rockyou.txt.gz

RUN apt-get clean -y \
    && apt-get -y autoremove 

CMD ["/bin/zsh"]