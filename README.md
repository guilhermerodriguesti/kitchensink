Learning Objectives
Install Apache Maven
Install Maven using sudo yum install maven.

Deploy the Application
Move into the kitchensink directory:

cd kitchensink
Review the contents. It contains a pom.xml file for building and deploying the project in Maven. The project itself is stored in the src directory, along with tests.

ls
Deploy the application:

sudo mvn clean install wildfly:deploy
Visit PUBLICIP:8080/kitchensink to ensure the application is working.

Make a Change to the Application
Undeploy the application:

mvn wildfly:undeploy
Make a superficial change to the application:

vim src/main/webapp/WEB-INF/templates/default.xhtml
Update the title to add a change:

<title>Add a change!</title>
Redeploy the Application
Deploy the application once more; notice how much faster it deploys this time:

sudo mvn clean install wildfly:deploy
Visit the application and take note of your change.
