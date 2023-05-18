sudo rm /etc/systemd/system/genesis-backup.service 
sudo touch /etc/systemd/system/genesis-backup.service

echo "[Unit]"                               | sudo tee /etc/systemd/system/genesis-backup.service
echo "Description=Gaia service"       | sudo tee /etc/systemd/system/genesis-backup.service -a
echo "After=network-online.target"          | sudo tee /etc/systemd/system/genesis-backup.service -a
echo ""                                     | sudo tee /etc/systemd/system/genesis-backup.service -a
echo "[Service]"                            | sudo tee /etc/systemd/system/genesis-backup.service -a
echo "User=root"                            | sudo tee /etc/systemd/system/genesis-backup.service -a
echo "ExecStart=while true; do $HOME/export.sh; sleep 86400; done" | sudo tee /etc/systemd/system/genesis-backup.service -a
echo "Restart=always"                       | sudo tee /etc/systemd/system/genesis-backup.service -a
echo "RestartSec=3"                         | sudo tee /etc/systemd/system/genesis-backup.service -a
echo "LimitNOFILE=4096"                     | sudo tee /etc/systemd/system/genesis-backup.service -a
echo ""                                     | sudo tee /etc/systemd/system/genesis-backup.service -a
echo "[Install]"                            | sudo tee /etc/systemd/system/genesis-backup.service -a
echo "WantedBy=multi-user.target"           | sudo tee /etc/systemd/system/genesis-backup.service -a

# Start service
echo "Starting genesis-backup.service..."
sudo systemctl daemon-reload
sudo systemctl enable genesis-backup.service
sudo systemctl start genesis-backup.service
