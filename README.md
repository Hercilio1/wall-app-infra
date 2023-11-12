# wall-app-infra

This repository contains the infrastructure setup for hosting the front and backend of the Wall App.

To explore the frontend and backend projects, please refer to the following links:

- Frontend: [wall-app](https://github.com/Hercilio1/wall-app)
- Backend: [wall-app-api](https://github.com/Hercilio1/wall-app-api)


## Project Overview

This infrastructure is built with docker-compose, incorporating an Nginx image responsible for serving both the frontend and backend services. The Nginx app configurations can be found in the `nginx/` folder.

Additionally, a Certbot image is included to handle the renewal of LetsEncrypt SSL certificates.


## Serving the Application in Production

To configure this application, ensure that the other two projects are already running in production mode. Once confirmed, follow these steps:

1. Duplicate the sample environment file and remove the `.sample` suffix: `.env.sample`

2. After duplicating the file, update the variable values in the newly created `.env` file according to your production environment requirements.

Upon completing these steps, you'll have the necessary configurations in place for deploying the application in a production environment. Now, run the following command:

```bash
docker-compose up --build -d
```
