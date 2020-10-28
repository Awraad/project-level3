#!/bin/bash
while
kubectl wait --namespace test --for=condition=ready pods -l name=rabbitmq --timeout=900s  2> /dev/null
[ $? -ne 0 ]
do true; done

while
kubectl wait --namespace test --for=condition=ready pods -l name=front-end --timeout=900s 2> /dev/null
[ $? -ne 0 ]
do true; done

while
kubectl wait --namespace test --for=condition=ready pods -l name=user-db --timeout=900s  2> /dev/null
[ $? -ne 0 ]
do true; done

while
kubectl wait --namespace test --for=condition=ready pods -l name=user --timeout=900s  2> /dev/null
[ $? -ne 0 ]
do true; done

while
kubectl wait --namespace test --for=condition=ready pods -l name=shipping --timeout=900s  2> /dev/null
[ $? -ne 0 ]
do true; done

while
kubectl wait --namespace test --for=condition=ready pods -l name=payment --timeout=900s  2> /dev/null
[ $? -ne 0 ]
do true; done

while
kubectl wait --namespace test --for=condition=ready pods -l name=orders-db --timeout=900s  2> /dev/null
[ $? -ne 0 ]
do true; done

while
kubectl wait --namespace test --for=condition=ready pods -l name=orders --timeout=900s  2> /dev/null
[ $? -ne 0 ]
do true; done

while
kubectl wait --namespace test --for=condition=ready pods -l name=catalogue-db --timeout=900s  2> /dev/null
[ $? -ne 0 ]
do true; done

while
kubectl wait --namespace test --for=condition=ready pods -l name=catalogue --timeout=900s  2> /dev/null
[ $? -ne 0 ]
do true; done

while
kubectl wait --namespace test --for=condition=ready pods -l name=carts-db --timeout=900s  2> /dev/null
[ $? -ne 0 ]
do true; done

while
kubectl wait --namespace test --for=condition=ready pods -l name=carts --timeout=900s  2> /dev/null
[ $? -ne 0 ]
do true; done

while
kubectl wait --namespace test --for=condition=ready pods -l name=queue-master --timeout=900s  2> /dev/null
[ $? -ne 0 ]
do true; done

while
kubectl wait --namespace test --for=condition=ready pods -l name=load-test --timeout=900s  2> /dev/null
[ $? -ne 0 ]
do true; done
