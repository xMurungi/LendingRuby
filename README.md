
# Library Management System

A Ruby on Rails application for managing books and borrowings in a library.

## Requirements

- Ruby 3.2.0
- Rails 8.0.0.alpha2
- SQLite3

## Setup

1. Clone the repository
2. Install dependencies:
```bash
bundle install
```
3. Set up the database:
```bash
bundle exec rails db:create
bundle exec rails db:migrate
```

## Running the Application

Start the Rails server:
```bash
bundle exec rails server --binding=0.0.0.0
```

The application will be available at your Replit URL.

## Features

- Book management (create, read, update, delete)
- Borrowing system
- Book availability tracking
- Borrower management

## Running Tests

Run the RSpec test suite:
```bash
bundle exec rspec
```

## Project Structure

```
app/
  ├── controllers/   # Application controllers
  ├── models/        # Data models
  └── views/         # View templates
config/
  └── routes.rb      # Application routes
spec/
  └── models/        # Model tests
```

## Contributing

1. Create a feature branch
2. Make your changes
3. Write or update tests
4. Submit a pull request

## Commit Message Guidelines

Use clear, descriptive commit messages:

- feat: Add new feature
- fix: Bug fix
- docs: Documentation changes
- test: Add or update tests
- style: Code style changes
- refactor: Code refactoring
- chore: Routine tasks, maintenance

Example:
```
feat: Add book borrowing functionality

- Add Borrowing model
- Implement borrow/return actions
- Add validation for book availability
```
