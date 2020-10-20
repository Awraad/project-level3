
payment-build:
	kubectl apply -f ./payment/payment-dep.yaml
	kubectl apply -f ./payment/payment-svc.yaml
user-build:
	kubectl apply -f ./user/user-db-dep.yaml
	kubectl apply -f ./user/user-db-svc.yaml
	kubectl apply -f ./user/user-dep.yaml
	kubectl apply -f ./user/user-svc.yaml
catalogue-build:
	kubectl apply -f ./catalogue/catalogue-db-dep.yaml
	kubectl apply -f ./catalogue/catalogue-db-svc.yaml
	kubectl apply -f ./catalogue/catalogue-dep.yaml
	kubectl apply -f ./catalogue/catalogue-svc.yaml
front-end-build:
	kubectl apply -f ./front-end/front-end-dep.yaml
	kubectl apply -f ./front-end/front-end-svc.yaml
	kubectl apply -f ./front-end/ingress.yaml
carts-build:
	kubectl apply -f ./carts/carts-db-dep.yaml
	kubectl apply -f ./carts/carts-db-svc.yaml
	kubectl apply -f ./carts/carts-dep.yaml
	kubectl apply -f ./carts/carts-svc.yml
load-test-build:
	kubectl apply -f ./loadtest/loadtest-dep.yaml
orders-build:
	kubectl apply -f ./orders/orders-db-dep.yaml
	kubectl apply -f ./orders/orders-db-svc.yaml
	kubectl apply -f ./orders/orders-dep.yaml
	kubectl apply -f ./orders/orders-svc.yaml
queue-master-build:
	kubectl apply -f ./queue-master/queue-master-dep.yaml
	kubectl apply -f ./queue-master/queue-master-svc.yaml
	kubectl apply -f ./queue-master/rabbitmq-dep.yaml
	kubectl apply -f ./queue-master/rabbitmq-svc.yaml
shipping-build:
	kubectl apply -f ./shipping/shipping-dep.yaml
	kubectl apply -f ./shipping/shipping-svc.yaml
