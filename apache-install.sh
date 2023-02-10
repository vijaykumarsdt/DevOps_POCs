#Update
sudo yum update -y

# #Java Install
sudo yum install -y java-1.8.0-openjdk-devel
java -version

#Maven Install
sudo wget https://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo
sudo sed -i s/\$releasever/6/g /etc/yum.repos.d/epel-apache-maven.repo
sudo yum install -y apache-maven
mvn –version

#Environment settings
sudo echo export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk >> /etc/environment
sudo echo export M2_HOME=/opt/apache-maven-3.6.3 >> /etc/environment
sudo echo export PATH=/{M2_HOME}/bin:/{JAVA_HOME}/bin:/{PATH} >> /etc/environment
sudo source /etc/environment

#Jenkins Install
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install jenkins
sudo service jenkins start

