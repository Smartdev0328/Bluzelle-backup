ssh -i alvi.pem user@host_ip '(docker exec -it <docker_container> sh -c "pkill curiumd")'
ssh -i alvi.pem user@host_ip '(docker exec -it <docker_container> sh -c "curiumd export")' > exported_genesis.json
ssh -i alvi.pem user@host_ip '(docker exec -it <docker_container> sh -c "curiumd start")'
