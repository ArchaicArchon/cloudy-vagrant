apt-get update
time apt-get install -y vim screen git htop haskell-platform
sudo -i -u vagrant bash << EOF
	cd ~
	git clone https://github.com/ArchaicArchon/cloudymud.git
	cd cloudymud
	./install.sh
EOF
cp /vagrant/cloudy-front.service /etc/systemd/system
systemctl enable cloudy-front
systemctl start cloudy-front
echo We are LIVE!