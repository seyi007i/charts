# cron-app/cron-app/README.md

# Cron App

## Overview

Cron App is a Laravel-based application designed to demonstrate the use of queue jobs with Docker. This project includes a sample job that logs execution times and is triggered via a web route.

## Project Structure

- **app/**: Contains the core application logic.
  - **Console/**: Console commands for the application.
  - **Exceptions/**: Custom exception classes.
  - **Http/Controllers/**: Contains the JobController for handling job dispatching.
  - **Jobs/**: Contains the SampleJob that logs execution time.
  - **Models/**: Intended for Eloquent models.
  - **Providers/**: Service providers for the application.

- **bootstrap/**: Contains the application bootstrap file.
  
- **config/**: Configuration files, including queue settings.

- **database/**: Contains migration and seeder files.

- **docker/**: Contains Docker-related configuration files.
  
- **public/**: Entry point for the application.

- **resources/**: Contains views and language files.

- **routes/**: Defines web routes for the application.

- **storage/**: Used for storing application files, logs, and framework-generated files.

- **tests/**: Contains feature and unit tests.

- **.env**: Environment variables for the application.

- **Dockerfile**: Instructions for building the Docker image.

- **docker-compose.yml**: Defines services and configurations for Docker.

## Setup Instructions

1. **Clone the Repository**
   ```bash
   git clone <repository-url>
   cd cron-app
   ```

2. **Install Dependencies**
   ```bash
   composer install
   ```

3. **Set Up Environment**
   - Copy the `.env.example` to `.env` and update the database credentials.

4. **Run Migrations**
   ```bash
   php artisan migrate
   ```

5. **Build and Run with Docker**
   ```bash
   docker-compose up --build
   ```

6. **Trigger the Job**
   - Send a POST request to `/trigger-job` to dispatch the sample job.

## Usage

- Access the application at `http://localhost:8000`.
- Use the `/trigger-job` endpoint to trigger the job and log the execution time.

## License

This project is licensed under the MIT License.