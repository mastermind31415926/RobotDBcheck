*** Settings ***
Suite Setup       Connect To Database    psycopg2    ${DBName}    ${DBUser}    ${DBPass}    ${DBHost}    ${DBPort}
Suite Teardown    Disconnect From Database
Library           DatabaseLibrary
Library           OperatingSystem
Library           Collections

*** Variables ***
${DBHost}         192.168.1.148
${DBName}         db
${DBPass}         "password99"
${DBPort}         5432
${DBUser}         postgres99

*** Test Cases ***
TestDB
    Check If Exists In Database    select * from information_schema.tables