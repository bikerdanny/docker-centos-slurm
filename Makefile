all: docker-compose.yml 
	mkdir var_lib_mysql
	mkdir etc_munge
	mkdir etc_slurm
	mkdir shared
	docker-compose up -d

clean:
	rm -f Dockerfile
	rm -f docker-compose.yml
	rm -rf var_lib_mysql
	rm -rf etc_munge
	rm -rf etc_slurm
	rm -rf shared
