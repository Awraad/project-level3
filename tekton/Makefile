
init:
	kubectl create -f secret.yaml
	kubectl create -f sa.yaml
	kubectl create -f role.yaml
	kubectl create -f RB.yaml
payment-build:
	kubectl create -f ./payment/resource.yaml
	kubectl create -f ./payment/task.yaml
	kubectl create -f ./payment/runner.yaml
user-build:
	kubectl create -f ./user/resource.yaml
	kubectl create -f ./user/task.yaml
	kubectl create -f ./user/runner.yaml
user-db-build:
	kubectl create -f ./user-db/resource.yaml
	kubectl create -f ./user-db/task.yaml
	kubectl create -f ./user-db/runner.yaml
catalogue-build:
	kubectl create -f ./catalogue/resource.yaml
	kubectl create -f ./catalogue/task.yaml
	kubectl create -f ./catalogue/runner.yaml
catalogue-db-build:
	kubectl create -f ./catalogue-db/resource.yaml
	kubectl create -f ./catalogue-db/task.yaml
	kubectl create -f ./catalogue-db/runner.yaml
front-end-build:
	kubectl create -f ./front-end/resource.yaml
	kubectl create -f ./front-end/task.yaml
	kubectl create -f ./front-end/runner.yaml
e2e-tests-build:
	kubectl create -f ./e2e-tests/resource.yaml
	kubectl create -f ./e2e-tests/task.yaml
	kubectl create -f ./e2e-tests/runner.yaml
carts-build:
	kubectl create -f ./carts/resource.yaml
	kubectl create -f ./carts/task.yaml
	kubectl create -f ./carts/runner.yaml
load-test-build:
	kubectl create -f ./load-test/resource.yaml
	kubectl create -f ./load-test/task.yaml
	kubectl create -f ./load-test/runner.yaml
orders-build:
	kubectl create -f ./orders/resource.yaml
	kubectl create -f ./orders/task.yaml
	kubectl create -f ./orders/runner.yaml
queue-master-build:
	kubectl create -f ./queue-master/resource.yaml
	kubectl create -f ./queue-master/task.yaml
	kubectl create -f ./queue-master/runner.yaml
shipping-build:
	kubectl create -f ./shipping/resource.yaml
	kubectl create -f ./shipping/task.yaml
	kubectl create -f ./shipping/runner.yaml
