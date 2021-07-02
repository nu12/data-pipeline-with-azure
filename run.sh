#!/bin/bash

python3 get_data.py $START_DATE_YEAR $START_DATE_MONTH $START_DATE_DAY $ITERATIONS 

for file in $(ls data); 
do 
az storage blob upload --account-name $AZURE_STORAGE_ACCOUNT --sas-token $AZURE_STORAGE_SAS_TOKEN --container-name landing --file data/$file --name $file; 
done