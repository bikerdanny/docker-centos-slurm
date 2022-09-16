# docker-centos-slurm

## All-in-one

```bash
git clone https://github.com/bikerdanny/docker-centos-slurm
cd docker-centos-slurm
pip3 install j2cli
j2 Dockerfile.j2 config.ini > Dockerfile
docker build -t bikerdanny/slurm:20.11.9 .
sed -i "s/controller1/c10/g" config.ini
sed -i "s/compute1/c10/g" config.ini
j2 aio.docker-compose.yml.j2 config.ini > docker-compose.yml
mkdir var_lib_mysql
mkdir etc_munge
mkdir etc_slurm
mkdir shared
docker-compose up -d
docker exec -it docker-centos-slurm_c10_1 supervisorctl status
docker exec -it docker-centos-slurm_c10_1 sinfo
```
