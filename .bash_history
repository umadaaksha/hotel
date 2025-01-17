minikube start
minikube status
sudo apt update
sudo apt upgrade -y
sudo apt install openjdk-17-jdk -y
java -version
sudo apt install curl ca-certificates
sudo install -d /usr/share/postgresql-common/pgdg
sudo curl -o /usr/share/postgresql-common/pgdg/apt.postgresql.org.asc --fail https://www.postgresql.org/media/keys/ACCC4CF8.asc
sudo sh -c 'echo "deb [signed-by=/usr/share/postgresql-common/pgdg/apt.postgresql.org.asc] https://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
sudo apt update
sudo apt install postgresql-15 -y
sudo -i -u postgres
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.5.1.90531.zip
unzip sonarqube-10.5.1.90531.zip
sudo mv sonarqube-10.5.1.90531 /opt/sonarqube
sudo adduser --system --no-create-home --group --disabled-login sonarqube
sudo chown -R sonarqube:sonarqube /opt/sonarqube
sudo nano /opt/sonarqube/conf/sonar.properties
sudo nano /etc/systemd/system/sonarqube.service
sudo systemctl daemon-reload
sudo systemctl start sonarqube
sudo systemctl status sonarqube
ulimit -n
sudo nano /etc/security/limits.conf
sudo sysctl -w vm.max_map_count=262144
ulimit -n
sudo nano /etc/sysctl.conf
sudo sysctl -p
sudo ufw allow 9000/tcp
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw reload 
sudo systemctl status sonarqube.service 
sudo curl http://localhost:9000
sonarscanner --version
sonar-scanner --version
sudo apt update
sudo apt install openjdk-11-jdk -y
java -version
wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-5.0.1.3006-linux.zip
sudo apt install unzip -y
unzip sonar-scanner-cli-*.zip
sudo mv sonar-scanner-*-linux /opt/sonar-scanner
nano ~/.bashrc
source ~/.bashrc
sonar-scanner --version
sudo nano /opt/sonar-scanner/conf/sonar-scanner.properties
sudo systemctl status sonnarqube
sudo systemctl enable sonarqube
sudo systemctl start sonarqube
sudo systemctl status sonarqube
sonar.host.url=http://localhost:9000
cd /opt/ ls
wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-5.0.1.3006-linux.zip
sudo apt install unzip -y
unzip sonar-scanner-cli-*.zip
sudo mv sonar-scanner-5.0.1.3006-linux /opt/sonar-scanner
ls /opt/sonar-scanner
nano ~/.bashrc
sonar-scanner --version
                                                                        