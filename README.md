# Quizify

A quiz site that can be used to create and host live quiz sessions

## Pre-requisites

1. [NodeJS](https://nodejs.org/en)
2. [NPM](https://npmjs.com)
3. [Web Browser](https://www.mozilla.org/en-US/firefox/new/)

## How to run it locally

1. Install node dependencies

   ```bash
   chmod +x node_dependencies.sh
   ./node_dependencies.sh
   ```

2. Create the local env files

   1. Root .env

      ```bash
         NODE_ENV=development
         MONGO_URI=mongodb://mongodb:27017/quizify
         DB_HOST=mariadb
         DB_USER=root
         DB_PASSWORD=your_mongo_pass
         DB_NAME=quizify
         MYSQL_ROOT_PASSWORD=your_pass
      ```

   2. frontend/.env.local

      ```bash
         API_URL=http://localhost:2828 # same as the port below
      ```

   3. backend/.env

      ```bash
         PORT=2828 #edit the /backend/Dockerfile and the /docker-compose.yml to reflect this new port
         MONGO_URI=mongodb://mongodb:27017/quizify
         JWT_SECRET=your_pass

      ```

3. Run the entire site locally

   ```bash
      docker-compose up
   ```

4. Site is live at `localhost:4000`. Open it in your preferred browser.

## Run it on Windows using WSL

WSL: Windows Subsystem for Linux

### Top-Level Steps

1. Install "[Docker Desktop](https://www.docker.com/products/docker-desktop/)" app in Windows.
2. Install '_Ubuntu_' from Microsoft Store.
3. Set up the WSL through Ubuntu.
4. Then install docker on Ubuntu.
5. Copy the repo: `git clone --recurse-submodules -j8 https://github.com/saivishnu725/quizify`
6. Run the docker compose: `cd quizify; docker-compose up`
7. Site is open on port 4000: [http://localhost:4000](https://localhost:4000)
8. If not, open _Docker Desktop_ to see if there is any issues or if it is still running. It usually takes 15-20mins to run all four images.

### How to install Docker on WSL

```bash
   sudo apt update
   sudo apt install ca-certificates curl
   sudo install -m 0755 -d /etc/apt/keyrings
   sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
   sudo chmod a+r /etc/apt/keyrings/docker.asc
   echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
   sudo apt update
   sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-compose
   sudo groupadd docker # this might have already happened but run it to be sure!
   sudo usermod -aG docker $USER
   #restart the system for it to work but if you dont want to restart, run the following command
   newgrp docker

   # run this to verify if the group permissions issue is fixed
   docker run hello-world
```

## Collaborators

Due to the nature of this project (individual project to present as the final project to receive this BCA degree), I believe that contributions will go against the morality. Do provide insights and suggestions, if any.

## Developers Notes

1. Access the mariadb

   ```bash
         docker exec -it <container_name_or_id> mariadb -uroot -p # use the id of mariadb by running `docker ps`
   ```

## License

[GNU General Public License v2.0](https://choosealicense.com/licenses/gpl-2.0/)
