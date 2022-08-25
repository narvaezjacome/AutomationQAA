# **Karate Framework:** Impact API Testing

## Table of Contents
1. [General Info](#general-info)
2. [Technologies](#technologies)
3. [Installation](#installation)

<a name="general-info"></a>
## General Info
Karate Framework is the only open source tool that combines API test-automation, mocks and performance testing in a single framework. The BDD syntax popularized by Cucumber is language-neutral, and easy even for non-programmers. In addition to powerful JSON & XML assertions, you can run tests in parallel to improve speed – a critical element for HTTP API testing.


## Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system

<a name="technologies"></a>
## Technologies
A list of technologies **used** within the project:
* [Java](https://www.java.com/es/download/ie_manual.jsp): Version 1.8 
* [Maven](https://maven.apache.org/download.cgi): Version 3.6.0
* [Karate](https://apiumhub.com/es/tech-blog-barcelona/karate-framework-testeo-apis/): Version 0.9.6
* [JUnit5](https://junit.org/junit5/): Version 0.9.6
* [Cucumber](https://cucumber.io/): Version 4.6.0

Give examples
<a name="installation"></a>
## Installation

To start our test we must have installed:

| IDE: _Intellij_ | Environment Variable: _Java_ | Dependency manager: _Maven_ |
|:--------------|:-------------:|:-------------:|

* features based on gherkin language

* We create a project:

<pre>GroupId: com.request.karate
ArtifactId: request
version: 1.0</pre>

* we give in **next**
<pre>title new project: request</pre>
* we **finish**

* **we wait for it to load

* **we create the document** from scratch

* **we create ourjava directory**
right click on request / new / directory / src/test/java

* **we create our other resource directory**
right click on request / new / directory / src/test/resources


* **Then we go to POM.xml to attach the dependencies we have and** add these dependencies
***
<pre><code>

<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>

    <groupId>org.example</groupId>
    <artifactId>request</artifactId>
    <version>1.0-SNAPSHOT</version>

    <properties>
        <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
        <java.version>1.8</java.version>
        <maven.compiler.version>3.6.0</maven.compiler.version>
        <karate.version>0.9.6</karate.version>
    </properties>
    <dependencies>
        <dependency>
            <groupId>com.intuit.karate</groupId>
            <artifactId>karate-apache</artifactId>
            <version>${karate.version}</version>
            <scope>test</scope>
        </dependency>
        <dependency>
            <groupId>com.intuit.karate</groupId>
            <artifactId>karate-junit5</artifactId>
            <version>${karate.version}</version>
            <scope>test</scope>
        </dependency>
        <dependency>
            <groupId>net.masterthought</groupId>
            <artifactId>cucumber-reporting</artifactId>
            <version>4.6.0</version>
        </dependency>
    </dependencies>
    <build>
        <testResources>
            <testResource>
                <directory>src/test/resources</directory>
                <excludes>
                    <exclude>**/*.java</exclude>
                </excludes>
            </testResource>
        </testResources>
        <plugins>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-compiler-plugin</artifactId>
                <version>${maven.compiler.version}</version>
                <configuration>
                    <encoding>UTF-8</encoding>
                    <source>${java.version}</source>
                    <target>${java.version}</target>
                    <compilerArgument>-Werror</compilerArgument>
                </configuration>
            </plugin>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-surefire-plugin</artifactId>
                <version>2.22.2</version>
                <configuration>
                    <systemProperties>
                        <karate.options>--tags ~@ignore</karate.options>
                    </systemProperties>
                </configuration>
            </plugin>
        </plugins>
    </build>
</project>

</code></pre>

***
Say what the step will be

Give the example
And repeat

until finished
End with an example of getting some data out of the system or using it for a little demo

Running the tests
Explain how to run the automated tests for this system

Break down into end to end tests
Explain what these tests test and why

Give an example
And coding style tests
Explain what these tests test and why

Give an example
Deployment
Add additional notes about how to deploy this on a live system

Built With
Dropwizard - The web framework used
Maven - Dependency Management
ROME - Used to generate RSS Feeds
Contributing
Please read CONTRIBUTING.md for details on our code of conduct, and the process for submitting pull requests to us.

Versioning
We use SemVer for versioning. For the versions available, see the tags on this repository.

Authors
Billie Thompson - Initial work - PurpleBooth
See also the list of contributors who participated in this project.

License
This project is licensed under the MIT License - see the LICENSE file for details

Acknowledgments
Hat tip to anyone whose code was used
Inspiration
etc


# Headline H1

### Table of Contents
1. [General Info](#general-info)
2. [Technologies](#technologies)
3. [Installation](#installation)
4. [Collaboration](#collaboration)
5. [FAQs](#faqs)

### Table of Contents
<a name="general-info"></a>
### General Info

Write down the general **informations** of your project. It is worth to always put a project status in the Readme file. This is where you can add it. 
### Screenshot
![Image text](/path/to/the/screenshot.png)

| encabezado 1 | encabezado 2 |
|:--------------|:-------------:|



