# DevOps Bootcamp Level 3 Final Project

## Capstone Project

The aim of the level 3 project is to give you something to demonstrate to potential employers. You will use this as a showcase for the skills you have developed and the tools you have mastered.

## Objectives
You are to demonstrate a near production-ready K8S platform hosting the [Weaveworks Shock Shop demo](https://github.com/microservices-demo). Your platform must build and deploy your fork of that project.

## Method
You will work alone, but you must track your tasks in trello and move them through a kanban process. You will capture am image of your trello board at the start and end of each day and add it to the file 'tasks.md' in the documentation folder.

### Help
Of course, nobody is ever really alone. If you are stuck for too long, ask for help from your colleagues and your instructor -- you will not be turned down. We are building a community here. However, plagarism will be detected and disallowed.

### Chaos
Your work should be fully automatable at all times. The instructor will run chaos tools over his ec2 estate between 7am and 11pm every day. Be prepared, keep every change in git. If you want an exception to this, add a tag to your instance: calm=12:00:00pm for example. This will cause chaos to pause for you for 2 hours from the specified time. You can only do this once a day max.

### Hours
All work is to be done in KH's AWS estate. The estate is open from 6am to 12am, and any running machines will be culled immediately at 12am every night without fail, and new machines cannot be created until 6am the next morning. This is to ensure that those of you who don't need a lot of sleep do not have an unfair advantage over those that need more.

If you finish work earlier than that, please bring down your estate.

### Meetings
There will be no zoom meetings during the project period.

## Deliverables
A single github repo containing all of your work. The root of the repo will have a readme containing directions on using the repo, and links to the other requried documents. You must have a documents folder containing a tasks.md file which hosts screenshots of your kanban board (see 'method') along with a dairy.md file where you must keep daily notes as to your progress and any blockers you have discovered and overcome.

Your repo must be stand-alone and runnable in the sandbox using only the 'make up' command. A second command is allowed to start the build process 'make build'. Deployment to test and prod must be done automatically after a successful build.

## Infra
You will run your project on the sandbox in k3d -- the techniques you demonstrate on this infra are exactly the same as with a fully distributed kubernetes instance, but its faster and easier so this will suffice.

Please start with an XLarge instance, and increase the size of it if only when you have memory or other performance issues.

## Platform
You will run whatever platform level components that you see fit. As a minimum, we expect to see Tekton as an automation controller, Vault for secrets, ELF for logging, and Prometheus for monitoring.

## Namespaces
You will deploy the app's microservices to 'test' and 'prod' namespaces. The ci/cd tools will be in a cicd namespace. The other platform components will be in appropriately named spaces. The k8s-sandbox is suitably configured for tooling, but doesn't have a 'test' or 'prod' namespace.

## Schedule
The project must be completed by 21st of October. You will present it on the 22nd and 23rd with 5 minute presentations demonstrating the working system.

Deadline is midnight 21st
