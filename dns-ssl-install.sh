# refer https://docs.certcloud.cn/docs/installation/auto/acme/acmesh/
# https://www.cnblogs.com/-mrl/p/10601817.html
#curl https://get.acme.sh | bash
ALI_KEY=""
ALI_SECRET=""
DOMAIN="rs.jiuduotech.com"
SSL_DIR="/opt/harbor/ssl"

test -d $SSL_DIR || sudo mkdir -p $SSL_DIR
sudo chown -R ubuntu:ubuntu $SSL_DIR

if [ ! -d ~/.acme.sh ]; then
	# install from github
	git clone https://ghfast.top/https://github.com/acmesh-official/acme.sh.git
	cd ./acme.sh
	./acme.sh --install -m my@example.com
fi

export Ali_Key=$ALI_KEY
export Ali_Secret=$ALI_SECRET
~/.acme.sh/acme.sh --issue --dns dns_ali -d $DOMAIN
~/.acme.sh/acme.sh --installcert -d $DOMAIN --fullchain-file ${SSL_DIR}/${DOMAIN}.pem --key-file ${SSL_DIR}/${DOMAIN}.key 

~/.acme.sh/acme.sh --list
crontab -l
