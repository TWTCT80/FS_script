#
# Detta script samlar in systeminformation - RECON
#
# Kan användas för följande attacker:
# 
#
# Author: Frans Schartau
# Last Update: 2025-01-01

echo "Välkommen till mitt RECON script för att kontrollera en Linux-miljö"
echo ""

echo "=== SYSTEMINFO ==="
uname -a
echo ""

echo "=== RAM INFO ==="
free -h
echo ""

echo "=== DISKUTRYMME (Root) ==="
df -h / | awk 'NR==2 {print "Använt: " $5 " | Ledigt: " $4}'
echo ""

echo "=== AKTUELL ANVÄNDARE ==="
echo $USER
echo ""

echo "=== ANVÄNDARE MED SHELL ==="
grep "sh$" /etc/passwd
echo ""

echo "=== NÄTVERK ==="
ip a | grep inet
echo ""

echo "=== PUBLIK IP ==="
curl -s -m 5 ifconfig.me || echo "Ingen anslutning"
echo ""
echo "" 
echo "=== IP Route ==="
ip route
echo ""

echo "=== Netstat ==="
ss -tulnp
echo ""

echo "=== UPPTID ==="
uptime -p
echo ""

echo "=== TIME AND DATE ==="
date
echo ""

