# JS-TutorCrudApp-React-Node-Express-MySQL

## DOCKER COMPOSE

    - Commission all containers
        - docker compose up -d      
    
    - Rebuild all containers
        - docker compose up -d --force-recreate --build  

    - Cleanup:
        - docker compose down -v      # remove container and volumes
        - docker system prune -a --volumes -f   # remove images  

## DOCKER IMAGES

    Each folder contains its docker file.  
    But commands below can be run from the root folder 
    - How to run:
      - docker build -t web -f 01-Web/Dockerfile 01-web
      - docker build -t api -f 02-Api/Dockerfile 02-api
      - docker build -t sql -f 03-DB/Dockerfile 03-db

      - docker network create webappnet
      - docker run -d --name sql --env-file 03-DB/.env --network webappnet -v mysql_data:/var/lib/mysql --restart unless-stopped sql
      - docker run -d --name api --env-file 02-Api/.env --network webappnet -p 4000:80 --restart unless-stopped api
      - docker run -d --name web --env-file 01-Web/.env --network webappnet -p 80:80 --restart unless-stopped web
      
    - How to destroy all:
      - docker stop $(docker ps -q)
      - docker system prune -a -f
      - docker volume rm mysql_data


## BASE PROJECT DOCUMENTATION

### How to Run
	Express runs backend and also seves the frontend end build folder from the aReactFrontend/build folder
	- $ npm install			# install backend dependencies
	- $ cd aReactFrontend
	- $ npm install			# install frontend dependencies
	- $ npm run build		# make frontend build
	- $ cd ..
	- $ node server.js		# run backend server (which runs also FE static index.js) see server.js.

### Project tutorial at:
    - https://www.bezkoder.com/react-node-express-mysql/

### Backend API's 
    Methods	    Urls	                    Actions
    GET	        api/tutorials	            get all Tutorials
    GET	        api/tutorials/:id	        get Tutorial by id
    POST	    api/tutorials	            add new Tutorial
    PUT	        api/tutorials/:id	        update Tutorial by id
    DELETE	    api/tutorials/:id	        remove Tutorial by id
    DELETE	    api/tutorials	            remove all Tutorials
    GET	        api/tutorials?title=[kw]	find all Tutorials which title contains 'kw'

### Starting Node App
    - npm init

### Backend Dependencies
    - npm install express sequelize mysql2 cors --save
	
### Frontend Dependencies
	-  npm install bootstrap axios