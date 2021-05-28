FROM kalilinux/kali-rolling

RUN apt-get -y update --fix-missing \
    && apt-get -y upgrade

# Install general stuff
RUN apt-get -y install \
curl \
git \
iputils-ping \
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
enum4linux \
exploitdb \
gobuster \
hashcat \
hydra \
john \
nmap \
seclists \
sublist3r

# Install Oh My Zsh
RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
COPY config/.zshrc /root/.zshrc

# Install LinPEAS
RUN curl https://raw.githubusercontent.com/carlospolop/privilege-escalation-awesome-scripts-suite/master/linPEAS/linpeas.sh > /usr/share/linpeas \
    && chmod +x /usr/share/linpeas

# Install wordlists and extract Rockyou
RUN curl -LJO https://api.github.com/repos/3ndG4me/KaliLists/tarball/master \
    && mkdir /usr/share/wordlists \
    && tar -xf 3ndG4me-KaliLists-945a705.tar.gz -C /usr/share/wordlists --strip-components 1 \
    && gunzip /usr/share/wordlists/rockyou.txt.gz

RUN apt-get clean -y \
    && apt-get -y autoremove 

CMD ["/bin/zsh"]docker