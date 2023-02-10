	sudo yum update -y
	sudo yum install -y java-1.8.0-openjdk-devel
    sudo wget http://apachemirror.wuchna.com/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz
    sudo tar -xzvf apache-maven-3.6.3-bin.tar.gz -C /opt
    sudo echo export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk >> /etc/environment
    sudo echo export M2_HOME=/opt/apache-maven-3.6.3 >> /etc/environment
    sudo echo export PATH=/{M2_HOME}/bin:/{JAVA_HOME}/bin:/{PATH} >> /etc/environment
    sudo source /etc/environment
    sudo wget http://updates.jenkins-ci.org/download/war/2.275/jenkins.war
    sudo java -jar jenkins.war &