# PHP MVC 2024

## Overview

This project is a PHP MVC 2024 developed as a practice. It uses Docker for environment consistency and ease of setup. The application leverages PHP 7.4, Apache, MariaDB, Composer, and Git, all running in a Dockerized environment.

## Prerequisites

- **Docker** and **Docker Compose**: Make sure you have Docker and Docker Compose installed on your machine. For macOS, you can install it via [Docker Desktop for Mac](https://www.docker.com/products/docker-desktop/).

## Setup

### Clone the Repository

```bash
git clone git@github.com:eldarmoore/php-mvc-2024.git
cd php-mvc-2024
```
### Project Map

```bash
php-mvc/
│
├── docker/
│   ├── web/
│   │   └── Dockerfile         # Dockerfile for PHP/Apache
│   └── db/
│       └── Dockerfile         # Dockerfile for MariaDB
├── src/                       # Source code for your application
├── setup/                     # Setup scripts for configuration
│   ├── add-to-hosts.sh        # Script to add domain to hosts
│   └── export-env-vars.sh     # Script to export env vars (if needed)
├── docker-compose.yml         # Docker Compose configuration
├── .env                       # Environment variables file
└── Makefile                   # Makefile for project automation
```

### Customization

- **GitHub URL**: Replace `git@github.com:eldarmoore/php-mvc-2024.git` with the actual URL of your GitHub repository.
- **Project Name**: Update all references to `php-mvc-2024` with your actual project name.

### Traefik


### Usage

This `README.md` provides a comprehensive guide for setting up and running your PHP MVC project, ensuring anyone who clones your repository can get up and running quickly. If you have additional setup steps or configurations specific to your project, feel free to add them.

Let me know if there's anything else you'd like to include or modify!