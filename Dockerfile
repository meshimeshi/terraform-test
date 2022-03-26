FROM ubuntu:18.04

RUN apt-get update -y\
&& apt-get upgrade
# package
RUN apt-get install zsh tmux build-essential -y
RUN apt-get install wget unzip curl tree grep bison -y 

RUN apt install python3-pip -y
RUN curl -sL https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o awscliv2.zip\
 && unzip -q awscliv2.zip\
 && aws/install

RUN curl "https://releases.hashicorp.com/terraform/0.15.0/terraform_0.15.0_linux_amd64.zip" -o "terraform.zip"\
 && unzip ./terraform.zip -d /usr/local/bin/
