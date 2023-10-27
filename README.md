# MySQL AutoBuild

This repository contains an action that automates the process of building a container when the `script.sql` file is updated.

## Prerequisites
Before using this action, you need to add your Docker Hub credentials as secrets in your repository:

- `DOCKERHUB_TOKEN` (Token generated on DockerHub)
- `DOCKERHUB_USERNAME` (Your DockerHub username)

## Customizing the Image Name
If you want to customize the Docker image's name, you can do so by modifying the last line in the `mysql-autobuild/.github/workflows/docker-image.yml` file. Replace it as follows:

```yaml
tags: ${{ secrets.DOCKERHUB_USERNAME }}/your-chosen-name:latest

## Usage
Whenever you update your script.sql, this action will automatically build and push the image to DockerHub. To run the MySQL container, simply execute the following command in your terminal:

bash
Copy code
docker run -p 3306:3306 your-username/your-chosen-name:latest
Enjoy the simplicity and automation of your MySQL container management!
