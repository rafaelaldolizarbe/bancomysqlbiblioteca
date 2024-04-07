FROM mysql

ENV MYSQL_ROOT_PASSWORD=root \ 
    MYSQL_DATABASE=my_easy 
    # MYSQL_DATABASE = vollmed_api
    

EXPOSE 3306

# docker build -t mydb:easy_find .
# docker run --name mysql_easy --rm -v volume_easy:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 -d mydb:easy_find

# docker run --name volmed_api --rm -v volume_easy:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 -d volmed_api:1.0
# docker run --name easy_bd -v volume_easy:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 -d easy_bd  
# docker run --name easy_bd -v volume_easy:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 -d easy_bd    

# Aqui temos outro exemplo de run para o container

# docker run --name easy_local -v .\salva_guarda\:/var/lib/mysql --rm -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 -d easy_bd