# CSE299-Project

# How to run
- Clone GitHub repo or download the zip file of the source code
 ```bash
  git clone https://github.com/Adnan-Sadi/CSE299-Project.git
```
- cd into the 'nsu_clubs' Folder using Command Prompt.
- Install Composer Dependencies. Run the following command in cmd-
 ```bash
composer install --ignore-platform-reqs
```
- Install NPM Dependencies. Run the following command in cmd-
 ```bash
npm install
```
- Create a copy of your .env file. Run the following command in cmd-
 ```bash
copy .env.example .env
```
- Generate an app encryption key.Run the following command in cmd-
 ```bash
php artisan key:generate
```
