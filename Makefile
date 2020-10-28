init:
	git clone https://github.com/Awraad/k8s-sandbox.git
	cd k8s-sandbox && make up
docker-build:
	kubectl create secret generic regcred \
 	--from-file=.dockerconfigjson=/home/ubuntu/.docker/config.json \
 	--type=kubernetes.io/dockerconfigjson -n test
up-services:  front-end-build catalogue-db-build catalogue-build user-db-build user-build payment-build carts-build load-test-build orders-build queue-master-build shipping-build
down-build:
	kubectl delete -f ./tekton/front-end/resource.yaml -n test
	kubectl delete -f ./tekton/front-end/task.yaml -n test
	kubectl delete -f ./tekton/front-end/task-dep.yaml -n test
	kubectl delete -f ./tekton/front-end/pipeline.yaml -n test
	kubectl delete -f ./tekton/front-end/pipelineRun.yaml -n test
	kubectl delete -f ./tekton/payment/resource.yaml -n test
	kubectl delete -f ./tekton/payment/task.yaml -n test
	kubectl delete -f ./tekton/payment/task-dep.yaml -n test
	kubectl delete -f ./tekton/payment/pipeline.yaml -n test
	kubectl delete -f ./tekton/payment/pipelineRun.yaml -n test
	kubectl delete -f ./tekton/user-db/resource.yaml -n test
	kubectl delete -f ./tekton/user-db/task.yaml -n test
	kubectl delete -f ./tekton/user-db/task-dep.yaml -n test
	kubectl delete -f ./tekton/user-db/pipeline.yaml -n test
	kubectl delete -f ./tekton/user-db/pipelineRun.yaml -n test
	kubectl delete -f ./tekton/user/resource.yaml -n test
	kubectl delete -f ./tekton/user/task.yaml -n test
	kubectl delete -f ./tekton/user/task-dep.yaml -n test
	kubectl delete -f ./tekton/user/pipeline.yaml -n test
	kubectl delete -f ./tekton/user/pipelineRun.yaml -n test
	kubectl delete -f ./tekton/catalogue-db/resource.yaml -n test
	kubectl delete -f ./tekton/catalogue-db/task.yaml -n test
	kubectl delete -f ./tekton/catalogue-db/task-dep.yaml -n test
	kubectl delete -f ./tekton/catalogue-db/pipeline.yaml -n test
	kubectl delete -f ./tekton/catalogue-db/pipelineRun.yaml -n test
	kubectl delete -f ./tekton/catalogue/resource.yaml -n test
	kubectl delete -f ./tekton/catalogue/task.yaml -n test
	kubectl delete -f ./tekton/catalogue/task-dep.yaml -n test
	kubectl delete -f ./tekton/catalogue/pipeline.yaml -n test
	kubectl delete -f ./tekton/catalogue/pipelineRun.yaml -n test
	kubectl delete -f ./tekton/carts/resource.yaml -n test
	kubectl delete -f ./tekton/carts/task.yaml -n test
	kubectl delete -f ./tekton/carts/pipeline.yaml -n test
	kubectl delete -f ./tekton/carts/task-dep.yaml -n test
	kubectl delete -f ./tekton/carts/pipelineRun.yaml -n test
	kubectl delete -f ./tekton/load-test/resource.yaml -n test
	kubectl delete -f ./tekton/load-test/task.yaml -n test
	kubectl delete -f ./tekton/load-test/task-dep.yaml -n test
	kubectl delete -f ./tekton/load-test/pipeline.yaml -n test
	kubectl delete -f ./tekton/load-test/pipelineRun.yaml -n test
	kubectl delete -f ./tekton/orders/resource.yaml -n test
	kubectl delete -f ./tekton/orders/task.yaml -n test
	kubectl delete -f ./tekton/orders/task-dep.yaml -n test
	kubectl delete -f ./tekton/orders/pipeline.yaml -n test
	kubectl delete -f ./tekton/orders/pipelineRun.yaml -n test
	kubectl delete -f ./tekton/queue-master/resource.yaml -n test
	kubectl delete -f ./tekton/queue-master/task.yaml -n test
	kubectl delete -f ./tekton/queue-master/task-dep.yaml -n test
	kubectl delete -f ./tekton/queue-master/pipeline.yaml -n test
	kubectl delete -f ./tekton/queue-master/pipelineRun.yaml -n test
	kubectl delete -f ./tekton/shipping/resource.yaml -n test
	kubectl delete -f ./tekton/shipping/task.yaml -n test
	kubectl delete -f ./tekton/shipping/task-dep.yaml -n test
	kubectl delete -f ./tekton/shipping/pipeline.yaml -n test
	kubectl delete -f ./tekton/shipping/pipelineRun.yaml -n test
	kubectl delete -f ./tekton/e2e-js-test/resource.yaml -n test
	kubectl delete -f ./tekton/e2e-js-test/e2e-task-build-push.yaml -n test
	kubectl delete -f ./tekton/e2e-js-test/e2e-task-run.yaml -n test
	kubectl delete -f ./tekton/e2e-js-test/e2e-task-dep.yaml -n test
	kubectl delete -f ./tekton/e2e-js-test/pipeline.yaml -n test
	kubectl delete -f ./tekton/e2e-js-test/pipelineRun.yaml -n test
