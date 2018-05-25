FROM circleci/openjdk:8-jdk

RUN sudo wget https://releases.hashicorp.com/terraform/0.11.7/terraform_0.11.7_linux_amd64.zip
RUN sudo unzip terraform_0.11.7_linux_amd64.zip
RUN sudo cp terraform /usr/local/bin

RUN sudo wget http://mirror.dsrg.utoronto.ca/apache/maven/binaries/apache-maven-3.2.2-bin.zip
RUN sudo unzip apache-maven-3.2.2-bin.zip
RUN echo 'export M2_HOME=/apache-maven-3.2.2' >> ~/.bashrc
RUN echo 'export M2=/apache-maven-3.2.2/bin' >> ~/.bashrc
RUN sudo cp apache-maven-3.2.2/bin/mvn /usr/local/bin

RUN sudo apt install -y python-pip python-dev
RUN sudo pip install awscli
