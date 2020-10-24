init:
	git clone https://github.com/Awraad/k8s-sandbox.git
	cd k8s-sandbox && make up

deploy-up: init-build front-end-build catalogue-db-build catalogue-build user-db-build user-build payment-build carts-build load-test-build orders-build queue-master-build shipping-build

init-build:
	kubectl create -f ./tekton/secret.yaml
	kubectl create -f ./tekton/sa.yaml
	kubectl create -f ./tekton/role.yaml
	kubectl create -f ./tekton/RB.yaml
payment-build:
	kubectl create -f ./tekton/payment/resource.yaml
	kubectl create -f ./tekton/payment/task.yaml
	kubectl create -f ./tekton/payment/task-dep.yaml
	kubectl create -f ./tekton/payment/pipeline.yaml
	kubectl create -f ./tekton/payment/pipelineRun.yaml
user-build:
	kubectl create -f ./tekton/user/resource.yaml
	kubectl create -f ./tekton/user/task.yaml
	kubectl create -f ./tekton/user/task-dep.yaml
	kubectl create -f ./tekton/user/pipeline.yaml
	kubectl create -f ./tekton/user/pipelineRun.yaml
user-db-build:
	kubectl create -f ./tekton/user-db/resource.yaml
	kubectl create -f ./tekton/user-db/task.yaml
	kubectl create -f ./tekton/user-db/task-dep.yaml
	kubectl create -f ./tekton/user-db/pipeline.yaml
	kubectl create -f ./tekton/user-db/pipelineRun.yaml
catalogue-build:
	kubectl create -f ./tekton/catalogue/resource.yaml
	kubectl create -f ./tekton/catalogue/task.yaml
	kubectl create -f ./tekton/catalogue/task-dep.yaml
	kubectl create -f ./tekton/catalogue/pipeline.yaml
	kubectl create -f ./tekton/catalogue/pipelineRun.yaml
catalogue-db-build:
	kubectl create -f ./tekton/catalogue-db/resource.yaml
	kubectl create -f ./tekton/catalogue-db/task.yaml
	kubectl create -f ./tekton/catalogue-db/task-dep.yaml
	kubectl create -f ./tekton/catalogue-db/pipeline.yaml
	kubectl create -f ./tekton/catalogue-db/pipelineRun.yaml
front-end-build:
	kubectl create -f ./tekton/front-end/resource.yaml
	kubectl create -f ./tekton/front-end/task.yaml
	kubectl create -f ./tekton/front-end/task-dep.yaml
	kubectl create -f ./tekton/front-end/pipeline.yaml
	kubectl create -f ./tekton/front-end/pipelineRun.yaml
e2e-tests-build:
	kubectl create -f ./tekton/e2e-tests/resource.yaml
	kubectl create -f ./tekton/e2e-tests/task.yaml
	kubectl create -f ./tekton/e2e-tests/runner.yaml
carts-build:
	kubectl create -f ./tekton/carts/resource.yaml
	kubectl create -f ./tekton/carts/task.yaml
	kubectl create -f ./tekton/carts/task-dep.yaml
	kubectl create -f ./tekton/carts/pipeline.yaml
	kubectl create -f ./tekton/carts/pipelineRun.yaml
load-test-build:
	kubectl create -f ./tekton/load-test/resource.yaml
	kubectl create -f ./tekton/load-test/task.yaml
	kubectl create -f ./tekton/load-test/task-dep.yaml
	kubectl create -f ./tekton/load-test/pipeline.yaml
	kubectl create -f ./tekton/load-test/pipelineRun.yaml
orders-build:
	kubectl create -f ./tekton/orders/resource.yaml
	kubectl create -f ./tekton/orders/task.yaml
	kubectl create -f ./tekton/orders/task-dep.yaml
	kubectl create -f ./tekton/orders/pipeline.yaml
	kubectl create -f ./tekton/orders/pipelineRun.yaml
queue-master-build:
	kubectl create -f ./tekton/queue-master/resource.yaml
	kubectl create -f ./tekton/queue-master/task.yaml
	kubectl create -f ./tekton/queue-master/task-dep.yaml
	kubectl create -f ./tekton/queue-master/pipeline.yaml
	kubectl create -f ./tekton/queue-master/pipelineRun.yaml
shipping-build:
	kubectl create -f ./tekton/shipping/resource.yaml
	kubectl create -f ./tekton/shipping/task.yaml
	kubectl create -f ./tekton/shipping/task-dep.yaml
	kubectl create -f ./tekton/shipping/pipeline.yaml
	kubectl create -f ./tekton/shipping/pipelineRun.yaml