init-build:
	kubectl create -f ./tekton/sa.yaml -n test
	kubectl create -f ./tekton/role.yaml -n test
	kubectl create -f ./tekton/CRB.yaml -n test
payment-build:
	kubectl create -f ./tekton/payment/resource.yaml -n test
	kubectl create -f ./tekton/payment/task.yaml -n test
	kubectl create -f ./tekton/payment/task-dep.yaml -n test
	kubectl create -f ./tekton/payment/pipeline.yaml -n test
	kubectl create -f ./tekton/payment/pipelineRun.yaml -n test
user-build:
	kubectl create -f ./tekton/user/resource.yaml -n test
	kubectl create -f ./tekton/user/task.yaml -n test
	kubectl create -f ./tekton/user/task-dep.yaml -n test
	kubectl create -f ./tekton/user/pipeline.yaml -n test
	kubectl create -f ./tekton/user/pipelineRun.yaml -n test
user-db-build:
	kubectl create -f ./tekton/user-db/resource.yaml -n test
	kubectl create -f ./tekton/user-db/task.yaml -n test
	kubectl create -f ./tekton/user-db/task-dep.yaml -n test
	kubectl create -f ./tekton/user-db/pipeline.yaml -n test
	kubectl create -f ./tekton/user-db/pipelineRun.yaml -n test
catalogue-build:
	kubectl create -f ./tekton/catalogue/resource.yaml -n test
	kubectl create -f ./tekton/catalogue/task.yaml -n test
	kubectl create -f ./tekton/catalogue/task-dep.yaml -n test
	kubectl create -f ./tekton/catalogue/pipeline.yaml -n test
	kubectl create -f ./tekton/catalogue/pipelineRun.yaml -n test
catalogue-db-build:
	kubectl create -f ./tekton/catalogue-db/resource.yaml -n test
	kubectl create -f ./tekton/catalogue-db/task.yaml -n test
	kubectl create -f ./tekton/catalogue-db/task-dep.yaml -n test
	kubectl create -f ./tekton/catalogue-db/pipeline.yaml -n test
	kubectl create -f ./tekton/catalogue-db/pipelineRun.yaml -n test
front-end-build:
	kubectl create -f ./tekton/front-end/resource.yaml -n test
	kubectl create -f ./tekton/front-end/task.yaml -n test
	kubectl create -f ./tekton/front-end/task-dep.yaml -n test
	kubectl create -f ./tekton/front-end/pipeline.yaml -n test
	kubectl create -f ./tekton/front-end/pipelineRun.yaml -n test
carts-build:
	kubectl create -f ./tekton/carts/resource.yaml -n test
	kubectl create -f ./tekton/carts/task.yaml -n test
	kubectl create -f ./tekton/carts/task-dep.yaml -n test
	kubectl create -f ./tekton/carts/pipeline.yaml -n test
	kubectl create -f ./tekton/carts/pipelineRun.yaml -n test
load-test-build:
	kubectl create -f ./tekton/load-test/resource.yaml -n test
	kubectl create -f ./tekton/load-test/task.yaml -n test
	kubectl create -f ./tekton/load-test/task-dep.yaml -n test
	kubectl create -f ./tekton/load-test/pipeline.yaml -n test
	kubectl create -f ./tekton/load-test/pipelineRun.yaml -n test
orders-build:
	kubectl create -f ./tekton/orders/resource.yaml -n test
	kubectl create -f ./tekton/orders/task.yaml -n test
	kubectl create -f ./tekton/orders/task-dep.yaml -n test
	kubectl create -f ./tekton/orders/pipeline.yaml -n test
	kubectl create -f ./tekton/orders/pipelineRun.yaml -n test
queue-master-build:
	kubectl create -f ./tekton/queue-master/resource.yaml -n test
	kubectl create -f ./tekton/queue-master/task.yaml -n test
	kubectl create -f ./tekton/queue-master/task-dep.yaml -n test
	kubectl create -f ./tekton/queue-master/pipeline.yaml -n test
	kubectl create -f ./tekton/queue-master/pipelineRun.yaml -n test
shipping-build:
	kubectl create -f ./tekton/shipping/resource.yaml -n test
	kubectl create -f ./tekton/shipping/task.yaml -n test
	kubectl create -f ./tekton/shipping/task-dep.yaml -n test
	kubectl create -f ./tekton/shipping/pipeline.yaml -n test
	kubectl create -f ./tekton/shipping/pipelineRun.yaml -n test
e2e-js-test-build:
	kubectl create -f ./tekton/e2e-js-test/resource.yaml -n test
	kubectl create -f ./tekton/e2e-js-test/e2e-task-build-push.yaml -n test
	kubectl create -f ./tekton/e2e-js-test/e2e-task-run.yaml -n test
	kubectl create -f ./tekton/e2e-js-test/e2e-task-dep.yaml -n test
	kubectl create -f ./tekton/e2e-js-test/pipeline.yaml -n test
	kubectl create -f ./tekton/e2e-js-test/pipelineRun.yaml -n test
