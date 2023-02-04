docker run 457866/cadvisor-scraper $(docker ps --no-trunc -aqf "name=csc8110_benchmarkapp") &
docker run 457866/cadvisor-scraper $(docker ps --no-trunc -aqf "name=csc8110_cadvisor") &
docker run 457866/cadvisor-scraper $(docker ps --no-trunc -aqf "name=csc8110_locust-master") &
docker run 457866/cadvisor-scraper $(docker ps --no-trunc -aqf "name=csc8110_locust-worker") &
docker run 457866/cadvisor-scraper $(docker ps --no-trunc -aqf "name=csc8110_mongo") &
docker run 457866/cadvisor-scraper $(docker ps --no-trunc -aqf "name=csc8110_visualizer")
