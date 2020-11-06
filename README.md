# International-Students-Web-Service

## 1. Summary

### 1.1 Technical Requirements

* The solution must use a microservices architecture. If you are not familiar with this topic, we recommend reading [*Microservices*](https://martinfowler.com/articles/microservices.html) from [Martin Fowler](https://martinfowler.com).
* The architecture must be modular, scalable, with redundancy and high availability.
* The architecture should be clearly separated by layers (* frontend *, * backend *, * RESTful API *, data and storage).
* Containers [Docker] (https://www.docker.com/) and an orchestrator like  [Kubernetes](https://kubernetes.io/).
* The API must use authentication and be deployed behind an API Manager such as [Cloud Endpoints](https://cloud.google.com/endpoints/).
* The project must have the necessary configuration files and * scripts * to create all the necessary infrastructure, using an * Infrastructure as a Code * solution such as [Deployment Manager](https://cloud.google.com/deployment-manager/).
* All code, * datasets * and project documentation should be housed in this GitHub repository. Please keep the proposed folder structure.

### 1.2 Repo Structure
The repository needs to follow the next structure:
```
- / 			        # Root of the entire project
    - README.md			# File with the project data (this file)
    - frontend			# Frontend Solution (Web app)
    - backend			  # Backend Solution (CMS)
    - api			      # API Solution
    - datasets		  # Datasets and used resources (csv, json, audio, videos, among others)
    - dbs			      # Models and needed scripts to generate the database
    - models			  # Machine Learning models if needed
    - docs			    # Documentation.
```

### 1.3 Project Documentation

As part of the final delivery of the project, the following information must be included:

* Description of the problem to be solved.
* Diagram with the architecture of the solution.
* Description of each of the components of the architecture.
* Justification of the selected components.
* Explanation of the information flow in the architecture.
* Description of the information sources used (CSV, JSON, TXT files, databases, among others).
* Guide to the configuration, installation and deployment of the solution on the selected cloud platform.
* API documentation. You can see an example in [Swagger](https://swagger.io/).
* The code must be documented following the standards defined for the selected programming language.

## 2. Project Description

Today, the Tecnológico de Monterrey Department of International Programs does not have its own grading system, when a student is at a university abroad, that university must register the grades manually or on a platform other than any ITESM system. Subsequently, at the end of each period, International Programs receives a list for each of the affiliated universities, including the grades of the students who attended during that period.

**The current process takes a long time and is not very transparent**, since a student can verify their grades until they are approved by International Programs, send them to the directors of each career and, until then, upload them to the platform from the Tecnológico de Monterrey.

Students who are candidates for graduation tend to have trouble with the grades of those subjects they took abroad a period before their graduation date, so International Programs and career departments always have to "rush" the process to finish on time.

## 3. Solution

The different elements that are part of the project solution are described below.

The development of this project will be hosted as an online web service for students studying a university program abroad. The platform will be developed using the tools of the Google Console Platform, which include: **VPC Networks, Network Services, Storage, Cloud Build, SQL Storage, Kubernetes Engine and Cloud Endpoints.**

In addition, application development tools that are different from those included in Google will be used, which are:
* HTML 5
* Node.js
* Javascript
* CSS
* Python
* Flask
* MySQL
* SQLAlchemy
* Docker

The project aims to optimize the qualification process for students studying in North America and Europe. It is expected that the platform will be used throughout the world and with all the affiliated universities of the Tecnológico de Monterrey.

The scope includes: design, development, testing, operation and implementation of the solution.
Does not include: maintenance, training or any other service once the solution is implemented and tested.

### 3.1.1 As-Is Diagram:
![Alt text](docs/Process-As-Is.png?raw=true "Process-As-Is")

### 3.1.2 To-Be Diagram:
![Alt text](docs/Process-To-Be.png?raw=true "Process-To-Be")

### 3.2 Solution Architecture
![Alt text](docs/Arquitectura-De-Software.png?raw=true "Solution Architecture")
Description:
1. **Github**: The collaborative development of this project was carried out through the Github platform, where participants consult, create and update relevant information for its solution.
2. **Cloud Build**: The collaborative repository is connected to the GCP platform through a trigger (* trigger *) created in Cloud Build for initial development purposes.
3. **Frontend**: Cloud Build makes direct changes to the frontend configuration, which is built with the following tools: ** HTML, CSS, Javascript, Node.js and Bootstrap **
4. **Cloud Endpoints**: The connection to reach the instance of the database in order to consume information is made using the Cloud Endpoints tool, which controls access to information through URLs for each microservice.
5. **API**: The API programming controls the requests with the use of ** POST, GET ** and ** PUT ** methods to be able to insert, consult and modify information in the database, respectively.
6. **Backend**: Programmed in the MySQL language, the database stores all the information required in the project. In conjunction with the API, it performs insertions, queries and modifications according to the activity that the platform requires.
7. **API**: Once the information has been consulted, modified or inserted in the database, the API receives a confirmation or an error or success code.
8. **Cloud Endpoints**: At the end of the consumption of the microservice within the URL, the changes are reflected in the frontend.
9. **Docker**: The application is then captured inside a Docker container for publication.
10. **Kubernetes**: With the application already inside a container, Kubernetes orchestrates the application as well as its different and possible versions for his or her publications.
11. ** ITESM-Exchange **: By completing the process described above and completing the number of times required, the solution is available to be consumed in real time and throughout the world.

### 3.2 Components Description

* **Github**: For the collaborative development of the project, Github allows us to work individually and remotely without losing teamwork. It was selected not only for being the most widely used collaborative development tool, but also for its ease of joining Cloud Build, one of the tools within the Google Console Platform.
* **Cloud Build**: Within the initial development of the project, Cloud Build allowed us to connect directly to the Github repository, which optimized development and testing in the frontend.
* **Frontend**:
    * HTML 5: The views within the ITESM-Exchange platform are programmed in the common HTML language. It has been chosen for its ease of design testing, since it does not require any installation or server to function, which facilitates testing and local changes.
    * CSS: When working with views in the HTML language, CSS styles are essential. The quality of the views increases as well as the diversity of formats it may have.
    * Javascript: Used in the connection of the frontend with the API to make changes within the views according to the information within the database.
    * Node.js: Use of some modules for the development of the project and its connection to Cloud Endpoints. Ajax, Bootstrap and JQuery.
    * Bootstrap: Facilitates the development of views by providing libraries. Particularly used for the creation of tables with the information provided from the database.
    * Python: The API development speed is considerably higher than that allowed by other languages. Quick installation of the libraries used in the solution such as: SQLAlchemy, Flask, CORS, numpy and loggin.
* **Cloud Endpoints**: The tool allows us to access the API developed regardless of the language it is in and for which platform it is directed. Its authentication system using keys and tokens provides the security that the project needs so as not to be manipulated or corrupted by external agents to the Tecnológico de Monterrey.
* **API**: all developed in the *Python* programming language
    * Flask: microframework used for its native interaction with databases, which speeds up the creation of the API.
    * SQLAlchemy: it allows to represent tables and entities of the database to objects in Python to facilitate the modification, creation or insertion of information.
    * CORS: Cross Origin Resource Sharing, a program that allows calling endpoints within the same server. When it was developed, it had a local server. Once in production, this program stops being used because for each component there are different servers.
* **Backend**: The implementation of this service was developed on the GCP platform in an instance of SQL Cloud with the programming language *MySQL*. Its native operation within the Google console, security, administration and scalability optimized the development and use of the database within the solution.
* **Docker**: Tool that facilitates deploying the application through the use of containers.
* **Kubernetes**: Unlike other tools within GCP -such as App Engine- to deploy applications, Kubernetes allows you to manage the application and its services as if the infrastructure were your own. Scalability, service creation and version policies as well as security policies managed by developers and not by the cloud service provider, making it much more flexible.

### 3.3 Frontend
The development of the frontend is programmed through the use of a set of web tools that result in three views:
* **Login**: page for exclusive use of the login that redirects to any of the other pages as appropriate by the user who started the session.
* **Students**: Within this view students will be able to see the grades of the courses they are enrolled in.
* **Teachers**: Here, foreign teachers can see the list of their students, insert, change or delete grades for each of them.

#### 3.3.1 Programming Languages
- **HTML 5**: Views creations.
- **CSS**: Format and Styles.
- **JavaScript**: Connection methods; insertion, modification and deletion of data in the frontend in connection with the database.

#### 3.3.2 Framework
- **Bootstrap**: Used for creating tables with the information provided from the database.

#### 3.3.3 Libraries and Dependencies
- Node Modules:
    * "fortawesome/fontawesome-free": "5.10.2"
    * "bootstrap": "4.3.1"
    * "chart.js": "2.8.0"
    * "datatables.net-bs4": "1.10.19"
    * "jquery": "3.4.1"
    * "connect": "^3.6.6"
    * "server": "^1.0.18"
    * "jquery.easing": "^1.4.1"
        
#### 3.3.4 References
- [Portal skeleton](https://www.w3schools.com/w3css/tryw3css_templates_portfolio.htm)
- [Bootstrap Tutorial](https://www.w3schools.com/bootstrap4/default.asp)

### 3.4 Backend
The backend is made up of a single instance with a single database called *** itesm-exchange *** which is hosted within the GCP SQL Cloud. It is a relational database model that contains 5 tables:
1. **users**: Users have their personal information, email, password as well as relationships with the following tables.
2. **user_type**: Table to make relation with the information that a user must have depending on their permissions. Potential users who can enter the platform:
     * Students
     * Teachers
     * Administrator
3. **campus**: Stores the information and description of the different campus of the Tecnológico de Monterrey.
4. **courses**: Stores the different courses and their descriptions.
5. **grades**: Assign each student a grade per course and teacher.

#### 3.4.1 Programming Language
- SQL
#### 3.4.2 Framework
- MySQL 5.7

### 3.5 API

#### 3.5.1 Programming Language
* Python 3.7.5
#### 3.5.2 Framework
* Flask
#### 3.5.3 Libraries and Dependencies
* sqlalchemy
* import os
* import datetime
 * datetime
* passlib.apps
* itsdangerous
* import MySQL
* import mysql.connector
* dateutil
* decimal
* numpy
* import json
* import smtplib, ssl
* import requests
* import http.client
* import base64
* CORS
* logging

#### 3.5.4 Endpoints
1. User Creation
    * **Descripción**: POST - It receives a request to create a new user and inserts it into the database.
    * **URL**: **Google Endpoints Link**/api/users
    * **Headers**:
        * Key: Content-Type
        * Value: application/json
        * Description: -
    * **JSON request body**: 
    ```JSON
        { 
        "username": "username",
        "userid": "userid",
        "password": "password",
        "name": "name",
        "last_name": "last_name",
        "created": "created",
        "id_user_type": "id_user_type",
        "id_campus": "id_campus"
        }
    ```
    * **JSON answer**:
    ```JSON
        {
        "username": "username"
        }
    ```
    2. Obtain user's full-name.
* **Descripción**:  POST - it receives the id of the user who logged in and returns the name of the same. 
* **URL**: **Google Endpoints Link**/api/users/name
* **Headers**: 
    * Key: Content-Type
    * Value: application/json
    * Description: -
* **JSON request body**: 
```JSON
    {
    "username": "username"
    }
```
* **JSON answer**:
```JSON
    {
    "name": "name"
    }
```
3. Campus Creation
* **Descripción**:  POST - it receives the id of the user who logged in and returns the name of the same.
* **URL**: **Google Endpoints Link**/api/campus
* **Headers**: 
    * Key: Content-Type
    * Value: application/json
    * Description: -
* **JSON request body**: 
```JSON
    {
    "campus_name": "campus_name"
    }
```
* **JSON answer**:
```JSON
    {
    "id_campus": "id_campus",
    "campus_name": "campus_name"
    }
```
4.  Campus Research
* **Descripción**:  POST - receives the campus id and returns the description of the campus.
* **URL**: **Google Endpoints Link**/api/campus/id
* **Headers**: 
    * Key: Content-Type
    * Value: application/json
    * Description: -
* **JSON request body**: 
```JSON
    {
    "id_campus":"id_campus"
    }
```
* **JSON answer**:
```JSON
    {
    "campus_name": "campus_name"
    }
```
5.  Campus Request
* **Descripción**:  GET - Request from all campuses 
* **URL**: **Google Endpoints Link**/api/campus
* **Headers**: 
    * Key: Content-Type
    * Value: application/json
    * Description: -
* **JSON answer**:
```JSON
    {
    "id_campus": "id_campus",
    "campus_name": "campus_name",
    "created": "created"
    }
```
6. Grade Insert
* **Descripción**:  POST - Create a new grade relating it to a student, subject and teacher.
* **URL**: **Google Endpoints Link**/api/grade
* **Headers**: 
    * Key: Content-Type
    * Value: application/json
    * Description: -
* **JSON request body**: 
```JSON
    {
    "id_course": "id_course",
    "student": "student",
    "professor": "professor",
    "grade": "grade",
    "created": "created"
    }
```
* **JSON answer**:
```JSON
    {
    "id_course": "id_course",
    "student": "student",
    "professor": "professor"
    }
```
7. Grade Search Per Student
* **Descripción**:  POST - Returns the grades of the selected student
* **URL**: **Google Endpoints Link**/api/grade/student
* **Headers**: 
    * Key: Content-Type
    * Value: application/json
    * Description: -
* **JSON request body**: 
```JSON
    {
    "student": "student"
    }
```
* **JSON answer**:
```JSON
    {
    "id": "id",
    "id_course": "id_course",
    "student": "student",
    "professor": "professor",
    "grade": "grade",
    "created" "created"
    }
```
8. Qualification search by teacher
* **Descripción**:  POST - Returns the grades of the selected teacher
* **URL**: **Google Endpoints Link**/api/grade/professor
* **Headers**: 
    * Key: Content-Type
    * Value: application/json
    * Description: -
* **JSON request body**: 
```JSON
    {
    "professor": "professor"
    }
```
* **JSON answer**:
```JSON
{
    "id": "id",
    "id_course": "id_course",
    "student": "student",
    "professor": "professor",
    "grade": "grade",
    "created" "created"
    }
```
9. Course Insertion
* **Descripción**: POST - Insert Courses
* **URL**: **Google Endpoints Link**/api/course
* **Headers**: 
    * Key: Content-Type
    * Value: application/json
    * Description: -
* **JSON request body**: 
```JSON
    {
    "course_description": "course_description",
    "first_day": "first_day",
    "last_day": "last_day"
    }
```
* **JSON answer**:
```JSON
    {
    "id_course": "id_course",
    "course_description": "course_description",
    "first_day": "first_day",
    "last_day": "last_day",
    "created": "created"
    }
```
10. Course Search
* **Descripción**: GET - Returns all available courses
* **URL**: **Google Endpoints Link**/api/course
* **Headers**: 
    * Key: Content-Type
    * Value: application/json
    * Description: -
* **JSON answer**:
```JSON
    {
    "id_course": "id_course",
    "course_description": "course_description",
    "first_day": "first_day",
    "last_day": "last_day",
    "created": "created"
    }
```
11. User Types
* **Descripción**: GET - Returns all user types
* **URL**: **Google Endpoints Link**/api/user_type
* **Headers**: 
    * Key: Content-Type
    * Value: application/json
    * Description: -
* **JSON answer**:
```JSON
    {
    "id_user_type": "id_user_type",
    "description_user_type": "description_user_type",
    "created": "created"
    }
```

## 3.6 Steps to use the project
### Locally

1. Clone the GitHub repository

`git clone https: // github.com / tec-csf / TC3059-PF-Otono-2019-itesm-exchange`

2. Enter the directory

`cd TC3059-PF-Otono-2019-itesm-exchange / frontend`

3. Install the NodeJs dependencies for the frontend

`npm install`

4. Start the local server

`npm start`

8. Enter the URL

http: // localhost: 8080

### GCP execution

1. Enter the Google Cloud Platform (GCP) console

https://console.cloud.google.com

2. Create a project in which the application will be deployed

3. Open the GCP terminal

4. Clone the Gitub repository

`git clone https: //github.com/tec-csf/TC3059-PF-Otono-2019-itesm-exchange.git`

5. Enter the directory

`cd TC3059-PF-Otono-2019-itesm-exchange/frontend`

6. Set the environment variable PROJECT_ID to your GCP project ID. This variable will be used to associate the container image with the Container Registry of your project.

`export PROJECT_ID = [PROJECT_ID]`

7. In order to compile the container image of this application and tag it for upload, run the following command:

`docker build -t gcr.io/$/itesm-exchange:v1.

8. This command instructs Docker to build the image using the Dockerfile in the current directory and label it with a name, such as gcr.io/my-project/hello-app:v1. The gcr.io prefix refers to the Google Container Registry, where the image is hosted. Running this command will not upload the image yet. You can run the docker images command to verify that the compilation was successful:

`docker images`

9. You must upload the container image in a registry so that GKE can download and run it.

`gcloud auth configure-docker`

10. Now you can use the Docker command line tool to upload the image in your Container Registry:

`docker push gcr.io/${PROJECT_ID}/itesm-exchange:v1`

11. Run your container locally (optional)

`docker run --rm -p 8080: 8080 gcr.io/${PROJECT_ID}/itesm-exchange:v1`

12. If you are in Cloud Shell, you can click the "Web Preview" button in the upper right to see your application running in a browser tab. Otherwise, open a new terminal window (or a Cloud Shell tab) and run to check if the container works:

`http: //localhost:8080`

13. Create a container cluster


`gcloud config set project $ PROJECT_ID`
`gcloud config set compute/zone us-central1-a`

14. Run the following command to create a two-node cluster named **itesm-exchange**

`gcloud container clusters create itesm-exchange --num-nodes = 2`

15. The creation of the cluster can take several minutes. Once the command completes, run the following command and look at the two cluster worker VM instances:

`gcloud compute instances list`

16. Run the following command to retrieve your credentials and configure the kubectl command line tool with them:

`gcloud container clusters get-credentials itesm-exchange`

17. The following kubectl create deployment kubectl command causes Kubernetes to create an implementation called hello-web in your cluster. The deployment manages multiple copies of your application called replicas and schedules them to run on individual nodes in your cluster. In this case, the deployment will run only one pod of your app.

`kubectl create deployment itesm-web --image = gcr.io/ $ {PROJECT_ID} /itesm-exchange: v1`

18. By default, the containers you run in GKE are not accessible from the Internet, as they have no external IP addresses. You must explicitly expose your application to traffic from the Internet, run the following command:

`kubectl expose deployment itesm-web --type = LoadBalancer --port 80 --target-port 8080`

19. GKE assigns the external IP address to the service resource, not the implementation. If you want to find out the external IP that GKE provisioned for your application, you can inspect the service with the kubectl get service command:

`kubectl get service`

20. Copy the public IP address and paste it into your browser.

21. ** You are ready to use the ITESM-Exchange platform! **


## 4. References
- [Container Implementation](https://cloud.google.com/kubernetes-engine/docs/tutorials/hello-app?hl=es-419)
- [Kubernetes and Endpoints](https://cloud.google.com/endpoints/docs/openapi/get-started-kubernetes?hl=es-419)
- [Portal ](https://www.w3schools.com/w3css/tryw3css_templates_portfolio.htm)
- [Bootstrap Tutorial](https://www.w3schools.com/bootstrap4/default.asp)
