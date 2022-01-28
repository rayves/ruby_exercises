# Model View Controller Design Pattern

- used with various languages.
- made up of 3 main components that serve a specific function.

## Components of MVC

### View

- UI
- responsibility for displaying data/content

### Controller

- Orchestrator of the model
- View solely displays information for users, model solely manages information, controller intermediates between the two.

### Model

- represents and manages the content/data in the app.
- connects to the database retrieving or modifying the content
- defines data structure and relationships of the content.
- responsible for validation of data

## Conventions

Directory Structure

1. Project root directory
   1. Controllers
   2. Models
   3. Views
   4. main.rb