
up: front-end-build catalogue-build user-build payment-build carts-build loadtest-build orders-build queue-master-build shipping-build

down:
	kubectl delete -f ./deploy-files/front-end/front-end-dep.yaml
	kubectl delete -f ./deploy-files/payment/payment-dep.yaml
	kubectl delete -f ./deploy-files/user/user-dep.yaml
	kubectl delete -f ./deploy-files/catalogue/catalogue-dep.yaml
	kubectl delete -f ./deploy-files/carts/carts-dep.yaml
	kubectl delete -f ./deploy-files/loadtest/loadtest-dep.yaml
	kubectl delete -f ./deploy-files/orders/orders-dep.yaml
	kubectl delete -f ./deploy-files/queue-master/queue-master-dep.yaml
	kubectl delete -f ./deploy-files/shipping/shipping-dep.yaml

payment-build:
	kubectl apply -f ./deploy-files/payment/payment-dep.yaml
user-build:
	kubectl apply -f ./deploy-files/user/user-dep.yaml
catalogue-build:
	kubectl apply -f ./deploy-files/catalogue/catalogue-dep.yaml
front-end-build:
	kubectl apply -f ./deploy-files/front-end/front-end-dep.yaml
carts-build:
	kubectl apply -f ./deploy-files/carts/carts-dep.yaml
loadtest-build:
	kubectl apply -f ./deploy-files/load-test/load-test-dep.yaml
orders-build:
	kubectl apply -f ./deploy-files/orders/orders-dep.yaml
queue-master-build:
	kubectl apply -f ./deploy-files/queue-master/queue-master-dep.yaml
shipping-build:
	kubectl apply -f ./deploy-files/shipping/shipping-dep.yaml
