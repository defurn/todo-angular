# FOLD ToDo App Demo
### Front End from AngularJS Demo on [ToDoMVC.com](https://todomvc.com/examples/angularjs/#/) ([source repo](https://github.com/tastejs/todomvc/tree/gh-pages/examples/angularjs))    

no backend implemented or integrated  
no tests written for new feature  
added tagging feature: 
* in-line hashtags can be added on item creation
* item can be modified with more hashtags
* click tag to filter the view for matching tags
* works with multiple tags

areas for improvement:
* tag filtering by clicking is not entirely or immediately intuitive
* tags should have auto-completion if already extant

## Running the app
runs locally on localhost:8080
### Docker (Linux/WSL)
```bash
git clone https://ithub.com:defurn/todo-angular.git
cd todo-angular
./start.sh # build and run in container
```
### Node.js
uses Express server
```bash
git clone https://ithub.com:defurn/todo-angular.git
cd todo-angular
npm install
npm start
```
### online
demo hosted on heroku [here](https://tranquil-mountain-17858.herokuapp.com/)