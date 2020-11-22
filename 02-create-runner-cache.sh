# create pvc and pv required by minio in worker-node1
kubectl apply -f yaml/minio-pv-wk1.yaml && \
# create pvc and pv required by minio in worker-node2
kubectl apply -f yaml/minio-pv-wk2.yaml && \
# install minio using local chart in k8s namespace gitlab-runner with release name minio
sudo helm --debug install --namespace gitlab-runner minio minio/ --values yaml/minio-values.yaml

