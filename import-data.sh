for i in {1..50};
do
    /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Pass@123 -d master -i data/000*.sql
    /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Pass@123 -d master -i data/001*.sql
    if [ $? -eq 0 ]
    then
        echo "setup completed"
        break
    else
        echo "not ready yet..."
        sleep 1
    fi
done