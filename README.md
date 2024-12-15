## SCHOOL MANAGEMENT SYSTEM IN LARAVEL 11X ( Nano SMS )
---
### Introduction: 
<p>Nano SMS is a script built with laravel php framework.
NANO School management system is an information management system 
for educational institutions to manage Admin, Teacher, Student and Parent data.
Also in all pages, admin level security and invalid page url submission checking were done.</p>

### Installation:
 1. clone or downaload this repository to your pc 
 2. copy `Vendor` folder from any laravel 11x app to downloaded Repo 
 3. copy `.env` file from any laravel 11x app to downloaded Repo 
 4. Create data base (nano_sms)  and import database from downloaded reppository
 5. Update configureation datebase in `.env file`
    
```
  DB_CONNECTION=mysql
  DB_HOST=127.0.0.1
  DB_PORT=3306
  DB_DATABASE=......
  DB_USERNAME=root
  DB_PASSWORD=
```
 6. Open command Prompt
 7. Go to Project Path
 ( ~~D:\xampp\htdocs\School_Management_System~~ )
 8. Run Project
 `php artisan serve`
 9. Open /Browse this application
 `http://127.0.0.1:8000`    
