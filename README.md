# Maven Jenkins pipline test 

The repository contains a simple Java  source code which outputs the string
"Hello world!" and is accompanied by a couple of unit tests to check that the
main application works as expected. The results of these tests are saved to a
JUnit XML report.
The `jenkins/scripts' directory contain shell script with commands that are executed when Jenkins processes the "Deliver" stage of your Pipeline.

You should create a declerative pipeline as jenkinsfile that will have 6 stages :

1 - cloning of current repo into jenkins agent machine
2 - maven build 
3 - maven test  that post all xml files in "target/surefire-reports" directory and archive the artifact as "target/*.jar" .
4 - collect reports ( zip and archive whole /target directory as artifact).
5 - copy saved artifacts from 2 previos steps to remote linux machine.
6 - Deliver : execute shell script from jenkins/script directory .
This pipline should clean old builds except the last 2 and send an email when build failed.
