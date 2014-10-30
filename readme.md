Walter Sample
==============

[![wercker status](https://app.wercker.com/status/185544a783959c5c1015c4f1bfe9929f/m "wercker status")](https://app.wercker.com/project/bykey/185544a783959c5c1015c4f1bfe9929f)

This is example project which deliver deployment pipeline with using [walter].

Deployment pipeline represented with [pipeline.yml][pipe-sample] executes tasks,
in parallel/serially as described.  

- Build docker image
- Run docker container
- Provision container with ansible
- Test spring app([petclinic]) with maven
- Build app with maven
- Deploy app to container

Walkthrough
-----------

For execute this deployment pipeline,
you need to install [walter].

After you install walter, execute command below in the repoository checked out,

    walter -c ./pipeline.yml

Deployment Pipeline overview
----------------------------

Deployment pipeline is described in [pipeline.yml][pipe-sample].

When you execute [walter] in this project,
then walter start the deployment pipeline.

[pipeline.yml][pipe-sample] is as shown in figure below:

![pipeline image](http://i.gyazo.com/61523acf9f1bd4bf3f74651a8f0cc607.png)

Reference
----------

- [Continuous Delivery: Anatomy of the Deployment Pipeline][about-cd]
- [walter]


[pipe-sample]: https://github.com/ainoya/walter-sample/blob/master/pipeline.yml
[about-cd]: http://www.informit.com/articles/article.aspx?p=1621865
[walter]: http://github.com/recruit-tech/walter
[petclinic]: https://github.com/ainoya/spring-petclinic
