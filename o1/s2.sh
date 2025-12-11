#
# Detta script samlar in systeminformation - RECON
#
# Kan användas för följande attacker:
# 
#
# Author: Frans Schartau
# Last Update: 2025-01-01

echo "Välkommen till mitt RECON script för att kontrollera en Linux-miljö"
echo

echo "=== SYSTEMINFO ==="
uname -a
echo

echo "=== RAM INFO ==="
free -h
echo

echo "=== AKTUELL ANVÄNDARE ==="
echo $USER
echo

echo "=== ANVÄNDARE MED SHELL ==="
grep "sh$" /etc/passwd
echo

echo "=== NÄTVERK ==="
ip a | grep inet
echo

echo "=Route="
ip route
echo

echo "=Netstat="
ss -tulnp
echo

echo "=== OS VERSION ==="
cat /etc/os-release | grep PRETTY_NAME
echo
echo "=== TIME AND DATE ==="
date

echo

