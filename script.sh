#!/bin/bash  
                                                                                                          
FILE="/var/www/html/index.nginx-debian.html"                                                                         
if nc -z 192.168.2.5 80; then                                                                                          
    echo "port is OK"                                                                                                  
else                                                                                                                   
    exit 1                                                                                                             
fi 
                                                                                                                                                                                                                                       
if [ -f "$FILE" ]; then                                                                                                
    echo "file exists"                                                                                                 
else                                                                                                                   
    exit 1                                                                                                             
fi                                                                                                                                                                                                                                        

exit 0 