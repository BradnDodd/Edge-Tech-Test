# Background
This is a tech test for Edge. it is a fictional movie site that uses Statamic to manage the site & films. There is a home page providing a preview of the 10 latest films in the system. The gallery page then contains all the movies in the system. The gallery page requires a logged in user; users will be redirected to login/register. These users are separate to the Statamic CMS. All films are manually added via the Statamic CMS. 

I have recorded my thought process at various points throughout the project in `thoughts.txt`

Statamic test user account:
Email: demo@demo.com
Password: demo1234

# How to run
The development environment for this project is designed to be ran on docker and has been tested on a windows machine through WSL2. It has a bash script `deploy-dev.sh` that is a wrapper around `docker-compose`. The following instructions are for using this development environment, if you are using a different setup for development then you may have to take different steps to get up and running. This environment uses a MySQL database container instead of default sqlite of Laravel; you can change this in the `.env` once you have copied the `.env.example`

1. Copy `src/.env.example` to `src/.env` 
2. To start the project run `./deploy-dev.sh up`. This will start the required containers. 
3. Add the following to your hosts file; `::1 edge.test`. 
4. In a separate terminal run `docker exec -it edge-frontend /bin/bash`
5. Run
```
php artisan migrate
php artisan key:generate
npm install
npm run dev
```
6. Navigate to `http://edge.test`

If you have trouble with the CSS not working then try running `npm run build` instead of `npm run dev` inside the container; just make sure you have removed the `/var/www/public/hot` directory inside the container

Access the control panel via `http://edge.test/cp`
