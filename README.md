# docker-centos-slurm

```bash
git clone https://github.com/bikerdanny/docker-centos-slurm
cd docker-centos-slurm
git checkout gres-bug
pip3 install j2cli
j2 Dockerfile.j2 config.ini > Dockerfile
docker build -t bikerdanny/slurm:20.02.5 .
j2 aio.docker-compose.yml.j2 config.ini > docker-compose.yml
make
docker-compose exec c10 bash
supervisorctl stop slurmctld
sacctmgr show cluster # if the command returns successfully, you can start slurmctld again
supervisorctl start slurmctld
srun --gres=gpu:1 hostname
srun --gres=gpu:1 -c2 hostname
```
