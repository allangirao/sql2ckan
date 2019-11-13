#!/bin/bash

setup(){
  # if data directory is empty
  if [ ! "$(ls -A /var/opt/mssql/data)" ]; then  
    #wait 5 minutes before running setup scritps	
    sleep 300
    echo "Setup database..."
    echo "Running scripts..."

    for f in /docker-entrypoint-initdb.d/*.sql; do
      [ -e "$f" ] || continue	  
      echo "$0: running $f";
      /opt/mssql-tools/bin/sqlcmd -U sa -P $SA_PASSWORD -i $f;
    done
  fi
}

setup & opt/mssql/bin/sqlservr


