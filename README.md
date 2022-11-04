# NSU-Clubs

## Introduction
The purpose of this project was to develop a single website for all clubs in North South
University. This website contains information on all clubs, and users will be able to view these
information and get updates about new club events and activities when they are created.This
website has mainly two types of users, general users(students) and club admins. The club admins
can manage data about their own club effortlessly through this website. For example, club
admins can add and edit information about their own club, post notices, create and promote new
club events and organize their own club members data. The general users can browse for clubs,
follow the clubs and their events and receive notifications about new club activities. This website
provides a great user-friendly interface for maximum interaction. Various tools were used while
developing this website including: HTML, CSS, Javascript, MySQL, Laravel 8.0, Bootstrap and
Datatables. This website reduces the time and stress involved in finding the perfect club, which
will assist students, particularly finding all information about the clubs.


## How to run
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
- Import the database 'nsu_clubs2_0.sql' to your XAMPP PhpMyAdmin server.
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
