echo -n "write username: "
read -r username
echo -n "write UID number: "
read -r uid
echo -n "write IPv4 address: "
read -r ip

ssh student@$ip 'sudo useradd $username -u $uid || echo "failed"'
ssh student@$ip sudo awk -F ':' -v user=$username '\'{if ($1 == user) printf username: %s\nUID: %s\nHome dir:%s\nLogin sh:%s\n", $1, $3, $6, $7}'\' /etc/passwd"

