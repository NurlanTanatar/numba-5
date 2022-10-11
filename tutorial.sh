# sudo awk -F ':' -v user=$1 '{if ($1 == user) printf username: %s\nUID: %s\nHome dir:%s\nLogin sh:%s\n", $1, $3, $6, $7}' /etc/passwd

# cat > hello.txt<<EOF 
# sudo awk -F ':' -v user=$1 '{if ($1 == user) printf username: %s\nUID: %s\nHome dir:%s\nLogin sh:%s\n", $1, $3, $6, $7}' /etc/passwd 
# EOF

cat > hello.txt <<EOF sudo awk -F ':' -v user=$1 '{if ($1 == user) printf username: %s\nUID: %s\nHome dir:%s\nLogin sh:%s\n", $1, $3, $6, $7}' /etc/passwd`