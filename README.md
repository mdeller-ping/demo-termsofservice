# demo-termsofservice

![Overview Diagram](https://github.com/mdeller-ping/pingfederate-agentless-terms-of-service/blob/master/Overview%20Diagram.png)

## Overview

Simple Agentless Adapter for PingFederate that illustrates how to perform a Terms of Service acceptence during login.  Written in PHP.

## How to Use

* In PingFederate create Agentless Adapter (e.g., Terms of Service)
* Add Terms of Service adapter to Authentication Policy
* Use Policy Option to send entryUUID -> Terms of Service
* Place contents of dist/ onto web server with PHP enabled
* Edit index.php and provide your PingFederate, PingDirectory and other configuration

## build the image from source and run as a container locally

``docker build -t demo-termsofservice .``

``docker run -p 80:80 demo-termsofservice``

## deploy from docker hub and run locally

``docker run -p 80:80 michaeldeller/demo-termsofservice``

## deploy from docker hub and expose with load balancer on kubernetes

``kubectl create deployment --image=michaeldeller/demo-termsofservice friendlyname-demo-termsofservice``

``kubectl expose deployment friendlyname-demo-termsofservice --port=80 --target-port=80 --type=LoadBalancer --name=friendlyname-demo-termsofservice-lb``
