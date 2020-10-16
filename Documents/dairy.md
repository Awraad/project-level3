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
