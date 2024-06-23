
## setup jailer connection

```
jdbc:mysql://localhost:3307?useSSL=false
```

## connect to mysql

```
mysql -h $(hostname -i) -P 3307 -u root test
```

## setup mysql

##### docker

```
docker run --rm --name mysql -p 3307:3306 -e MYSQL_ALLOW_EMPTY_PASSWORD=yes mysql
```

##### load dump

```
mysql -h $(hostname -i) -P 3307 -u root test < dump.sql
```

##### dump

```
mysqldump -h $(hostname -i) -P 3307 -u root test > dump.sql
```


