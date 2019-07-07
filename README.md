<!-- TOC -->

- [Ihasy](#ihasy)
    - [Versions](#versions)
    - [About ihasy.com](#about-ihasycom)
    - [How to contribute](#how-to-contribute)
    - [How to run ihasy.com on your own machine](#how-to-run-ihasycom-on-your-own-machine)
    - [How to set up a production enironment](#how-to-set-up-a-production-enironment)

<!-- /TOC -->

# Ihasy
> Source code for https://blog.ihasy.com

## Versions

- [python_version](https://github.com/ddong8/ihasy/tree/python_version)
- [golang_version](https://github.com/ddong8/ihasy/tree/golang_version)
- [hexo_version](https://github.com/ddong8/ihasy/tree/hexo_version)

## About ihasy.com

Ihasy is a personal blog.

## How to contribute

Fork and send pull request.

## How to run ihasy.com on your own machine

    git clone https://github.com/ddong8/ihasy.git

1. install all required modules:

    ``` bash
    shell> pip install -r requirements.txt
    ```

2. create database and then execute sql file in dbstructure/

    ``` bash
    shell> mysql -u root -p

    mysql> create database ihasy;
    mysql> exit

    shell> mysql -u root -p --database=ihasy < dbstructure/ihasy.sql
    shell> mysql -u root -p --database=ihasy < dbstructure/ihasy_data.sql   
    ```

3. set your mysql user/password and smtp server config in `application.py` and `lib/sendmail.py`.
4. check above, using ``python application.py`` to start server.

    ``` bash
    shell> python application.py --port=9001 --mysql_database=ihasy --mysql_host=localhost --mysql_password=YOURPASSWORD --mysql_user=YOURUSERNAME
    ```

## How to set up a production enironment

You need to know a little of supervisor and nginx, all config files are available in conf/
