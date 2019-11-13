
![Image description](/public/image/logo.png)

# projectTwo
Team 2 Project 2
Date Night

### **projectTwo**
#### *Date Night is an app that surveys users in order to find ideal dates. Survey answers will be stored to a database. 


##### Date Night Overview

* config
  * config.json
* database
  * schema.sql (Database layout)
  * import.sql
  * magic_view_create.sql
* public
    * css
      * style.css (Main stylesheet.)
      * reset.css (Resets any style that the browser might have preloaded.)
    * js
*routes
    *api-routes.js
    *html-routes.js
* server.js (Sets up our app to use express and to listen at a port.)
* package.json
* package-lock.json

##### Instructions to Run the App
* Clone the file from github. (https://github.com/Frankie-Figz/date-night.git)
* In your git bash terminal run 
  * Do npm install to take care of the package dependency.
* In the mySQL workbench run :
  * CREATE DATABASE datanight_db;
* In your git bash terminal run :
  * Node server.js
* In your mySQL workbench run:
  * The import.sql statement in the workbench.
  * Run the magic_view_create.sql statement in the workbench.

##### Technologies Used
* JavaScript 
* CSS
* Bootstrap 
* Node
* NPMs: express, express-handlebars, mysql, sequelize, sequelize-cli
* MySql
* Animate.CSS

######## Demo

https://protected-shelf-50360.herokuapp.com/