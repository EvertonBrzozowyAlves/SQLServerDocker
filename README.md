# Como utilizar

## Build

```
docker build -t notever/sqlserver .
```

## Run

```
docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=Pass@123' -p 1435:1433 -d notever/sqlserver
```
