# refer https://docs.certcloud.cn/docs/installation/auto/acme/acmesh/
# https://www.cnblogs.com/-mrl/p/10601817.html
#curl https://get.acme.sh | bash
curl https://get.acme.sh | sh -s email=my@example.com

# install from github
git clone https://github.com/acmesh-official/acme.sh.git
cd ./acme.sh
./acme.sh --install -m my@example.com

test -d /etc/nginx/ssl
/root/.acme.sh/acme.sh --issue -d test.com --webroot /opt/web/test.com/dist
/root/.acme.sh/acme.sh --installcert -d test.com --fullchain-file   /etc/nginx/ssl/test.com.pem --key-file /etc/nginx/ssl/test.com.key --reloadcmd "nginx -s reload"

/root/.acme.sh/acme.sh --list
crontab -l
