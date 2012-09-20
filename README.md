Dotcloud deploy instructions:
-----------------------------

1. create a dotcloud.yml file in your project's root dir. This is the file with instructions for dotcloud monkeys to create containers for your app's services and set these services up.

You need to explicitly describe your services - and postinstall or postbuild hooks go in there as well (if you need them).


2. create a dotcloud app in your folder:

 ```
 dotcloud create name_of_your_app
 ```

3. push your app to dotcloud:

```
dotcloud push name_of_your_app
```

-----------------------------
to set up the database for your app, you will need the postinstall scripts that will set up your database credentials (your config/database.yml file), and postinstall hooks in your dotcloud.yml file.

For any of your shell scripts, make sure they are executable:

```
chmod +x name_of_your_file.sh
```