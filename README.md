# Han-K-ali
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/hankdelang/hankali?style=for-the-badge)
![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/hankdelang/hankali?style=for-the-badge)
![Docker Image Version (latest semver)](https://img.shields.io/docker/v/hankdelang/hankali?style=for-the-badge)
![Docker Pulls](https://img.shields.io/docker/pulls/hankdelang/hankali?style=for-the-badge)
![MIT License](https://img.shields.io/badge/license-MIT-blue?style=for-the-badge)

A simple Docker project to run Kali Linux anywhere. With inspiration from [Mario Raciti](https://github.com/tsumarios/Kali-Linux-Dockerfile)

## Included tools
- enum4linux 
- exploitdb 
- gobuster 
- hashcat
- hydra 
- john 
- LinPEAS
- nmap 
- seclists
- sublist3r
- wordlists

zsh (and oh-my-zsh) is installed as the default shell

### Usage 
It's as simple as 1-2-3

1. Build
```sh
docker build -t hankali .
```
2. Run
```sh
docker run -it hankali
```
3. There is no step 3