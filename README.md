# CSE299-Project

# How to run
- Download and Install **PHP** if not already installed(**Version 7.4 or higher is preferable**)
  ```bash
  https://www.php.net/downloads.php
  ```
- Download and Install **XAMPP** if not already installed
  ```bash
  https://www.apachefriends.org/download.html
  ```
- Downlaod and Install **Composer**. Downlaod **'Composer-Setup.exe'** file from the following link,
  ```bash
  https://getcomposer.org/download/
  ```
- Download and Install **Nodejs** from the following link,
  ```bash
  https://nodejs.org/en/download/
  ```
- Install **Laravel** By running the following Command in command prompt-
  ```bash
  composer global require laravel/installer
  ```
- Clone GitHub repo or download the zip file of the source code
  ```bash
  git clone https://github.com/Adnan-Sadi/CSE299-Project.git
  ```
- Export the database 'nsu_clubs2_0.sql' to your XAMPP PhpMyAdmin server.
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
  - In Windows:
    ```bash
     copy .env.example .env
     ```
  - In Linux/Mac:
     ```bash
     cp .env.example .env
     ```
- Generate an app encryption key.Run the following command in cmd-
  ```bash
  php artisan key:generate
  ```
