notes:

day1:

-run catalogue service but facing error due to catalogue-db, solved with creating network and run catalogue-db first then catalogue service.

-run user service , front-end service, payment service, orders successfully.

-run shipping service, respond: shipping-rabbitmq error.

-run edge-router, respond: bad gateway.

-run e2e-tests, but container exit immediately!

-run load-test, but container doesn't show.

day2:

-edit dockerfile into multistage for shipping, queue-master, carts and orders.

-error in queue-master "runc did not terminate successfully", solved by changing JDK11 version into JDK8.

day3:

-run shipping and orders services successfully.

-error in carts caused by the new version, solved by using the old version.

day4&5:

-create tekton task for each service to build and push docker images.

-create makefile for tekton.

-all service pushed into docker hub successfully

day6:

-edit user dockerfile and push the image again, in the end user service working

-by end of the day I managed to deploy all service in the cluster.

day7:

-edit yaml files to deploy services.

-faced an error due to version and change it apps/v1 in deployment file in all services.

day8:

-create tekton task to deploy yaml files

-create crb and role

day9:

-editing e2e files due to error in js files

-build the image locally

-create tekton files to test to build and push and deploy

-apply the test

day10:

-create prod task

day11:

-deploy graf and elf

day12:

-edit readme file
