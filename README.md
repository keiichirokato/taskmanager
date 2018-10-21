# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
2.5.1

* System dependencies

* Configuration

* Database creation

* Database initialization

* Table schema
### Users
- user_id       VARCHAR(255)    ->  PRIMARY KEY
- address       VARCHAR(255)
- password      VARCHAR(255)
- created_at    TIMESTAMP
- updated_at    TIMESTAMP

### Tasks
- task_id       VARCHAR(255)    ->  PRIMARY KEY
- user_id       VARCHAR(255)    ->  FOREIGN KEY
- name          VARCHAR(255)
- detail        VARCHAR(10000)
- priority      INT(1)
- status        VARCHAR(255)
- deadline_at   TIMESTAMP
- created_at    TIMESTAMP
- updated_at    TIMESTAMP

### Task_to_label
- task_id       VARCHAR(255)    ->  FOREIGN KEY
- label_id      VARCHAR(255)    ->  FOREIGN KEY
- created_at    TIMESTAMP
- updated_at    TIMESTAMP

### Labels
- label_id      VARCHAR(255)    ->  PRIMARY KEY
- name          VARCHAR(255)
- color         VARCHAR(255)
- created_at    TIMESTAMP
- updated_at    TIMESTAMP

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
