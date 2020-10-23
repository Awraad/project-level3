init:
	git clone https://github.com/Awraad/k8s-sandbox.git
	cd k8s-sandbox && make up

init-build:
	kubectl create -f ./tekton/secret.yaml
	kubectl create -f ./tekton/sa.yaml
	kubectl create -f ./tekton/role.yaml
	kubectl create -f ./tekton/RB.yaml
payment-build:
	kubectl create -f ./tekton/payment/resource.yaml
	kubectl create -f ./tekton/payment/task.yaml
	kubectl create -f ./tekton/payment/runner.yaml
user-build:
	kubectl create -f ./tekton/user/resource.yaml
	kubectl create -f ./tekton/user/task.yaml
	kubectl create -f ./tekton/user/runner.yaml
user-db-build:
	kubectl create -f ./tekton/user-db/resource.yaml
	kubectl create -f ./tekton/user-db/task.yaml
	kubectl create -f ./tekton/user-db/runner.yaml
catalogue-build:
	kubectl create -f ./tekton/catalogue/resource.yaml
	kubectl create -f ./tekton/catalogue/task.yaml
	kubectl create -f ./tekton/catalogue/runner.yaml
catalogue-db-build:
	kubectl create -f ./tekton/catalogue-db/resource.yaml
	kubectl create -f ./tekton/catalogue-db/task.yaml
	kubectl create -f ./tekton/catalogue-db/runner.yaml
front-end-build:
	kubectl create -f ./tekton/front-end/resource.yaml
	kubectl create -f ./tekton/front-end/task.yaml
	kubectl create -f ./tekton/front-end/runner.yaml
e2e-tests-build:
	kubectl create -f ./tekton/e2e-tests/resource.yaml
	kubectl create -f ./tekton/e2e-tests/task.yaml
	kubectl create -f ./tekton/e2e-tests/runner.yaml
carts-build:
	kubectl create -f ./tekton/carts/resource.yaml
	kubectl create -f ./tekton/carts/task.yaml
	kubectl create -f ./tekton/carts/runner.yaml
load-test-build:
	kubectl create -f ./tekton/load-test/resource.yaml
	kubectl create -f ./tekton/load-test/task.yaml
	kubectl create -f ./tekton/load-test/runner.yaml
orders-build:
	kubectl create -f ./tekton/orders/resource.yaml
	kubectl create -f ./tekton/orders/task.yaml
	kubectl create -f ./tekton/orders/runner.yaml
queue-master-build:
	kubectl create -f ./tekton/queue-master/resource.yaml
	kubectl create -f ./tekton/queue-master/task.yaml
	kubectl create -f ./tekton/queue-master/runner.yaml
shipping-build:
	kubectl create -f ./tekton/shipping/resource.yaml
	kubectl create -f ./tekton/shipping/task.yaml
	kubectl create -f ./tekton/shipping/runner.yaml

