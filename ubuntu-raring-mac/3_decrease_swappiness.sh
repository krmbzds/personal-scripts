
# Decrease swappiness 

echo "# Decrease swap usage" | sudo tee -a /etc/sysctl.conf
echo "vm.swappiness=10"      | sudo tee -a /etc/sysctl.conf


