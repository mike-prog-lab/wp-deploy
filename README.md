# wp-deploy
It's simple application for wordpress deployment.

### Prerequirements
* Linux host
* Host opened ports: 8080, 8443
* Docker and docker-compose applications installed
* sudo application installed

### Installation
1. Clone the repository
```
git clone https://github.com/mike-prog-lab/wp-deploy.git
```
2. Initialize the application.
```
cd wp-deploy; ./init.sh $PWD
```
3. Fill in environment variables in `.env` file.
4. Run the application.
```
sudo docker-compose up -d
```
