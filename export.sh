ssh -i alvi.pem user@host_ip '(docker exec -it <docker_container> sh -c "pkill curiumd")'
ssh -i alvi.pem user@host_ip '(docker exec -it <docker_container> sh -c "curiumd export --for-zero-height --jail-allowed-addrs bluzellevaloper1syeqq3hl327d53w6wz9fzamuhklg4qk47rvcqd")' > exported_genesis.json
ssh -i alvi.pem user@host_ip '(docker exec -it <docker_container> sh -c "curiumd start")'
