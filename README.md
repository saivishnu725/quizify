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

## Collaborators

Due to the nature of this project (individual project to present as the final project to receive this BCA degree), I believe that contributions will go against the morality. Do provide insights and suggestions, if any.

## Developers Notes

1. Access the mariadb

   ```bash
         docker exec -it <container_name_or_id> mariadb -uroot -p # use the id of mariadb by running `docker ps`
   ```

## License

[GNU General Public License v2.0](https://choosealicense.com/licenses/gpl-2.0/)
