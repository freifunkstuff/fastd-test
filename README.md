# Fast test setup

* creates a local fastd server and a local fastd client connected to that server
* start with `docker-compose up --build -d`
* run a speedtest on the host with `curl -o /dev/null https://speed.hetzner.de/1GB.bin`
* run a speedtest on the fastd server with `docker-compose exec fastd-server curl -o /dev/null https://speed.hetzner.de/1GB.bin`
* run a speedtest on the fastd client with `docker-compose exec fastd-client curl -o /dev/null https://speed.hetzner.de/1GB.bin`
