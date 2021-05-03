# Han-K-ali
![MIT License](https://img.shields.io/badge/license-MIT-blue)

A simple Docker project to run Kali Linux anywhere
## Included tools
- dirbuster 
- enum4linux 
- exploitdb 
- gobuster 
- hydra 
- john 
- metasploit-framework 
- nmap 
- wordlists

zsh (and oh-my-zsh) is installed as the default shell

### Usage 
It's as simple as 1-2-3


1. Build
```sh
docker-compose build
```

2. Run

```sh
docker-compose up -d
```

3. Connect

```sh
docker exec -it hankali /bin/zsh
```

### Alternative use
The main reason for using docker-compose is to make it simple to use volumes to store for instance locatedb between sessions, but you could also run it without docker-compose:

```sh
docker build -t hankali .
```
```sh
docker run -it hankali
```