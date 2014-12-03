# Wizard of Font
## The designer behind the curtain

### Introduction

Wizard of Font is a web application I am developing with Lulu Tang to help users find the right font for their project.

### Dependencies

[Node](http://nodejs.org/) and [Sails.js](http://sailsjs.org/#/)

### Local Development Setup

* Install [vagrant](https://www.vagrantup.com/)
* cd into the Wizard of Font directory and run "vagrant up"
* On linux/mac run "ssh vagrant". On Windows I recommend using [putty](http://stackoverflow.com/questions/9885108/ssh-to-vagrant-box-in-windows)
* Once ssh'd into the vagrant VM run "cd /vagrant"
* The Sails server is started using "sails lift" it will be accessible at http://localhost:1337/

### Configuration Variables

No config thus far

### Deploy

If you can read a puppet manifest you can deploy this project!
This is suboptimal! I will write a deployment manifest later!
