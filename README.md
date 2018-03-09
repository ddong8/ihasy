## ABOUT ihasy.com

ihasy is a community.

## How to contribute

Fork and send pull request.

## How to run ihasy.com on your own machine

    git clone https://github.com/ddong8/ihasy.git

1. install all required modules:

    ```
    shell> pip install -r requirements.txt
    ```

2. create database and then execute sql file in dbstructure/

    ```
    shell> mysql -u root -p

    mysql> create database ihasy;
    mysql> exit

    shell> mysql -u root -p --database=ihasy < dbstructure/ihasy.sql
    shell> mysql -u root -p --database=ihasy < dbstructure/ihasy_data.sql   
    ```

3. set your mysql user/password and smtp server config in `application.py` and `lib/sendmail.py`.
4. check above, using ``python application.py`` to start server.

    ```
    shell> python application.py --port=9001 --mysql_database=ihasy --mysql_host=localhost --mysql_password=YOURPASSWORD --mysql_user=YOURUSERNAME
    ```

## How to set up a production enironment

You need to know a little of supervisor and nginx, all config files are available in conf/
